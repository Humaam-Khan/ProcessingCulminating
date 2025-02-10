class EllipseSprite {
  
  float X,Y,XSize,YSize;
  
  EllipseSprite(float X, float Y, float XSize, float YSize)
  {
    this.X = X;
    this.Y = Y;
    this.XSize = XSize;
    this.YSize = YSize;
  }
  
  void Show()
  {
    ellipse(X,Y,XSize,YSize);
  }
  
  
}
