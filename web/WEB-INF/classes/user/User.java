package classes.user;

import java.io.Serializable;

public class User implements Serializable {
    private String name;
    private String email;
    private String empStatus;
    private String[] courses;
    private String[] fees;

    public User() {
        name = "";
        email = "";
        empStatus = "";
        courses = new String[1];
        fees = new String[1];
    }

    public User(String n, String e, String es, String[] c, String[] f) {
        name = n;
        email = e;
        empStatus = es;
        courses = c;
        fees = f;
    }

    public void setName(String n) {
        name = n;
    }

    public String getName() {
        return name;
    }

    public void setEmail(String e) {
        email = e;
    }

    public String getEmail() {
        return email;
    }

    public void setEmpStatus(String es) {
        empStatus = es;
    }

    public String getEmpStatus() {
        return empStatus;
    }

    public String[] getCourses() {
        return courses;
    }

    public void setCourses(String[] c) {
        courses = c;
    }

    public String[] getFees() {
        return fees;
    }

    public void setFees(String[] f) {
        fees = f;
    }
}