import interfascia.*;

GUIController c;
IFButton b,d, go;
IFLabel l;
IFLabel a, elvnum;
IFTextField t;
int num=0;

void setup()
{
 size(1000,1000); 
 background (90);
 
 
  c = new GUIController (this);  
  
  
  b = new IFButton ("^", 710,590,16,20);
  d = new IFButton ("v", 710,625,16,20);
  go = new IFButton ("GO", 750,590,16,20);


  a = new IFLabel("Select Floor",620,610 ,500);
  elvnum = new IFLabel(" ",260,310 ,500);
  c.add(b);
  c.add(a);
  c.add(d);
  c.add(go);
  c.add(elvnum);
  b.addActionListener(this);
  a.addActionListener(this);
  d.addActionListener(this);
  go.addActionListener(this);
elvnum.addActionListener(this);

  // ( SIDE TO SIDE , UP AND DOWN , LENGTH , WIDTH)
}

void draw()
{
  
  
  
    //Elevator Door

  fill(40);
  rect(100,400,340,650);
  stroke(255);
  line(269,400,350,12000);
  
  //Floor Level
  fill(255);
  rect(224, 280, 90, 70, 28);
  
  
  // Control Panel
  fill (150);
  rect(600,550,280,140,12);
  
  //Control Panel Interface
  // ( X , Y , EXTENT)
  fill(255);
  rect(605,593,90,50,12);
  
  
  
  fill(0);
  circle(760,635,25);
  
  fill(255,0,0);
  circle(798,617,25);
  
  fill(0,255,0);
  circle(758,600,25);
}
  
  void actionPerformed (GUIEvent e) {
  if (e.getSource() == b)
  
  
num++;
a.setLabel(" "+num);     

if(e.getSource() == d)
{
  
num--;
a.setLabel(" "+num); 


}
  
  
if(e.getSource() == go)
{
  

elvnum.setLabel(" " + num); 


}
  }
  
  
