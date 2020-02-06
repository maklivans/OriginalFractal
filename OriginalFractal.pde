int r, g, b, rSpeed,gSpeed,bSpeed;

public void setup() {
	size(500,500);
	r = 254;
	g = 254;
	b = 254;
	rSpeed = -1;
	gSpeed = -2;
	bSpeed = -3;

}


public void draw() {
	background(0);
	//fill(r,g,b);
	fractal(0,0,100);
	r+=rSpeed;
	g+=gSpeed;
	b+=bSpeed;
	if (r<=0||r>=255)
		rSpeed*=-1;
	if (g<=0||g>=255)
		gSpeed*=-1;
	if (b<=0||b>=255)
		bSpeed*=-1;

}

public void fractal(int x, int y, int size) {
	if (size<1||x+size>=500) {
		rect(x,y,size,size);
	}
	
	else {
		fractal(x+size,y+size,size*5/6);
	}
	//fill(255);//size*2);
	fill(r,g,b);
	rect(x,y,size,size);
	fill(0);
	ellipse(x+size/2,y+size/2,r*2/3,r*2/3);
}