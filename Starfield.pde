Particle[] stars = new Particle[8000];
void setup()
{
	size(600,600);
	for(int i = 0;i<stars.length;i++)
		stars[i]= new NormalParticle();
	for (int i=0;i<50;i++)
		stars[i] = new JumboParticle();
	for (int i=0;i<10;i++)
		stars[i] = new OddballParticle();
	frameRate(2000000);
}


void draw()
{
	background(255);
	for (int i = 0; i<stars.length;i++)
	{
		stars[i].show();
		stars[i].move();
	}
}
class NormalParticle implements Particle
{
	double dX, dY, dTheta;
	int nSpeed;
	int myColor;
	NormalParticle()
	{
		dX = 300;
		dY = 300;
		nSpeed= (int)(Math.random()*20)+1;
		dTheta= Math.random()*2*(Math.PI);
		myColor=color(100,100,100);
		//myColor= color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move()
	{
		dX+=(nSpeed * Math.cos(dTheta));
		dY+=(nSpeed * Math.sin(dTheta));
	}
	void show()
	{
		fill(myColor);
		ellipse((float)dX,(float)dY,10,10);
	}

}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{	
	int dX,dY;
	double dTheta;
	int myColor;
	int nSpeed;
	OddballParticle()
	{
		dX = 150;
		dY = 150;
		nSpeed= (int)(Math.random()*40)+1;
		dTheta= Math.random()*2*Math.PI;
		myColor=color(20,136,210);
	}
	void move()
	{
		dX= dX +(int)(nSpeed * Math.cos(dTheta));
		dY= dY +(int)(nSpeed * Math.sin(dTheta));
	}
	void show()
	{
		fill(myColor);
		ellipse(dX,dY,5,5);
	}

	
}
class JumboParticle extends NormalParticle //uses inheritance
{
	void show()
	{
		fill(123,32,214);
		ellipse((float)dX,(float)dY,50,50);
	}
	
	//your code here
}

