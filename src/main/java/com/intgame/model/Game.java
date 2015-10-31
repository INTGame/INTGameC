package com.intgame.model;

import java.util.Date;

/**
 * Created by bm on 31.10.15.
 */
public class Game {
    private int id;
    private Group group;
    private String name;
    private String info;
    private Date date;
    private int rating;
    private int complicity;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getComplicity() {
        return complicity;
    }

    public void setComplicity(int complicity) {
        this.complicity = complicity;
    }
}
