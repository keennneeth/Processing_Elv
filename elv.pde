import interfascia.*;

GUIController c,d1;
IFButton b,d, go, open, emergency;
IFLabel l;
IFLabel a, elvnum;
IFTextField t;
int num=0;
IFLookAndFeel greenLook, defaultLook, whiteLook;
boolean button = false;
int delay = 1000;// ONE SEC
int now; 
//a flag
boolean red = false;



void setup()


{
 size(999,999); 
 background (90);
  now = millis();

 
  c = new GUIController (this);  
  d1 = new GUIController (this);  
  
  b = new IFButton ("^", 710,590,20,20);
  d = new IFButton ("v", 710,625,20,20);
  open = new IFButton ("<>", 750,625,20,20);
  emergency = new IFButton ("-^-", 788,607,20,20);

  
  defaultLook = new IFLookAndFeel(this, IFLookAndFeel.DEFAULT);
  whiteLook = new IFLookAndFeel(this, IFLookAndFeel.DEFAULT);
  whiteLook.baseColor = color(255, 255, 255);
  d1.setLookAndFeel(whiteLook);
  
  
  
  
  go = new IFButton ("><", 750,590,20,20);
  
  defaultLook = new IFLookAndFeel(this, IFLookAndFeel.DEFAULT);
  greenLook = new IFLookAndFeel(this, IFLookAndFeel.DEFAULT);
  greenLook.baseColor = color(100, 180, 100);
  greenLook.highlightColor = color(70, 135, 70);
  c.setLookAndFeel(greenLook);


  a = new IFLabel("Select Floor",620,610 ,500);
  elvnum = new IFLabel(" ",260,310 ,500);
  d1.add(b);
  d1.add(a);
  d1.add(d);
  d1.add(open);
  d1.add(emergency);
  c.add(go);
  c.add(elvnum);
  b.addActionListener(this);
  a.addActionListener(this);
  d.addActionListener(this);
  go.addActionListener(this);
  emergency.addActionListener(this);
  elvnum.addActionListener(this);

  // ( SIDE TO SIDE , UP AND DOWN , LENGTH , WIDTH)
}

void draw()
{
  
  
  
  if (button) {
 background(40); 
  if (millis() - now > delay) { 

    //change flag
    red = !red;

    //reset counter
    now = millis();
  }


  if (red)
    fill(255, 0, 0,127);
  else
  fill(40);
  rect(-10, -10, 1010, 1010);
  }
  
  
  
  else {
    background(40);
  }
  

    //Elevator Door

  fill(40);
  rect(100,400,340,650);
  stroke(255);
  line(269,400,350,12000);
  
  //Floor Level
  fill(150);
  rect(224, 280, 90, 70, 28);
  
  
  // Control Panel
  fill (150);
  rect(600,550,280,140,12);
  
  //Control Panel Interface
  // ( X , Y , EXTENT)
  
  
  fill(255);
  rect(605,593,90,50,12);
  
  fill(0,0,255);
  rect(788,607,20,20);
  
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
  
if (millis() - now > delay) { 

  
elvnum.setLabel(" " + num); 
now = millis();


  }


}
}

  void mousePressed() {
   
  if (mouseX > 785 && mouseX < 785+20 && mouseY > 607 && mouseY < 607+20) {
    button = !button;
  }  
}
  
  
