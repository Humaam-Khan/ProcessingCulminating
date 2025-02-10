public class Text {
  String text;
  float X,Y;
  int FontSize;
  color TextColor;
  color BackgroundColor;
  int Frame = 0;
  Text(String text, float X, float Y, int FontSize, color TextColor, color BackgroundColor)
  {
    this.text = text;
    this.X = X;
    this.Y = Y;
    this.FontSize = FontSize;
    this.TextColor = TextColor;
    this.BackgroundColor = BackgroundColor;
  }
  
  void Show()
  {
    fill(TextColor);
    textSize(FontSize);
    text(text, X,Y);
  }
  
  public void draw()
  {
    
    String[] test = text.split("");
    String TextToDisplay = "";
    if(test.length > Frame){
      for(int j = 0; j < (Frame+1); j++)
      {
       noStroke();
       fill(BackgroundColor);
       rectMode(CENTER);   
       TextToDisplay = TextToDisplay + test[j];
       PFont myFont = createFont("Arial", 10);
       rect(X,Y, textWidth(TextToDisplay), FontSize+9);
       textFont(myFont);
       textAlign(CENTER, CENTER);
       fill(TextColor);
       textSize(FontSize);
       text(TextToDisplay, X, Y);
      } 
    }
    else
    {
      unregisterMethod("draw", this);
    }
    Frame++;
  }
  
  
  void Animate(int Speed)
  {
    Frame = 0;
    frameRate(Speed);
    registerMethod("draw", this);
  }
  
  
}
