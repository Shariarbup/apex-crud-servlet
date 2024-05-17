package model;

public class User {
    private Long id;
    private String userName;
    private String userId;
    private String password;
    private String email;
    private String deptmsCode;
    private String designation;

    public User() {}

    public User(Long id) {
        this.id = id;
    }

    public User(String userName, String userId, String password, String email, String deptmsCode, String designation) {
        this.userName = userName;
        this.userId = userId;
        this.password = password;
        this.email = email;
        this.deptmsCode = deptmsCode;
        this.designation = designation;
    }

    public User(Long id, String userName, String userId, String email, String deptmsCode, String designation) {
        this.id = id;
        this.userName = userName;
        this.userId = userId;
        this.email = email;
        this.deptmsCode = deptmsCode;
        this.designation = designation;
    }

    public User(Long id, String userName, String userId, String password, String email, String deptmsCode, String designation) {
        this.id = id;
        this.userName = userName;
        this.userId = userId;
        this.password = password;
        this.email = email;
        this.deptmsCode = deptmsCode;
        this.designation = designation;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDeptmsCode() {
        return deptmsCode;
    }

    public void setDeptmsCode(String deptmsCode) {
        this.deptmsCode = deptmsCode;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
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

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", userId='" + userId + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", deptmsCode='" + deptmsCode + '\'' +
                ", designation='" + designation + '\'' +
                '}';
    }
}
