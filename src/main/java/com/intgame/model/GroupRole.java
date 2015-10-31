package com.intgame.model;

import java.util.List;

/**
 * Created by vviital on 31/10/15.
 */
public class GroupRole {

    private int id;

    private String role;

    private String roleDescription;

    private List<GroupParticipant> participantList;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGroupRole() {
        return role;
    }

    public void setGroupRole(String groupRole) {
        this.role = groupRole;
    }

    public String getRoleDescription() {
        return roleDescription;
    }

    public void setRoleDescription(String roleDescription) {
        this.roleDescription = roleDescription;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public List<GroupParticipant> getParticipantList() {
        return participantList;
    }

    public void setParticipantList(List<GroupParticipant> participantList) {
        this.participantList = participantList;
    }
}
