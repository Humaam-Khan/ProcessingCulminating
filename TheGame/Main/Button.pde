class Button {
  int RectX, RectY;
  float RectSizeX, RectSizeY;
  String Text;
  color RectColor;
  color TextColor;
  color HoverColor;
  boolean MouseOnRect = false;
  boolean Stroke;
  int FontSize;

  public Event HoverOn;
  public Event HoverOff;

  public Button(int RectX, int RectY, float RectSizeX, float RectSizeY, color RectColor, String Text, color TextColor, int FontSize, color HoverColor, boolean Stroke)
  {
    this.RectX = RectX;
    this.RectY = RectY;
    this.RectSizeX = RectSizeX;
    this.RectSizeY = RectSizeY;
    this.RectColor = RectColor;
    this.Text = Text;
    this.TextColor = TextColor;
    this.HoverColor = HoverColor;
    this.Stroke = Stroke;
    this.FontSize = FontSize;

    HoverOn = new Event(Button.class);
    HoverOff = new Event(Button.class);

    rectMode(CENTER);
    if (Stroke == true)
    {
      stroke(1);
      strokeJoin(BEVEL);
    } else
    {
      noStroke();
    }
    fill(RectColor);
    rect(RectX, RectY, RectSizeX, RectSizeY);
    fill(TextColor);
    PFont myFont = createFont("MS Gothic", 10);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(FontSize);
    text(Text, RectX, RectY);
    Buttons.add(this);
  }


  boolean MouseOverButton()
  {
    if ((mouseX <= RectX + RectSizeX/2) && (mouseX >= RectX - RectSizeX/2) && (mouseY >= RectY - RectSizeY/2) && (mouseY <= RectY + RectSizeY/2))
    {
      return true;
    } else
    {
      return false;
    }
  }

  void CheckMousePosition()
  {
    boolean PreviousMouseOnRect = MouseOnRect;
    MouseOnRect = MouseOverButton();

    if(MouseOnRect != PreviousMouseOnRect)
    {
      if(Stroke == true)
      {
        stroke(1);
        strokeJoin(BEVEL);
      } 
      else
      {
        noStroke();
      }
      if(MouseOnRect == true)
      {
        fill(HoverColor);
        rect(RectX, RectY, RectSizeX, RectSizeY);
        fill(TextColor);
        PFont myFont = createFont("MS Gothic", 10);
        textFont(myFont);
        textAlign(CENTER, CENTER);
        textSize(FontSize);
        text(Text, RectX, RectY);
        HoverOn.trigger(this);
      } 
      else
      {
        fill(RectColor);
        rect(RectX, RectY, RectSizeX, RectSizeY);
        fill(TextColor);
        PFont myFont = createFont("MS Gothic", 10);
        textFont(myFont);
        textAlign(CENTER, CENTER);
        textSize(FontSize);
        text(Text, RectX, RectY);
        HoverOff.trigger(this);
      }
    }
  }


  void ButtonPressed()
  {
    if(Text.equals("Play"))
    {
      GameState = 1;
      Buttons.clear();
    }
    else if(Text.equals("Back"))
    {
       
      Buttons.clear();        
      
      PreviousGameState = 0;
      GameState =  1;
    }
    else if(Text.equals("Select"))
    {
      Creature Selected = null;
      for(Creature creature: CreatureEncyclopedia)
      {
        if(creature.ImageString.equals(SelectedCreature))
        {
          Selected = creature;
        }
      }
      
      PlayerParty.add(Selected);
      Buttons.clear();
      GameState =  2;
    }
  }
  
  
  
}
