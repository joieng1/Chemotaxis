Food[] Bob;
you you1;
boolean alive = true;
int status = ((int)(Math.random()*256));
void setup()   
 {     
   size(1920,1080);
   Bob = new Food[100]; 
   for(int i = 0; i< Bob.length;i++){
     Bob[i] = new Food(((int)(Math.random()*1920)),((int)(Math.random()*1080)));
   }
   you1 = new you(200,100);
   //initialize Food variables here   
 }   
 void draw()   
 {   
   background(0); 
   for (int i = 0; i < Bob.length;i++){
     Bob[i].show();
     Bob[i].walk();
     if(dist(Bob[i].myX,Bob[i].myY,you1.youX,you1.youY)<20){
      alive = false;
      }
     }
    if(alive == false){
    textSize(50);
      fill(200);
      text("You lost, click your mouse to try again.",500,540);
    }
     you1.show();
     you1.walk();
    
 } 
 void mousePressed(){
   alive = true;
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
