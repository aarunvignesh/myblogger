$(document).ready(function(){
    console.log(`nav a[href=/${location.pathname.split("/")[1]}]`);
   $(`nav a[href='/${location.pathname.split("/")[1]}']`).addClass("active");
});