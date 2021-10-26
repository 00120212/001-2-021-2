//2020.02.02
//まるさんかくしかく円弧をグリッド状にランダム配置する
//参考＋写経
//https://note.com/almina/n/n98f67c456b98?creator_urlname=almina



int cx, cy;
int d;
int num;//グリットの数
int offset; //画面端にならないように隙間を開ける
int margin;

int mode;
int rot;

void setup()
{
  size(900, 900);
  smooth();
  noStroke();
  ellipseMode(CENTER);
  noLoop();
}

void draw()
{
  background(255);
  
  num = 6;//グリットの数
  offset = width/5; //画面端にならないように隙間を開ける
  margin= offset/10;
  d = (width-offset*2 - margin*(num-1))/(num-1); //枠の大きさ
  rot = int(random(4))*90;
  
  
  for (int i=0; i <num; i++) {
    for (int j=0; j < num; j++) {
      cx = (d+margin)*i+ offset;
      cy = (d+margin) * j + offset;


      pushMatrix();
      translate(cx, cy);
      fill(0);
      //丸か四角
      //ellipse(0, 0, d, d);
      //rect(-d/2, -d/2, d, d);
      
      //丸と四角のランダム
      //if(random(100) > 50){
      //  ellipse(0,0,d,d);
      //}else{
      //  rect(-d/2, -d/2,d,d);
      //}
      
      mode = int(random(4));
      if(mode == 0)
      {
        ellipse(0,0,d,d);
      }else if(mode == 1){
        rect(-d/2, -d/2,d,d);
      }else if(mode == 2){
        triangle(-d/2, -d/2, d/2, -d/2, d/2, d/2);
      }else if(mode == 3){
        arc(-d/2, -d/2, d*2, d*2, radians(0), radians(90));
      }
      
      
      
      popMatrix();
    }
  }
}
