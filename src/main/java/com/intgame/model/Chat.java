package com.intgame.model;

/**
 * Created by bm on 31.10.15.
 */
public class Chat {
    private int id;
    private Group group;
    private IndividualConversation individualConversation;
    private Team team;
    private String name;

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

    public IndividualConversation getIndividualConversation() {
        return individualConversation;
    }

    public void setIndividualConversation(IndividualConversation individualConversation) {
        this.individualConversation = individualConversation;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
