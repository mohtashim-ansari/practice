// Release the $ symbol
var jq = jQuery.noConflict();

// jQuery code using custom shortcut
jq(document).ready(function () {

    jq("#hideBtn").click(function () {
        jq("#box").hide();
    });

    jq("#showBtn").click(function () {
        jq("#box").show();
    });

});
