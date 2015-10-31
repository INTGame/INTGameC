package com.intgame.model;

import java.util.List;

/**
 * Created by vviital on 31/10/15.
 */
public class Question {
    private int id;

    private Game game;

    private String text;

    private String answer;

    private List<MultimediaContent> multimediaContentList;
    private List<Category> categories;

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<MultimediaContent> getMultimediaContentList() {
        return multimediaContentList;
    }

    public void setMultimediaContentList(List<MultimediaContent> multimediaContentList) {
        this.multimediaContentList = multimediaContentList;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }
}
