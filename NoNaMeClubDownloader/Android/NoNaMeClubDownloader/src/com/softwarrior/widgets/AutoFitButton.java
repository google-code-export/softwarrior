package com.softwarrior.widgets;

import com.softwarrior.rutrackerdownloaderlite.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.Button;

public class AutoFitButton extends Button
{
	private static final float THRESHOLD = 0.5f;

	private enum Mode { Width, Height, Both, None }

	private int minTextSize = 1;
	private int maxTextSize = 1000;

	private Mode mode = Mode.None;
	private boolean inComputation;
	private int widthMeasureSpec;
	private int heightMeasureSpec;

	public AutoFitButton(Context context) {
		super(context);
	}

	public AutoFitButton(Context context, AttributeSet attrs) {
		this(context, attrs,  android.R.attr.buttonStyle);
	}

	public AutoFitButton(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);

		TypedArray tAttrs = context.obtainStyledAttributes(attrs, R.styleable.AutoFitButton, defStyle, 0);
		maxTextSize = tAttrs.getDimensionPixelSize(R.styleable.AutoFitButton_maxTextSize, maxTextSize);
		minTextSize = tAttrs.getDimensionPixelSize(R.styleable.AutoFitButton_minTextSize, minTextSize);
		tAttrs.recycle();
	}

	private void resizeText() {
		if (getWidth() <= 0 || getHeight() <= 0)
			return;

		if(mode == Mode.None)
			return;

		final int targetWidth = getWidth();
		final int targetHeight = getHeight();

		inComputation = true;
		float higherSize = maxTextSize;
		float lowerSize = minTextSize;
		float textSize = getTextSize();
		while(higherSize - lowerSize > THRESHOLD) {
			textSize = (higherSize + lowerSize) / 2;
			if (isTooBig(textSize, targetWidth, targetHeight)) {
				higherSize = textSize; 
			} else {
				lowerSize = textSize;
			}
		}
		setTextSize(TypedValue.COMPLEX_UNIT_PX, lowerSize);
		measure(widthMeasureSpec, heightMeasureSpec);
		inComputation = false;
	}

	private boolean isTooBig(float textSize, int targetWidth, int targetHeight) {
		setTextSize(TypedValue.COMPLEX_UNIT_PX, textSize);
		measure(0, 0);
		if(mode == Mode.Both)
			return getMeasuredWidth() >= targetWidth || getMeasuredHeight() >= targetHeight;
		if(mode == Mode.Width)
			return getMeasuredWidth() >= targetWidth;
		else
			return getMeasuredHeight() >= targetHeight;
	}

	private Mode getMode(int widthMeasureSpec, int heightMeasureSpec) {
		int widthMode = MeasureSpec.getMode(widthMeasureSpec);
		int heightMode = MeasureSpec.getMode(heightMeasureSpec);
		if(widthMode == MeasureSpec.EXACTLY && heightMode == MeasureSpec.EXACTLY)
			return Mode.Both;
		if(widthMode == MeasureSpec.EXACTLY)
			return Mode.Width;
		if(heightMode == MeasureSpec.EXACTLY)
			return Mode.Height;
		return Mode.None;
	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
		if(!inComputation) {
			this.widthMeasureSpec = widthMeasureSpec;
			this.heightMeasureSpec = heightMeasureSpec;
			mode = getMode(widthMeasureSpec, heightMeasureSpec);
			resizeText();
		}
	}

	protected void onTextChanged(final CharSequence text, final int start, final int before, final int after) {
		resizeText();
	}

	@Override
	protected void onSizeChanged(int w, int h, int oldw, int oldh) {
		if (w != oldw || h != oldh)
			resizeText();
	}

	public int getMinTextSize() {
		return minTextSize;
	}

	public void setMinTextSize(int minTextSize) {
		this.minTextSize = minTextSize;
		resizeText();
	}

	public int getMaxTextSize() {
		return maxTextSize;
	}

	public void setMaxTextSize(int maxTextSize) {
		this.maxTextSize = maxTextSize;
		resizeText();
	}
}