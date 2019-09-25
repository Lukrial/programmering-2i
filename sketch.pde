int one=0;
int two=0;
int three=0;
int four=0;
int five=0;
int six=0;



size(800,500);

background(0);

int i=1;
while(i<=1000){
  i++;
  switch((int)random(1,7)){
    case 1:
    one	++;
    break;
    case 2:
    two++;
    break;
    case 3:
    three++;
    break;
    case 4:
    four++;
    break;
    case 5:
    five++;
    break;
    case 6:
    six++;
    break;
  }
}

textSize(20);

text("1 ="+one,90,100);
text("2 ="+two,190,100);
text("3 ="+three,290,100);
text("4 ="+four,390,100);
text("5 ="+five,490,100);
text("5 ="+six,590,100);

rect(100,500,50,-one);
rect(200,500,50,-two);
rect(300,500,50,-three);
rect(400,500,50,-four);
rect(500,500,50,-five);
rect(600,500,50,-six);

//void draw(){
//for(int i=0;i<50;i++){
  //float r=(int)random(1,7);
  //textSize(30);
  //text("megumin good?",20,80);
  //text("ja",980,1880);
  //}
//} 