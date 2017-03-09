/**
 * Created by H81 on 2017/3/3.
 */
$(function () {


});

function totalPrice(id) {

    var count = $("#count_" + id).text();
    var unitPice = $("#unitPice_" + id).text();

    count = parseInt(count);
    unitPice = parseInt(unitPice);
    $("#totalPrice_" + id).text(count * unitPice);

}