package classes.user;

import java.io.Serializable;

// save user registration
public class User implements Serializable {
    // user variables
    private String name;
    private String email;
    private String empStatus;
    private String[] courses;
    private String[] fees;

    // default user initialization
    public User() {
        name = "";
        email = "";
        empStatus = "";
        courses = new String[0];
        fees = new String[0];
    }

    // set user variable functions
    public void setName(String n) {
        name = n;
    }

    public void setEmail(String e) {
        email = e;
    }

    public void setEmpStatus(String es) {
        empStatus = es;
    }

    public void setCourses(String[] c) {
        courses = c;
    }

    public void setFees(String[] f) {
        fees = f;
    }

    // get user variable functions
    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getEmpStatus() {
        return empStatus;
    }

    public String[] getCourses() {
        return courses;
    }

    public String[] getFees() {
        return fees;
    }

    // determine if a fee is listed in fees selected by user
    public boolean findFee(String f) {
        for (String fee: fees) {
            if (fee.equals(f)) {
                return true;
            }
        }

        return false;
    }

    // determine if a fee is listed in courses selected by user
    public boolean findCourse(String c) {
        for (String course: courses) {
            if (course.equals(c)) {
                return true;
            }
        }

        return false;
    }
}