package com.agasa.xd_f371_v0_0_1.entity;

public class GroupTitle {
    private int id;private String groupName;private String groupCode;

    public GroupTitle(int id, String groupName, String groupCode) {
        this.id = id;
        this.groupName = groupName;
        this.groupCode = groupCode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getGroupCode() {
        return groupCode;
    }

    public void setGroupCode(String groupCode) {
        this.groupCode = groupCode;
    }
}
