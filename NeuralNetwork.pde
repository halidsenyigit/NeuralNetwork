Matrix m1;
Vector v1;
Perceptron p;
Network n;

int input, hidden, output;

void setup() {
	size(1660, 960);
	frameRate(60);
	input = 3;
	hidden = 4;
	output = 2;


	p = new Perceptron(input, hidden, output);
	n = new Network();	

	p.Initialize();
}

void draw() {
	background(0);
	stroke(0x33, 0xff, 0x33);
	strokeWeight(2);
	fill(150);
	n.Render(p);

	// frameRate 
	textSize(32);
	fill(0x33, 0xff, 0x33);
	text(round(frameRate) + " FPS", width - 120, 30); 
}

void keyPressed(){
	if(keyCode == 81){ // Q
		p.Initialize();
		n = new Network();
	} else if(keyCode == 87){ // W
		p.FeedForward();
		n = new Network();
	} else if(keyCode == 69){ // E
		p.ShowNetwork();
		n = new Network();
	} else if(keyCode == 82){ // R
		p.BackPropagation();
		n = new Network();
	} else if(keyCode == 65){ // A
		
	} else if(keyCode == 83){ // S

	} 
}







