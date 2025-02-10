class ImageButton extends Button {
  String ImageString;
  
  public ImageButton(int xPosition, int yPosition, int xSize, int ySize, String ImageString, boolean Stroke, color BackgroundColor, color HoverColor)
  {  
    super(xPosition, yPosition, xSize, ySize, BackgroundColor, "", color(255, 255, 255), 1, HoverColor, Stroke);
    this.ImageString = ImageString;
    imageMode(CENTER);
    image(loadImage(ImageString), this.RectX, this.RectY, this.RectSizeX, this.RectSizeY);
  }
  
  
  void CheckMousePosition() 
  { 
    boolean PreviousMouseOnRect = MouseOnRect;
    MouseOnRect = MouseOverButton();    
    
    if(MouseOnRect != PreviousMouseOnRect)
    {
      if(MouseOnRect == true)
      {
        fill(100, 100, 100, 70);
        rect(RectX, RectY, RectSizeX, RectSizeY);
        image(loadImage(ImageString), this.RectX, this.RectY, this.RectSizeX, this.RectSizeY);
      }
      else
      {
        fill(RectColor);
        rect(RectX, RectY, RectSizeX, RectSizeY);  
        image(loadImage(ImageString), this.RectX, this.RectY, this.RectSizeX, this.RectSizeY);
      }
    }
  }
  
  public void TextHover(Button button)
  {
    Move TheMove = null;
    for(Move PotentialMove: MoveEnclyopedia)
    {
      if(button.Text.equals(PotentialMove.Name))
      {
        TheMove = PotentialMove;
      }
    }
    textSize(16);
    fill(255,255,255);
    text(TheMove.Description,550,400,250,150);
    text("Power: " + TheMove.Power, 550, 200);
    text("Endurance Cost: " + TheMove.EnduranceCost, 550, 225);
    text("Accuracy: " + TheMove.Accuracy, 550, 250);
    text("Type: " + TheMove.Type, 550, 275);
  }
  
  public void TextHoverOff(Button button)
  {
    Move TheMove = null;
    for(Move PotentialMove: MoveEnclyopedia)
    {
      if(button.Text.equals(PotentialMove.Name))
      {
        TheMove = PotentialMove;
      }
    }
    fill(0,0,0);
    rect(550,400,250,150);
    
    rect(550,235,175,150);
    
  }
  
  void ButtonPressed()
  {
    
    Creature PossibleCreature = null;
    
    for(Creature creature: CreatureEncyclopedia)
    {
      if(creature.ImageString.equals(ImageString))
      {
        PossibleCreature = creature;
      }
    }
    
    if((PossibleCreature != null) && (GameState == 1))
    {
      Buttons.clear(); 
      background(0,0,0);
          
      Button BackButton = new Button(30, 10, 75, 25, color(255,255,255), "Back", color(0,0,0), 25, color(100,100,100,70), true);       
      Button SelectButton = new Button(220, 60, 80, 25, color(255,255,255), "Select", color(0,0,0), 25, color(100,100,100,70), true);       
      
      
      image(loadImage(ImageString), 140, 220, RectSizeX, RectSizeY);
      if(ImageString.equals("Skeleton.png"))
      {
        image(loadImage(ImageString.replace(".png", "") + "Back.png"), 320, 230, 36*5, 44*5);
      }
      else
      {
        image(loadImage(ImageString.replace(".png", "") + "Back.png"), 320, 230, RectSizeX, RectSizeY);
      }
      SelectedCreature = PossibleCreature.ImageString;
      PFont myFont = createFont("MS Gothic", 10);
      textFont(myFont);
      textAlign(CENTER, CENTER);
      textSize(16);
      fill(255,255,255);
      text(PossibleCreature.Description, 555, 75, 250, 225);
      text("Moves: ", 56, 370);
      
      
      fill(0,120,205);
      textSize(16);
      text(PossibleCreature.Move1.Name, 72, 390);
      text(PossibleCreature.Move2.Name, 72, 410);
      text(PossibleCreature.Move3.Name, 210, 390);
      text(PossibleCreature.Move4.Name, 210, 410);
      
      Button Move1Hover = new Button(72, 390, int(textWidth(PossibleCreature.Move1.Name)), 16, color(0,0,0,1), PossibleCreature.Move1.Name, color(0,0,0,1), 16, color(0,0,0,1), false);
      Move1Hover.HoverOn.bind(this, "TextHover");
      Move1Hover.HoverOff.bind(this, "TextHoverOff");
      
      
      Button Move2Hover = new Button(72, 410, int(textWidth(PossibleCreature.Move2.Name)), 16, color(0,0,0,1), PossibleCreature.Move2.Name, color(0,0,0,1), 16, color(0,0,0,1), false);
      Move2Hover.HoverOn.bind(this, "TextHover");
      Move2Hover.HoverOff.bind(this, "TextHoverOff");
      
      Button Move3Hover = new Button(210, 390, int(textWidth(PossibleCreature.Move3.Name)), 16, color(0,0,0,1), PossibleCreature.Move3.Name, color(0,0,0,1), 16, color(0,0,0,1), false);
      Move3Hover.HoverOn.bind(this, "TextHover");
      Move3Hover.HoverOff.bind(this, "TextHoverOff");
      
      Button Move4Hover = new Button(210, 410, textWidth(PossibleCreature.Move4.Name), 16, color(0,0,0,1), PossibleCreature.Move4.Name, color(0,0,0,1), 16, color(0,0,0,1), false);
      Move4Hover.HoverOn.bind(this, "TextHover");
      Move4Hover.HoverOff.bind(this, "TextHoverOff");
      
      
    }
  }
}
