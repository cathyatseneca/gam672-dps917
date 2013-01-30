class State{
  float x_;
  float y_;
  float alpha_;
  State(){
    x_=0;
    y_=0;
    alpha_=PI/2;
  }
  State(float posX,float posY,float alpha){
    x_=posX;
    y_=posY;
    alpha_=alpha;
  }
  void update(float posX,float posY,float alpha){
    x_=posX;
    y_=posY;
    alpha_=alpha;
  }
  void updateAlpha(float delta){
    alpha_+=delta;
  }
}