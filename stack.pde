class Stack{
  ArrayList theStack_;
  int top_;
  Stack(){
    top_=0;
    theStack_=new ArrayList();
  }
  void push(State theState){
    theStack_.add(new State(theState.x_,theState.y_,theState.alpha_));
    top_++;
  }
  void pop(){
    if(top_> 0 ){
      theStack_.remove(top_-1);
      top_=top_-1;
    }
  }
  State top(){
    if(top_>0){
      return (State)theStack_.get(top_-1);
    }
  }
  boolean isEmpty(){
    boolean rc=true;
    if(top_>0){
      rc=false;
    }
    return rc;
  }
}
