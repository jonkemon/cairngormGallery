function doneclear()
{document.getElementById('thedoner').innerHTML=" ";}
function readytheloadstop()
{setTimeout("doneclear()", "1000");}
function forceloaddone()
{
var thebrow=navigator.appName+navigator.appVersion+"";
if (thebrow.indexOf('Opera')==-1 && thebrow.indexOf('Internet Explorer')==-1 && thebrow.indexOf('Safari')==-1)
{
document.getElementById('thedoner').innerHTML='<img src="images/doneforcer.jpg"></img>';
readytheloadstop();
}
}
