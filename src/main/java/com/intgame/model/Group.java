package com.intgame.model;

import java.util.Date;

/**
 * Created by bm on 31.10.15.
 */
public class Group {
    private int id;
    private Chat chat;
    private String name;
    private String info;
    private Date creationtDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Chat getChat() {
        return chat;
    }

    public void setChat(Chat chat) {
        this.chat = chat;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Date getCreationtDate() {
        return creationtDate;
    }

    public void setCreationtDate(Date creationtDate) {
        this.creationtDate = creationtDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    private String status;
}
