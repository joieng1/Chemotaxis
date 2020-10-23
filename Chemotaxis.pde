Food[] Bob;
you you1;
boolean alive = true;
int g = (800);
int g1 = ((int)(Math.random()*900));
boolean keepwalking = true;
void setup()   
 {     
   size(900,900);
   Bob = new Food[100]; 
   for(int i = 0; i< Bob.length;i++){
     Bob[i] = new Food(((int)(Math.random()*800)+100),((int)(Math.random()*900)));
   }
   you1 = new you(50,50);
   //initialize Food variables here   
 }   
 void draw()   
 {   
   background(0); 
   fill(200);
   ellipse(g,g1,70,70);
   fill(200,2,240);
   ellipse(g,g1,45,45);
   if(keepwalking == true){
     if(alive == true){
     for (int i = 0; i < Bob.length;i++){
     Bob[i].show();
     Bob[i].walk();
     if(dist(Bob[i].myX,Bob[i].myY,you1.youX,you1.youY)<20){
      alive = false;
          }
        }
     
     you1.show();
     you1.walk();
   }
  }
     if (alive == false){
        text("You lost, click on your mouse to try again", 350,450); 
  }
   if(dist(g,g1,you1.youX,you1.youY)<15){
     keepwalking = false;
     text("You win, click on your mouse to try again", 350,450);
   }
 } 
 void mousePressed(){
   you1 = new you(50,50);
   keepwalking = true;
   alive = true;
    g = (800);
    g1 = ((int)(Math.random()*900));
   
 }
 class Food    
 {     
    int myX,myY,mysize;
    Food(int x, int y){
      myX = x;
      myY = y;
      mysize = 20;
    } 
  void show(){
    if(alive == true){
    fill(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
    ellipse(myX,myY,mysize,mysize);
    
  }else{
     
    }
  }
  void walk(){
    myX = myX + ((int)(Math.random()*5)-2);
    myY = myY + ((int)(Math.random()*5)-2);
  }
      
 }
 class you
 {
   int youX,youY,yousize;
   you(int x,int y){
     youX = x;
     youY = y;
     yousize = 50;
   }
   void show(){
     fill(200,10,200);
     ellipse(youX,youY,yousize,yousize);
   }
   void walk(){
    if(mouseX> youX){
    youX = youX + ((int)(Math.random()*5)-1);
  }else{
    youX = youX + ((int)(Math.random()*5)-3);
  }if(mouseY> youY){
    youY = youY + ((int)(Math.random()*5)-1);
  }else{
    youY = youY + ((int)(Math.random()*5)-3);
    } 
   }
 }
