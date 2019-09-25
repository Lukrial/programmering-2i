int xstart = 50;
int ystart = 50;
int b = 50; //Bestemmer bredde af firkanter på alle sider
int a = 1; //Bestemmer base-afstand mellem firkanter
int m = 8; //Antal firkanter på x-aksen
int n = 8; //Antal af firekanter på y-aksen
int shake = 5; //Bestemmer hvor meget firkanterne kan rykke sig. Ændr denne værdi for at styre hvor meget firkanterne ryster!


void setup() {
  size(500, 500);
}

void draw() {
  clear();
  for (int j=0; j<n; ++j) {//Bestemmer hvor mange rækker af firkanter som genereres på y-aksen
    int y = ystart + j*b + j*a; //Samme som ovenstående
    for (int i=0; i<m; ++i) {//Bestemmer hvor mange rækker af firkanter som genereres på y-aksen
      int x = xstart + i*b + i*a;//Samme som ovenstående. De ovenstående fire linjer laver et "grid" af firkanter, 8x8
      int d = (int)random(-shake, shake);//Random-funktionen defineres
      fill(0, 20+(x + y)*0.25, 0);//Bestemmer farve, jo længere væk firkanterne er fra startpunktet, jo lysere i farve bliver de
      rect(x+d, y+d, b, b);//Størrelse og position af firkanterne. Bruger random-funktionen til at ryste
    }
  }
}
