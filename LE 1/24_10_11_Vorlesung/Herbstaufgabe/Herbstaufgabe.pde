size(800, 600);
background(182, 214, 250);

//Hügel
noStroke();
fill(#674E1A);
ellipse(0, 600, 500, 400);

fill(#CAA137);
ellipse(600, 600, 1100, 400);

fill(#4E1B0A);
ellipse(450, 600, 1000, 300);

//Baum
noStroke();
rectMode(CENTER);
fill(#734d26);
rect(400, 400, 40, 200);

//Blätter
fill(#008000);
beginShape();
vertex(400, 80); // top
vertex(475, 155);
vertex(425, 155);

vertex(500, 230);
vertex(440, 230);

vertex(550, 325); // r unten
vertex(250, 325); // l unten

vertex(360, 230);
vertex(300, 230);

vertex(375, 155);
vertex(325, 155);
endShape();

//Kürbis
