var doc = document;

var hide1 = doc.querySelector('.hide1');
var search = doc.querySelector('.input2');

search.addEventListener('mouseover',function(){
    hide1.classList.add('visible');
})
search.addEventListener('mouseout',function(){
    hide1.classList.remove('visible');
})

var hide2 = doc.querySelector('.hide2');
var upload = doc.querySelector('.upload');

upload.addEventListener('mouseover',function(){
    hide2.classList.add('visible');
})
upload.addEventListener('mouseout',function(){
    hide2.classList.remove('visible');
})

var hide3 = doc.querySelector('.hide3');
var grid = doc.querySelector('.grid');

grid.addEventListener('mouseover',function(){
    hide3.classList.add('visible');
})
grid.addEventListener('mouseout',function(){
    hide3.classList.remove('visible');
})

var hide4 = doc.querySelector('.hide4');
var bell = doc.querySelector('.bell');

bell.addEventListener('mouseover',function(){
    hide4.classList.add('visible');
})
bell.addEventListener('mouseout',function(){
    hide4.classList.remove('visible');
})



var man = doc.querySelector('.man');
var maninfo = doc.querySelector('.personal');

man.addEventListener('click',function(){
    maninfo.classList.toggle('visible');
})

$('.info').on('mouseenter',function(){
    $('.menu_img').addClass('visible');
})

var open_menu = doc.querySelector('.open_menu');
var aside1 = doc.querySelector('.aside');
var aside2 = doc.querySelector('.aside2');
var section = doc.getElementById('main')

open_menu.addEventListener('click',function(){
    aside1.classList.toggle('none');
    aside2.classList.toggle('visible');
    section.classList.toggle('wrap');
})

var main = doc.querySelector('.main');
var box = doc.querySelector('.box');
var wrap = doc.getElementById('wrap');
var boxPage = doc.getElementById('boxPage')
var userInfo = doc.getElementById('user_info')

box.addEventListener('click',function(){
    wrap.classList.replace('visible','none');
    boxPage.classList.replace('none','visible');
    userInfo.classList.replace('none','visible');
})

main.addEventListener('click', function () {
    wrap.classList.replace('none','visible');
    boxPage.classList.replace('visible','none');
    userInfo.classList.replace('visible','none');
})

/*
var main = doc.querySelector('.main');
var wrap = doc.getElementById('wrap');
var boxPage = doc.getElementById('boxPage')
var userInfo = doc.getElementById('user_info')

main.addEventListener('click', function () {
    wrap.classList.replace('none','visible');
    boxPage.classList.replace('visible','none');
    userInfo.classList.replace('visible','none');
})
*/

