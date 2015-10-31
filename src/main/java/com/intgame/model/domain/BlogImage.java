package com.intgame.model.domain;

/**
 * Created by vviital on 31/10/15.
 */
public class BlogImage {

    private int id;

    private byte[] image;

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
