package com.intgame.model;

import java.util.Date;

/**
 * Created by vviital on 31/10/15.
 */
public class Relationship {

    private int id;

    private User receiver;

    private User sender;

    private Date relationshipDate;

    private RelationshipType relationshipType;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getReceiver() {
        return receiver;
    }

    public void setReceiver(User receiver) {
        this.receiver = receiver;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    public Date getRelationshipDate() {
        return relationshipDate;
    }

    public void setRelationshipDate(Date relationshipDate) {
        this.relationshipDate = relationshipDate;
    }

    public RelationshipType getRelationshipType() {
        return relationshipType;
    }

    public void setRelationshipType(RelationshipType relationshipType) {
        this.relationshipType = relationshipType;
    }
}
