class Creature {
    
  int HP, Attack, Defense, Speed, Endurance;
  int HPStat, AttackStat, DefenseStat, SpeedStat, EnduranceStat; 
  Move Move1, Move2, Move3, Move4;
  int SizeX, SizeY;
  String ImageString;
  String Description;
  CreatureSprite Sprite;
  Creature(int HP, int Attack, int Defense, int Speed, int Endurance, Move Move1, Move Move2, Move Move3, Move Move4, String ImageString, String Description)
  {   
    this.HP = HP;
    this.Attack = Attack;
    this.Defense = Defense;
    this.Speed = Speed;
    this.Endurance = Endurance;
    
    this.HPStat = HP;
    this.AttackStat = Attack;
    this.DefenseStat = Defense;
    this.SpeedStat = Speed;
    this.EnduranceStat = Endurance; 
    
    this.Move1 = Move1;
    this.Move2 = Move2;
    this.Move3 = Move3;
    this.Move4 = Move4;
    
    this.ImageString = ImageString;
    this.Description = Description;
    CreatureEncyclopedia.add(this);
    
    PImage Dimensions = loadImage(ImageString);

    SizeX = Dimensions.width*2; 
    SizeY = Dimensions.height*2;
    
    
    
    Sprite = new CreatureSprite(ImageString,0,0,SizeX,SizeY, color(255));
  }
  
  
  void SetMove(int MoveNumber, Move SpecifiedMove)
  {
    if(MoveNumber == 1)
    {
      Move1 = SpecifiedMove;
    }
    else if(MoveNumber == 2)
    {
      Move2 = SpecifiedMove;
    }
    else if(MoveNumber == 3)
    {
      Move3 = SpecifiedMove;
    }
    else if(MoveNumber == 4)
    {
      Move4 = SpecifiedMove;
    }
  }
  
  void Attack(int MoveNumber)
  {
    if(MoveNumber == 1)
    {
      // Code that Attacks with Move
    }
    else if(MoveNumber == 2)
    {
      // Code that Attacks with Move
    }
    else if(MoveNumber == 3)
    {
      // Code that Attacks with Move
    }
    else if(MoveNumber == 4)
    {
      // Code that Attacks with Move
    }
  }
  
  void Switch(Creature CreatureToSwitch)
  {
  }
  
  
}
