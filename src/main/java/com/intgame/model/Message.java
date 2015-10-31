package com.intgame.model;

/**
 * Created by vviital on 31/10/15.
 */
public class Message {

    private int id;

    private String text;

    private boolean removableFlag;

    private User user;

    private Chat chat;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Chat getChat() {
        return chat;
    }

    public void setChat(Chat chat) {
        this.chat = chat;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public boolean isRemovableFlag() {
        return removableFlag;
    }

    public void setRemovableFlag(boolean removableFlag) {
        this.removableFlag = removableFlag;
    }
}
