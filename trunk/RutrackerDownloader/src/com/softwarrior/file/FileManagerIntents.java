package com.softwarrior.file;

// Version Dec 9, 2008


/**
 * Provides OpenIntents actions, extras, and categories used by providers. 
 * <p>These specifiers extend the standard Android specifiers.</p>
 */
public final class FileManagerIntents {

	/**
	 * Activity Action: Pick a file through the file manager, or let user
	 * specify a custom file name.
	 * Data is the current file name or file name suggestion.
	 * Returns a new file name as file URI in data.
	 * 
	 * <p>Constant Value: "org.openintents.action.PICK_FILE"</p>
	 */
	public static final String ACTION_PICK_FILE = "org.openintents.action.PICK_FILE";

	/**
	 * Activity Action: Pick a directory through the file manager, or let user
	 * specify a custom file name.
	 * Data is the current directory name or directory name suggestion.
	 * Returns a new directory name as file URI in data.
	 * 
	 * <p>Constant Value: "org.openintents.action.PICK_DIRECTORY"</p>
	 */
	public static final String ACTION_PICK_DIRECTORY = "org.openintents.action.PICK_DIRECTORY";
	
	/**
	 * The title to display.
	 * 
	 * <p>This is shown in the title bar of the file manager.</p>
	 * 
	 * <p>Constant Value: "org.openintents.extra.TITLE"</p>
	 */
	public static final String EXTRA_TITLE = "org.openintents.extra.TITLE";

	/**
	 * The text on the button to display.
	 * 
	 * <p>Depending on the use, it makes sense to set this to "Open" or "Save".</p>
	 * 
	 * <p>Constant Value: "org.openintents.extra.BUTTON_TEXT"</p>
	 */
	public static final String EXTRA_BUTTON_TEXT = "org.openintents.extra.BUTTON_TEXT";

	/**
	 * Flag indicating to show only writeable files and folders.
     *
	 * <p>Constant Value: "org.openintents.extra.WRITEABLE_ONLY"</p>
	 */
	public static final String EXTRA_WRITEABLE_ONLY = "org.openintents.extra.WRITEABLE_ONLY";

}
