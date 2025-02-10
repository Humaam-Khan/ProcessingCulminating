class CreatureSprite {
  
  float X,Y,XSize,YSize;
  String ImageString;
  float Rotation = 0;
  color Tint;
  
  
  CreatureSprite(String ImageString, int X, int Y, int XSize,int YSize, color Tint)
  {
    this.ImageString = ImageString;
    this.X = X;
    this.Y = Y;
    this.XSize = XSize;
    this.YSize = YSize;
    this.Tint = Tint;
  }
  
  
  void Show()
  {
    rectMode(CENTER);
    tint(Tint);
    imageMode(CENTER);
    pushMatrix();
     translate(X, Y);   
     rotate(radians(Rotation));
     image(loadImage(ImageString), 0, 0, XSize, YSize);
   popMatrix();
    
  }
  
  
}
