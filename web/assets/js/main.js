// Document ready
$(document).ready(function() {
    $(".dropdown-toggle").dropdown();
    $("div.alert").hide();
    $("div.alert.alert-dismissable > .close").click(function(e) {
        $('div.alert.alert-dismissable').hide();
    });

    // Verify form values are selected for Module 3
    $('form[name=mod3]').submit(function(e) {
        // store an error message
        var msg = [];

        // Validate input fields
        if ($('input[name=name]').val().length == 0) {
            msg.push("You must enter a name");
        }

        if ($('input[name=email]').val().length == 0) {
            msg.push("You must enter an email address");
        }

        if ($('select[name=courses] option:selected').length == 0) {
            msg.push("You must select at least one course");
        }

        if ($('input[name=empStatus]:checked').length == 0) {
            msg.push("You must select an employment status");
        }

        if ($('input[name=shirt-size]:checked').length == 0) {
            msg.push("You must select a shirt size");
        }

        if ($('input[name=fees]:checked').length == 0) {
            msg.push("You must select an additional fee option");
        }

        if ($('input[name=payment]:checked').length == 0) {
            msg.push("You must select a payment method");
        }

        // Return flag for form submission; Do not submit if errors present
        if (msg.length !== 0) {
            showAlert(msg);

            return false;
        }
    });
});

function showAlert(msg) {
    // Reference to message list
    var ul = $('div.alert-danger > ul.msg');

    // Reset text
    $(ul).html('');

    // Add each message item to the list
    $.each(msg, function(idx, elem) {
        ul.append("<li>" + elem + "</li>");
    });

    $('div.alert').show();

    // Scroll to the top so the user can see the message
    $('body').scrollTop(0);
}