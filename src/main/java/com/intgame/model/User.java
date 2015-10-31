package com.intgame.model;

import java.util.Date;
import java.util.List;

/**
 * Created by bm on 31.10.15.
 */
public class User {
    private int id;
    private City city;
    private Language language;
    private String englishName;
    private String nativeName;
    private String englishSurname;
    private String nativeSurname;
    private String nick;
    private Sex sex;
    private String email;
    private Date birth;
    private String login;
    private String password;
    private Boolean securityFlag;
    private Boolean confirmFlag;
    private Boolean subscribeFlag;
    private int rating;
    private int karma;

    private List<Blog> blogs;
    private List<Message> messages;
    private List<Relationship> relationships;
    private List<IndividualConversation> individualConversations;
    private List<GroupParticipant> groupParticipants;
    private List<TeamParticipant> teamParticipants;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public String getEnglishName() {
        return englishName;
    }

    public void setEnglishName(String englishName) {
        this.englishName = englishName;
    }

    public String getNativeName() {
        return nativeName;
    }

    public void setNativeName(String nativeName) {
        this.nativeName = nativeName;
    }

    public String getEnglishSurname() {
        return englishSurname;
    }

    public void setEnglishSurname(String englishSurname) {
        this.englishSurname = englishSurname;
    }

    public String getNativeSurname() {
        return nativeSurname;
    }

    public void setNativeSurname(String nativeSurname) {
        this.nativeSurname = nativeSurname;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public Sex getSex() {
        return sex;
    }

    public void setSex(Sex sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getSecurityFlag() {
        return securityFlag;
    }

    public void setSecurityFlag(Boolean securityFlag) {
        this.securityFlag = securityFlag;
    }

    public Boolean getConfirmFlag() {
        return confirmFlag;
    }

    public void setConfirmFlag(Boolean confirmFlag) {
        this.confirmFlag = confirmFlag;
    }

    public Boolean getSubscribeFlag() {
        return subscribeFlag;
    }

    public void setSubscribeFlag(Boolean subscribeFlag) {
        this.subscribeFlag = subscribeFlag;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getKarma() {
        return karma;
    }

    public void setKarma(int karma) {
        this.karma = karma;
    }

    public List<Blog> getBlogs() {
        return blogs;
    }

    public void setBlogs(List<Blog> blogs) {
        this.blogs = blogs;
    }

    public List<Message> getMessages() {
        return messages;
    }

    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }

    public List<Relationship> getRelationships() {
        return relationships;
    }

    public void setRelationships(List<Relationship> relationships) {
        this.relationships = relationships;
    }

    public List<IndividualConversation> getIndividualConversations() {
        return individualConversations;
    }

    public void setIndividualConversations(List<IndividualConversation> individualConversations) {
        this.individualConversations = individualConversations;
    }

    public List<GroupParticipant> getGroupParticipants() {
        return groupParticipants;
    }

    public void setGroupParticipants(List<GroupParticipant> groupParticipants) {
        this.groupParticipants = groupParticipants;
    }

    public List<TeamParticipant> getTeamParticipants() {
        return teamParticipants;
    }

    public void setTeamParticipants(List<TeamParticipant> teamParticipants) {
        this.teamParticipants = teamParticipants;
    }
}
