package com.softwarrior.piratesearch;

/**
 * Quick and dirty file size formatter.
 */
public class FileSizeConverter {

	/**
	 * A quantity in which to express a file size.
	 *
	 */
	public enum SizeUnit {
		B,
		KB,
		MB,
		GB
	}
	
	private static int INC_SIZE = 1024;
	private static String DECIMAL_FORMATTER = "%.1f";
	
	// Returns a file size given in bytes to a different unit, as a formatted string
	public static String getSize(long from, SizeUnit to)
	{
		String out;
		switch (to) {
		case B:
			out = String.valueOf(from);
			break;
		case KB:
			out = String.format(DECIMAL_FORMATTER, ((double)from) / 1024);
			break;
		case MB:
			out = String.format(DECIMAL_FORMATTER, ((double)from) / 1024 / 1024);
			break;
		default:
			out = String.format(DECIMAL_FORMATTER, ((double)from) / 1024 / 1024 / 1024);
			break;
		}
		
		return (out + " " + to.toString()); 
	}

	// Returns a file size in bytes in a nice readable formatted string
	public static String getSize(long from) {
		return getSize(from, true);
	}

	// Returns a file size in bytes in a nice readable formatted string
	public static String getSize(long from, boolean withUnit) {
		if (from < INC_SIZE) {
			return String.valueOf(from) + (withUnit? SizeUnit.B.toString(): "");
		} else if (from < (INC_SIZE * INC_SIZE)) { 
			return String.format(DECIMAL_FORMATTER, ((double)from) / INC_SIZE) + (withUnit? SizeUnit.KB.toString(): "");
		} else if (from < (INC_SIZE * INC_SIZE * INC_SIZE)) {
			return String.format(DECIMAL_FORMATTER, ((double)from) / INC_SIZE / INC_SIZE) + (withUnit? SizeUnit.MB.toString(): "");
		} else { 
			return String.format(DECIMAL_FORMATTER, ((double)from) / INC_SIZE / INC_SIZE / INC_SIZE) + (withUnit? SizeUnit.GB.toString(): "");
		}
	}
	
}
