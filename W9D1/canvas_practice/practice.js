document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    canvas.width = 500;
    canvas.height = 500;
    // calls id=mycanvas and sets canvas size to 500x500

    const ctx = canvas.getContext('2d');
    // call getContext to create a 2d representation on the html
    ctx.fillStyle = "beige";
    // fillStyle sets a background color
    ctx.fillRect(50, 50, 200, 200);
    // fillRect sets rect (left space from window, top space from window, width, height)

    ctx.beginPath();
    ctx.arc(150, 150, 50, 0, 1*Math.PI);
    // ctx.arc(x, y, radius, startAngle, endAngle [, anticlockwise]);
    // The arc() method creates a circular arc centered at (x, y) with a radius of radius (must be positive). The path starts at startAngle, ends at endAngle, and travels in the direction given by anticlockwise (defaulting to clockwise).
    ctx.strokeStyle = "green";
    // set line color
    ctx.lineWidth = 10;
    ctx.stroke();
    // invoke the stroke - circle

    ctx.fillStyle = "red";
    ctx.fill();
    
});
