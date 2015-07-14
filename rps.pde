int possr,possp,posss,i;
int[] strate={1,2,3,1,2,3,1,2,3,1,2,3};
int playerprint,aiprint,score,point;
float ran;
String[] out=new String[4];
void setup()
{
  size(600,600);
  playerprint=0;
  aiprint=0;
  possr=20;
  possp=20;
  posss=20;
  point=0;
  out[0]="  ";
  out[1]="rock";
  out[2]="paper";
  out[3]="scissors";
}
void draw()
{
  textSize(32);
  textAlign(CENTER);
  fill(255,0,0);
  rect(0,400,200,200);
  fill(0,255,255);
  text("rock",0,500,200,200);
  fill(0,255,0);
  rect(200,400,200,200);
  fill(255,0,255);
  text("paper",200,500,200,200);
  fill(0,0,255);
  rect(400,400,200,200);
  fill(255,255,0);
  text("scissors",400,500,200,200);
  fill(255,255,255);
  rect(0,0,600,200);
  fill(0,0,0);
  text("I am IT",0,100,600,200);
  fill(255,255,255);
  rect(0,200,300,200);
  rect(300,200,300,200);
  textAlign(LEFT);
  fill(0,0,0);
  text("player",0,300);
  text(out[playerprint],100,300);
  text("ai",300,300);
  text(out[aiprint],400,300);
  textAlign(RIGHT);
  text("score",600,30);
  text(score,600,60);
}
void mouseClicked()
{
  if ((mouseX>0)&&(mouseX<200)&&(mouseY>400)&&(mouseY<600)) {playerprint=1;}
  if ((mouseX>200)&&(mouseX<400)&&(mouseY>400)&&(mouseY<600)) {playerprint=2;}
  if ((mouseX>400)&&(mouseX<600)&&(mouseY>400)&&(mouseY<600)) {playerprint=3;}
  ran=random(possr+possp+posss);
  if ((ran>=0)&&(ran<possr)) {aiprint=1;}
  if ((ran>=possr)&&(ran<possr+possp)) {aiprint=2;}
  if ((ran>possr+possp)&&(ran<possr+possp+posss)) {aiprint=3;}
  if (((playerprint==1)&&(aiprint==2))||((playerprint==2)&&(aiprint==3))||((playerprint==3)&&(aiprint==1))) {score--;}
  if (((aiprint==1)&&(playerprint==2))||((aiprint==2)&&(playerprint==3))||((aiprint==3)&&(playerprint==1))) {score++;}
  for (i=11;i>=1;i--)
  {strate[i]=strate[i-1];}
  if (playerprint==1) {possp--;}
  if (playerprint==2) {posss--;} 
  if (playerprint==3) {possr--;}
  if (strate[0]==1) {possp++;}
  if (strate[0]==2) {posss++;}
  if (strate[0]==3) {possr++;};
  strate[0]=playerprint;
}
