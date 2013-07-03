package com.stgutah.view;

public class Message {

	private String title;
	private String text;
	private String style = STYLE_NONE;
	private int displaySeconds = 5; //is there a better place for this default value? 
	
	public static final String STYLE_NONE = "";
	public static final String STYLE_INFO = "alert-info";
	public static final String STYLE_SUCCESS = "alert-success";
	public static final String STYLE_ERROR = "alert-error";
	
	public Message() {
	}

	public Message(String title, String text) {
		this.title = title;
		this.text = text;
	}
	
	public Message(String title, String text, String style) {
		this.title = title;
		this.text = text;
		this.style = style;
	}
	
	public Message(String title, String text, String style, int displaySeconds) {
		this.title = title;
		this.text = text;
		this.style = style;
		this.displaySeconds = displaySeconds;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public int getDisplaySeconds() {
		return displaySeconds;
	}

	public void setDisplaySeconds(int displaySeconds) {
		this.displaySeconds = displaySeconds;
	}

}
