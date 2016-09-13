<%@ include file="/header.jsp" %>

<form action="index.jsp" class="form-horizontal">
    <div class="container">
        <div align="center">
            <img src="/cravott1/assets/images/jhu.logo.small.horizontal.blue.png" alt="JHU Logo: Small" width="500">
            <h1>Johns Hopkins Annual
                Software
                Development
                Seminar</h1>
        </div>

        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="name" id="name">
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" name="email" id="email">
            </div>
        </div>
        <div class="form-group">
            <label for="address" class="col-sm-2 control-label">Address</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="address" id="address">
            </div>
        </div>
        <div class="form-group">
            <label for="city" class="col-sm-2 control-label">City</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="city" id="city">
            </div>
        </div>
        <div class="form-group">
            <label for="state" class="col-sm-2 control-label">State</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="state" id="state">
            </div>
            <label for="zipcode" class="col-sm-2 control-label">Zipcode</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="zipcode" id="zipcode">
            </div>
        </div>
        <div class="form-group">
            <label for="phone" class="col-sm-2 control-label">Phone</label>
            <div class="col-sm-10">
                <input type="phone" class="form-control" name="phone" id="phone">
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
            <label class="col-sm-2 control-label">Shirt Size</label>
            <div class="col-sm-10">
                <div class="radio">
                    <label class="radio-inline">
                        <input type="radio" name="shirt-size" id="small" value="small">
                        Small
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="shirt-size" id="medium" value="medium">
                        Medium
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="shirt-size" id="large" value="large">
                        Large
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="shirt-size" id="x-large" value="x-large">
                        X-Large
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="shirt-size" id="xx-large" value="xx-large">
                        XX-Large
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Additional Fees/Charges</label>
            <div class="col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="fees" value="hotel">
                        Hotel Accommodation (Conference Guest Special Fee - Parking Included)
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="fees" value="parking">
                        Hotel Parking
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="fees" value="morning-only">
                        Morning Session Only
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="fees" value="afternoon-only">
                        Afternoon Session Only
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Payment Method</label>
            <div class="col-sm-10">
                <div class="radio">
                    <label>
                        <input type="radio" name="payment" value="check">Check (make checks to JHU:Seminar)
                    </label>
                </div>
                <div class="radio">
                    <label><input type="radio" name="payment" value="purchase-order">Purchase Order</label>
                </div>
            </div>
            <div class="col-sm-10 col-md-offset-2">
                <div class="radio">
                    <label class="radio-inline"><input type="radio" name="payment" value="visa">
                        Visa
                    </label>
                    <label class="radio-inline"><input type="radio" name="payment" value="mastercard">
                        Mastercard
                    </label>
                    <label class="radio-inline"><input type="radio" name="payment" value="american-express">
                        American Express
                    </label>
                </div>
            </div>
            <div class="col-sm-10 col-md-offset-2">
                <div class="form-group">
                    <label for="full-name" class="col-sm-2 control-label">Name on Card</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="full-name" id="full-name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="card-number" class="col-sm-2 control-label">Card Number</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="card-number" id="card-number">
                    </div>
                </div>
                <div class="form-group">
                    <label for="exp-date" class="col-sm-2 control-label">Exiration Date</label>
                    <div class="col-sm-3">
                        <select class="form-control" name="exp-date-month" id="exp-date">
                            <option value="1">(01) January</option>
                            <option value="2">(02) February</option>
                            <option value="3">(03) March</option>
                            <option value="4">(04) April</option>
                            <option value="5">(05) May</option>
                            <option value="6">(06) June</option>
                            <option value="7">(07) July</option>
                            <option value="8">(08) August</option>
                            <option value="9" selected>(09) September</option>
                            <option value="10">(10) October</option>
                            <option value="11">(11) November</option>
                            <option value="12">(12) December</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <select class="form-control" name="exp-date-year">
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                        </select>
                    </div>
                    <label for="exp-date-year" class="col-sm-1 control-label">CVV#</label>
                    <div class="col-sm-2">
                        <input type="text" class="form-control" name="exp-date-year" id="exp-date-year">
                    </div>
                </div>
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

<%@ include file="/footer.jsp" %>