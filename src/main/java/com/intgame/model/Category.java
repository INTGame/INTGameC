package com.intgame.model;

import java.util.List;

/**
 * Created by vviital on 31/10/15.
 */
public class Category {
    private int id;

    private String category;

    private List<Question> questionList;

    public int getId() {
        return id;
    }

    public String getCategory() {
        return category;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<Question> getQuestionList() {
        return questionList;
    }

    public void setQuestionList(List<Question> questionList) {
        this.questionList = questionList;
    }
}
