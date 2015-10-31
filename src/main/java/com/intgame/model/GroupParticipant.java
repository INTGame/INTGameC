package com.intgame.model;

import java.util.Date;

/**
 * Created by vviital on 31/10/15.
 */
public class GroupParticipant {
    private int id;

    private Group group;

    private User user;

    private Date InviteDate;

    private Date AccessionDate;

    private GroupRole role;

    public GroupRole getRole() {
        return role;
    }

    public void setRole(GroupRole role) {
        this.role = role;
    }

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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getInviteDate() {
        return InviteDate;
    }

    public void setInviteDate(Date inviteDate) {
        InviteDate = inviteDate;
    }

    public Date getAccessionDate() {
        return AccessionDate;
    }

    public void setAccessionDate(Date accessionDate) {
        AccessionDate = accessionDate;
    }
}
