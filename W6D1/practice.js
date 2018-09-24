
document.addEventListener("DOMContentLoaded", function(){

});

let myCanvas = document.getElementById('myCanvas');

// myCanvas.style.height = "500px";
// myCanvas.style.width = "500px";
myCanvas.width = 500;
myCanvas.height = 500;

let ctx = myCanvas.getContext('2d');

// Rectangle
ctx.fillStyle = 'red';
ctx.fillRect(10, 10, 480, 480);


// Circle
// ctx.beginPath();
// ctx.arc(250, 250, 100, 0, 2*Math.PI, true);
// ctx.strokeStyle = 'rgb(0, 255, 0)';
// ctx.lineWidth = 2;
// ctx.fillStyle = 'blue';
// ctx.fill();
// ctx.stroke();


// myShape

// head
ctx.beginPath();
ctx.arc(250, 300, 150, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(238, 220, 170)';
ctx.fill();
ctx.stroke();
// left ear
ctx.beginPath();
ctx.arc(130, 130, 60, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(0, 0, 0)';
ctx.fill();
ctx.stroke();
// right ear
ctx.beginPath();
ctx.arc(370, 130, 60, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(0, 0, 0)';
ctx.fill();
ctx.stroke();
// left eye
ctx.beginPath();
ctx.arc(190, 240, 30, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(255, 255, 255)';
ctx.fill();
ctx.stroke();
// left pupil
ctx.beginPath();
ctx.arc(190, 240, 10, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(0, 0, 0)';
ctx.fill();
ctx.stroke();
// right eye
ctx.beginPath();
ctx.arc(310, 240, 30, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(255, 255, 255)';
ctx.fill();
ctx.stroke();
// left pupil
ctx.beginPath();
ctx.arc(310, 240, 10, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(0, 0, 0)';
ctx.fill();
ctx.stroke();
// nose
ctx.beginPath();
ctx.arc(250, 300, 20, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(0, 0, 0)';
ctx.fill();
ctx.stroke();
// mouth
ctx.beginPath();
ctx.arc(250, 375, 30, 0, 2*Math.PI, true);
ctx.strokeStyle = 'rgb(0, 0, 0)';
ctx.lineWidth = 2;
ctx.fillStyle = 'rgb(255, 255, 255)';
ctx.fill();
ctx.stroke();
