﻿var userName = $.fui.store.get("userName");
var userId = $.fui.store.get("userId");
$(function () {

    initView();
    bindClick();
});
function initView() {

    $("#userName").html(userName + " 用户欢迎您&nbsp;&nbsp; | <a href='login.jsp'>安全退出</a>")
}
function bindClick() {
    $('.one').click(function () {
        $('.one').removeClass('one-hover');
        $(this).addClass('one-hover');
        $(this).parent().find('.kid').toggle();
    });
    //影藏菜单
    var l = $('.left_c');
    var r = $('.right_c');
    var c = $('.Conframe');
    $('.nav-tip').click(function () {
        if (l.css('left') == '8px') {
            l.animate({
                left: -300
            }, 500);
            r.animate({
                left: 21
            }, 500);
            c.animate({
                left: 29
            }, 500);
            $(this).animate({
                "background-position-x": "-12"
            }, 300);
        } else {
            l.animate({
                left: 8
            }, 500);
            r.animate({
                left: 260
            }, 500);
            c.animate({
                left: 268
            }, 500);
            $(this).animate({
                "background-position-x": "0"
            }, 300);
        }

    });
    //横向菜单
    $('.top-menu-nav li').click(function () {
        $('.kidc').hide();
        $(this).find('.kidc').show();

    });
    $('.kidc').bind('mouseleave', function () {
        $('.kidc').hide();
    })
}