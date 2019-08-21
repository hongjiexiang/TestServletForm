package eneity;

import java.util.Date;

public class Users {
    /**用户名*/
    private String username;
    /**密码*/
    private String password;
    /**邮箱*/
    private String email;
    /**性别*/
    private String sex;
    /**出生日期*/
    private Date birthday;
    /**爱好*/
    private String[] fav;
    /**自我介绍*/
    private String introduce;
    /**是否接受协议*/
    private boolean flag;

    public Users() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String[] getFav() {
        return fav;
    }

    public void setFav(String[] fav) {
        this.fav = fav;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }
}
