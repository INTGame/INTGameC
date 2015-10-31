package com.intgame.model;

import java.util.Date;
import java.util.List;

/**
 * Created by vviital on 31/10/15.
 */
public class Blog {
    private int id;

    private Language language;

    private User user;

    private String title;

    private Date date;

    private BlogType type;

    private String content;

    private List<Blog> blogList;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public User getUser() {
        return user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public BlogType getType() {
        return type;
    }

    public void setType(BlogType type) {
        this.type = type;
    }

    public List<Blog> getBlogList() {
        return blogList;
    }

    public void setBlogList(List<Blog> blogList) {
        this.blogList = blogList;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getBlogTitle() {
        return title;
    }

    public void setBlogTitle(String blogTitle) {
        this.title = blogTitle;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public BlogType getBlogType() {
        return type;
    }

    public void setBlogType(BlogType blogType) {
        this.type = blogType;
    }
}
