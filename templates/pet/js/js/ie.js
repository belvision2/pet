


function mkwidth(){
    document.getElementById("site").style.width = document.documentElement.clientWidth < minwidth ? minwidth+"px" : (document.documentElement.clientWidth > maxwidth ? maxwidth+"px" : "100%");
};
