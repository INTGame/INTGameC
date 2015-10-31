package com.intgame.model;

import java.util.Date;
import java.util.List;

/**
 * Created by bm on 31.10.15.
 */
public class Team {
    private int id;
    private Chat chat;
    private Game game;
    private Date creationTime;

    List<TeamParticipant> participantList;

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

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    public List<TeamParticipant> getParticipantList() {
        return participantList;
    }

    public void setParticipantList(List<TeamParticipant> participantList) {
        this.participantList = participantList;
    }
}
