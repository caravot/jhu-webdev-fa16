<%@ include file="/header.jsp" %>

<div class="container">
    <div align="center">
        <img src="/cravott1/assets/images/jhu.logo.small.horizontal.blue.png" alt="JHU Logo: Small" width="500">
        <h1>Johns Hopkins Annual
            Software
            Development
            Seminar</h1>
    </div>

    <form action="index.jsp" class="form-horizontal">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="name">
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="email">
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Courses</label>
            <div class="col-sm-10">
                <select multiple class="form-control" name="courses">
                    <option value="A1">A1 - J2EE Design Patterns</option>
                    <option value="A3">A3 - Service Oriented Architectures</option>
                    <option value="A4">A4 - Web Services</option>
                    <option value="A4">A4 - Enterprise Service Bus</option>
                    <option value="A5">A5 - Web Services Security</option>
                    <option value="A6">A6 - Secure Messaging</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Employment Status</label>
            <div class="col-sm-10">
                <div class="radio">
                    <label class="radio-inline">
                        <input type="radio" name="empStatus" id="empStatus1" value="jhu-employee">
                        JHU Employee
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="empStatus" id="empStatus2" value="jhu-student">
                        JHU Student
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="empStatus" id="empStatus3" value="speaker">
                        Speaker
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="empStatus" id="empStatus4" value="other">
                        Other
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Additional Fees/Charges</label>
            <div class="col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="hotel">
                        Hotel Accommodation (Conference Guest Special Fee - Parking Included)
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="parking">
                        Hotel Parking
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Compute Seminar Costs</button>
                <button type="reset" class="btn btn-default">Reset</button>
            </div>
        </div>
    </form>
</div>

<%@ include file="/footer.jsp" %>