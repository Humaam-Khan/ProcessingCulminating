public class Animations {
  String CurrentAnimation = "";
  float MoveX, MoveY; 
  float SizeX, SizeY;
  float TargetX, TargetY;
  float TargetSizeX, TargetSizeY;
  float Angle;
  float MovementMultiplier = 7;
  float TranslateX, TranslateY = 0;
  int Pause = 0;
  int AnimationState = 0;
  int Counter = 0;
  Text SpriteText = new Text("", 0, 0, 0, color(0,0,0),color(255,1));
  CreatureSprite User,Target, MoveSprite, MoveSprite2;
  CreatureSprite HitEffect = new CreatureSprite("MoveSprites/HitEffect.png", 0, 0, 128,128, color(255));

  EllipseSprite ExplosionParticles[] = new EllipseSprite[8];
 
  
 
  Animations(CreatureSprite User, CreatureSprite Target)
  {
    this.User = User;
    this.Target = Target;
  }
  
  void Agility()
  {
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    frameRate(24);
    CurrentAnimation = "Agility";
    registerMethod("draw", this);  
  }
  
  void Bite()
  {
    MoveSprite = new CreatureSprite("MoveSprites/BiteTop.png",0,0,28,19,color(255));
    MoveSprite2 = new CreatureSprite("MoveSprites/BiteBottom.png",0,0,22,16,color(255));  
    
    MoveSprite.XSize = MoveSprite.XSize*3.5;
    MoveSprite.YSize = MoveSprite.YSize*3.5;
    MoveSprite2.XSize = MoveSprite2.XSize*3.5;
    MoveSprite2.YSize = MoveSprite2.YSize*3.5;
    
    MoveSprite.X = Target.X;
    MoveSprite.Y = Target.Y - 75;
    
    MoveSprite2.X = Target.X;
    MoveSprite2.Y = Target.Y + 75;
    
    AnimationState = 0;
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    MovementMultiplier = 1;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    frameRate(24);
    CurrentAnimation = "Bite";
    registerMethod("draw", this);  
  }
  
  void BumRush()
  {
    AnimationState = 0;
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    frameRate(24);
    CurrentAnimation = "Bum Rush";
    registerMethod("draw", this);    
  }
  
  void Converse()
  {
    
    MoveSprite = new CreatureSprite("MoveSprites/SpeechBubbleUser.png",0,0,400,387,color(255));
    MoveSprite2 = new CreatureSprite("MoveSprites/SpeechBubbleTarget.png",0,0,400,387,color(255));
    
    MoveSprite.XSize = MoveSprite.XSize/3.5;
    MoveSprite.YSize = MoveSprite.YSize/3.5;
    MoveSprite2.XSize = MoveSprite2.XSize/3.5;
    MoveSprite2.YSize = MoveSprite2.YSize/3.5;
    
    MoveSprite2.X = -1000;
    MoveSprite.X = -1000;
    
    AnimationState = 0;
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    Counter = 2;
    
    frameRate(24);
    CurrentAnimation = "Converse";
    registerMethod("draw", this);    
  }
  
  
  void ColdWinds()
  {
    MoveSprite = new CreatureSprite("MoveSprites/ColdWind.png",0,0,200,200,color(255)); 
    
    MoveSprite.X = User.X;
    MoveSprite.Y = User.Y;
    MoveSprite.Rotation = -5;  
    
    MoveSprite.Show();
    
    AnimationState = 0;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
        
    frameRate(24);
    CurrentAnimation = "Cold Winds";
    registerMethod("draw", this);  
  }
  
  void DefensiveStance()
  {
    MoveX = User.X;
    MoveY = User.Y;  
    
    AnimationState = 0;
    frameRate(24);
    CurrentAnimation = "Defensive Stance";
    registerMethod("draw", this);  
  }
  
  
  void EgoHit()
  {
   
    AnimationState = 0;
    
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    
    frameRate(24);
    CurrentAnimation = "Ego Hit";
    registerMethod("draw", this);    
  }
  
  
  void Fireball()
  {
    ExplosionParticles[0] = new EllipseSprite(530,110,30,30);
    ExplosionParticles[1] = new EllipseSprite(530,110,30,30);
    ExplosionParticles[2] = new EllipseSprite(530,110,30,30);
    ExplosionParticles[3] = new EllipseSprite(530,110,30,30);
    ExplosionParticles[4] = new EllipseSprite(530,110,30,30);
    ExplosionParticles[5] = new EllipseSprite(530,110,30,30);
    ExplosionParticles[6] = new EllipseSprite(530,110,30,30);
    ExplosionParticles[7] = new EllipseSprite(530,110,30,30);
    
    MoveX = 150;
    MoveY = 230;
    SizeX = 0;
    SizeY = 0;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    frameRate(24);
    CurrentAnimation = "Fireball";
    registerMethod("draw", this);
  }

  
  void HypeUp()
  {
   
    AnimationState = 0;
    
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    Counter = 48;
    
    frameRate(24);
    CurrentAnimation = "Hype Up";
    registerMethod("draw", this);    
  }
  
  void Kick()
  {
   
    MoveSprite = new CreatureSprite("MoveSprites/Kick.png",0,0,178,178,color(255)); 
    AnimationState = 0;
    
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    Counter = 6;
    
    frameRate(24);
    CurrentAnimation = "Kick";
    registerMethod("draw", this);    
  }
  
  
  void LifeDrain()
  {
    AnimationState = 0;
    
    ExplosionParticles[0] = new EllipseSprite(Target.X,Target.Y,30,30);
    ExplosionParticles[1] = new EllipseSprite(Target.X,Target.Y,30,30);
    ExplosionParticles[2] = new EllipseSprite(Target.X,Target.Y,30,30);
    ExplosionParticles[3] = new EllipseSprite(Target.X,Target.Y,30,30);
    ExplosionParticles[4] = new EllipseSprite(Target.X,Target.Y,30,30);
    ExplosionParticles[5] = new EllipseSprite(Target.X,Target.Y,30,30);
    ExplosionParticles[6] = new EllipseSprite(Target.X,Target.Y,30,30);
    ExplosionParticles[7] = new EllipseSprite(Target.X,Target.Y,30,30);
    
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    frameRate(24);
    CurrentAnimation = "Life Drain";
    registerMethod("draw", this);
  }
  
  void Punch()
  {
   
    MoveSprite = new CreatureSprite("MoveSprites/Punch.png",0,0,128,110,color(255)); 
    AnimationState = 0;
    
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    Counter = 6;
    
    frameRate(24);
    CurrentAnimation = "Punch";
    registerMethod("draw", this);    
  }


  void Recharge()
  {
    Counter = 20;
    ExplosionParticles[0] = new EllipseSprite(User.X,User.Y,30,30);
    ExplosionParticles[1] = new EllipseSprite(User.X,User.Y,30,30);
    ExplosionParticles[2] = new EllipseSprite(User.X,User.Y,30,30);
    ExplosionParticles[3] = new EllipseSprite(User.X,User.Y,30,30);
    ExplosionParticles[4] = new EllipseSprite(User.X,User.Y,30,30);
    ExplosionParticles[5] = new EllipseSprite(User.X,User.Y,30,30);
    ExplosionParticles[6] = new EllipseSprite(User.X,User.Y,30,30);
    ExplosionParticles[7] = new EllipseSprite(User.X,User.Y,30,30);
    
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    frameRate(24);
    CurrentAnimation = "Recharge";
    registerMethod("draw", this);
  }
  
  void SadStory()
  {
    MoveSprite = new CreatureSprite("MoveSprites/Teardrop.png",0,0,256/5,256/5,color(255)); 
    
    MoveSprite.X = User.X+50;
    MoveSprite.Y = User.Y;
    
    MoveSprite.Show();
    
    
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    AnimationState = 0;
    Counter = 18;    
    frameRate(24);
    CurrentAnimation = "Sad Story";
    registerMethod("draw", this);  
  }

  void SmashDown()
  {
    AnimationState = 0;
    MoveX = User.X;
    MoveY = User.Y;
    SizeX = User.XSize;
    SizeY = User.YSize;
    
    TargetX = Target.X;
    TargetY = Target.Y;
    TargetSizeX = Target.XSize;
    TargetSizeY = Target.YSize;
    
    frameRate(24);
    CurrentAnimation = "Smash Down";
    registerMethod("draw", this);  
  }
  
  

  public void draw()
  {
    translate(TranslateX, TranslateY);
    background(100,150,250);
    rectMode(CENTER);  
    stroke(2,2,2);
    strokeWeight(4);
    fill(200,200,200);
    ellipse(520,160,200,90);
    Target.Show();
    User.Show();
    fill(100,100,100);
    rect(350,390,695,115);
    
    
    Button AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
    Button SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
    Button ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
    Button ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
    ImageButton BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
    if(CurrentAnimation.equals("Fireball"))
    {
      fill(255,0,0);
      ellipseMode(CENTER);
      if(Pause <= 0 && ExplosionParticles[0].XSize > 0)
      {
        ellipse(MoveX, MoveY+int(random(-1,1)*7), SizeX, SizeY);
        
      }
      else
      {
        ellipse(MoveX, MoveY, SizeX, SizeY);  
      }
    if(Pause <= 0)
    {
      if(SizeX > 75 && MoveX <= 500 && ExplosionParticles[0].XSize >= 0)
      {
        MoveX = MoveX + 53;
        MoveY = MoveY - 15;
      }
      else if(SizeX <= 75 && MoveX <= 500 && ExplosionParticles[0].XSize >= 0)
      {
        SizeX = SizeX + 3;
        SizeY = SizeY + 3;
        if(SizeX > 75)
        {
          Pause = 5;
          Counter = 20;
        }
      }
      else if(((SizeX > 0 && MoveX > 500) || MovementMultiplier > 0) || Counter >= 0)
      {
        
        int[] SignTable; 
           
        if(int(Counter)%2==0)
        {
          SignTable = new int[] {-1,1,-1};  
        }
        else
        {
          SignTable = new int[] {-1,1,1};  
        }
        
        if (SizeX > 10)
        {
          SizeX = SizeX - 10;
          SizeY = SizeY - 10;
          Target.X = Target.X + (SignTable[Counter%3]*15);                 
        }
        else
        {
          Target.X = TargetX;
          SizeX = 0;
          SizeY = 0;
        }
        if(Counter > 10)
        {
          Target.Tint = color(Target.Tint >> 16 & 0xFF, (Target.Tint >> 8 & 0xFF)-25, (Target.Tint & 0xFF)-25);  
        }
        else
        {
          Target.Tint = color(Target.Tint >> 16 & 0xFF, (Target.Tint >> 8 & 0xFF)+25, (Target.Tint & 0xFF)+25);
        }
        Counter = Counter - 1;
        for(int i = 0; i < 8; i++)
        { 
             
          int[][] PositionTable = {{-1,-1}, {-1,0}, {-1,1}, {0,-1}, {0,1}, {1,0}, {1,-1}, {1,1}};
          ExplosionParticles[i].X = ExplosionParticles[i].X + ((PositionTable[i][0]+(random(-1,1)))*MovementMultiplier);
          ExplosionParticles[i].Y = ExplosionParticles[i].Y + ((PositionTable[i][1]+(random(-1,1)))*MovementMultiplier);
          if(ExplosionParticles[i].XSize > 5)
          {
            ExplosionParticles[i].XSize = ExplosionParticles[i].XSize - 3;
            ExplosionParticles[i].YSize = ExplosionParticles[i].YSize - 3;
          }
          fill(252, 136+int(random(-50,50)), 3);
          noStroke();
          ExplosionParticles[i].Show();
          if(MovementMultiplier > 0)
          {
            MovementMultiplier = MovementMultiplier - 0.08;
          }
        }
        
      }
      else
      {
       
       Buttons.clear(); 
       Buttons.add(AttackButton);
       Buttons.add(SwitchButton);
       Buttons.add(ItemsButton);
       Buttons.add(ForfeitButton);
       Buttons.add(BackButton);
       CurrentAnimation = "";
       unregisterMethod("draw", this); 
      }
      
    }
    else
    {
      Pause = Pause - 1;
    }
   }
   else if(CurrentAnimation.equals("Smash Down"))
   {
     if(Pause <= 0 || AnimationState == 2)
     {
       if(User.YSize < SizeY*1.2 && AnimationState == 0)
       {
         User.YSize = User.YSize + 5;  
         User.X = User.X - 1;
         User.Rotation = User.Rotation - 1;
       }
       else if(User.YSize >= SizeY*1.2 && AnimationState == 0)
       {
         Pause = 12;
         AnimationState = 1;
       }
       else if(User.YSize >= SizeY/1.2 && AnimationState == 1)
       {
         User.YSize = User.YSize - 25;  
         User.X = User.X + 20;
         User.Rotation = User.Rotation + 9;
         Target.YSize = Target.YSize - 25;
         Target.Y = Target.Y + 10;
         
         if(!(User.YSize >= SizeY/1.2 && AnimationState == 1))
         {
           Pause = 8;
           AnimationState = 2;
         }
         
       }
       else if(AnimationState == 2 && Pause > 0)
       {
         TranslateX = int(random(-10,10));
         TranslateY = int(random(-10,10));
         Pause = Pause - 1;
         if(Pause == 0)
         {
            TranslateX = 0;
            TranslateY = 0;
            AnimationState = 3; 
         }
       }
       else if(AnimationState == 3)
       {
         if(User.YSize < SizeY)
         {
           User.YSize = User.YSize + 4;             
         }
         else
         {
           User.YSize = SizeY; 
         }
         
         if(Target.Y > TargetY)
         {
           Target.Y = Target.Y - 2;  
         }
         else
         {
           Target.Y = TargetY;  
         }
         
         if(Target.YSize < TargetSizeY)
         {
           Target.YSize = Target.YSize + 5;  
         }
         else
         {
           Target.YSize = TargetSizeY;  
         }
         
         if(User.X > MoveX)
         {
           User.X = User.X - 4;
         }
         else
         {
           User.X = MoveX;           
         }
         
         if(User.Rotation > 0)
         {
           User.Rotation = User.Rotation - 1.5;  
         }
         else
         {
           User.Rotation = 0; 
         }
         
         if(User.YSize == SizeY && User.X == MoveX && User.Rotation == 0)
         {
           Buttons.clear(); 
           Buttons.add(AttackButton);
           Buttons.add(SwitchButton);
           Buttons.add(ItemsButton);
           Buttons.add(ForfeitButton);
           Buttons.add(BackButton);
           CurrentAnimation = "";
           unregisterMethod("draw", this);   
         }
       }
     }
     else
     {
       Pause = Pause - 1;
     }
   } 
   else if(CurrentAnimation.equals("Bum Rush"))
   {
     if(Pause <= 0 || AnimationState == 2)
     {
       if(AnimationState == 0)
       {
         User.X = User.X - 5;
         User.Rotation = User.Rotation - 1;
         if(User.X < MoveX - 20)
         {
           Pause = 12;
           AnimationState = 1;
         }
       }
       else if(AnimationState == 1)
       {
         if(User.Rotation < 40)
         {
           User.Rotation = User.Rotation + 10;
         }
         User.X = User.X + 50;
         User.Y = User.Y - 14;
         if(User.X > 470)
         {     
           AnimationState = 2;
           Pause = 4;
         }
       }
       else if(AnimationState == 2)
       {
         if(Pause > 0)
         {
           int[] SignTable; 
           
           if(Pause%2==0)
           {
             SignTable = new int[] {-1,1,-1};  
           }
           else
           {
             SignTable = new int[] {-1,1,1};  
           }
           
           frameRate(24);

           User.X = User.X + SignTable[Pause%2]*10;
           User.Y = User.Y + SignTable[Pause%2]*10;
           
           Target.X = Target.X + SignTable[Pause%3]*25;
           
           Pause = Pause - 1;
         }
         else
         {
           AnimationState = 3;
           
         }
       }
       else if(AnimationState == 3)
       {  
         if(User.X > MoveX)
         {
           User.X = User.X - 17;
         }
         else
         {
           User.X = MoveX;
         }
         if(User.Y < MoveY)
         {
           User.Y = User.Y + 5;
         }
         else
         {
           User.Y = MoveY;
         }
         
         if(User.Rotation > 0)
         {
           User.Rotation = User.Rotation - 2;
         }
         else
         {
           User.Rotation = 0;
         }
         
         Target.X = TargetX;
         Target.Y = TargetY;
         
         if(User.X == MoveX && User.Y == MoveY && User.Rotation == 0)
         {
           Buttons.clear(); 
           Buttons.add(AttackButton);
           Buttons.add(SwitchButton);
           Buttons.add(ItemsButton);
           Buttons.add(ForfeitButton);
           Buttons.add(BackButton);
           CurrentAnimation = "";
           unregisterMethod("draw", this);  
         } 
       }
     }
     else
     {
       Pause = Pause - 1;
     }    
   } 
   else if (CurrentAnimation.equals("Agility"))
   {
     if(Pause <= 0)
     {
       if(AnimationState == 0)
       {
         User.X = User.X - 2;
         if(User.X <= MoveX - 20)
         {
           AnimationState = 1;
         }
       }
       else if(AnimationState == 1)
       {
         User.X = User.X + 4;
         if(User.X >= MoveX + 20)
         {
           AnimationState = 2;
         }
       }
       else if(AnimationState == 2)
       {
         User.X = User.X - 6;
         if(User.X <= MoveX - 20)
         {
           AnimationState = 3;
         }
       }
       else if(AnimationState == 3)
       {
         User.X = User.X + 8;
         if(User.X >= MoveX + 20)
         {
           AnimationState = 4;
         }
       }
       else if(AnimationState == 4)
       {
         User.X = User.X - 20;
         if(User.X <= MoveX - 20)
         {
           AnimationState = 5;
         }
       }
       else if(AnimationState == 5)
       {
         User.X = User.X + 40;
         if(User.X >= MoveX + 40)
         {
           AnimationState = 6;
           Counter = Counter + 1;
         }
       }
       else if(AnimationState == 6)
       {
         User.X = User.X - 40;
         if(User.X <= MoveX - 40)
         {
           AnimationState = 5;
           if(Counter > 4)
           {
             Counter = 0;
             User.X = MoveX;
             AnimationState = 7;
           }
         }
       }
       else if(AnimationState == 7)
       {
         pushMatrix();
         tint(255,255);
         translate(MoveX+int(random(-10,10)), MoveY);   
         image(loadImage(User.ImageString), 0, 0, SizeX, SizeY);
         popMatrix();
         User.Tint = color(255,63);
         User.X = User.X + 80;
         if(User.X >= MoveX + 80)
         {
           AnimationState = 8;
         }
       }
       else if(AnimationState == 8)
       {
         pushMatrix();
         translate(MoveX+int(random(-10,10)), MoveY);  
         tint(255,255);
         image(loadImage(User.ImageString), 0, 0, SizeX, SizeY);
         popMatrix();

         User.Tint = color(255,63);
         User.X = User.X - 80;
         if(User.X <= MoveX - 80)
         {
           AnimationState = 7;
           Counter = Counter + 1;
           if(Counter > 8)
           {
             User.X = MoveX;
             tint(255,255);
             User.Tint = color(255,255);
             translate(TranslateX, TranslateY);
             background(100,150,250);
             rectMode(CENTER);  
             stroke(2,2,2);
             strokeWeight(4);
             fill(200,200,200);
             ellipse(520,160,200,90);
             User.Show();
             Target.Show();
             fill(100,100,100);
             rect(350,390,695,115);
             
             Buttons.clear(); 
             AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
             SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
             ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
             ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
             BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
             Buttons.add(AttackButton);
             Buttons.add(SwitchButton);
             Buttons.add(ItemsButton);
             Buttons.add(ForfeitButton);
             Buttons.add(BackButton);
             CurrentAnimation = "";
             unregisterMethod("draw", this);  
           }
         }
       }
     }
     else
     {
       Pause = Pause - 1;
     }
   }
   else if (CurrentAnimation.equals("Bite"))
   {
     
     
     MoveSprite.Show();
     MoveSprite2.Show();
     SpriteText.Show();
    
     if(AnimationState == 0)
     {
       if(MoveSprite.Y >= Target.Y - 89.5)
       {
         MoveSprite.Y = MoveSprite.Y - 3.5;
       }
       if(MoveSprite2.Y <= TargetY + 89.5)
       {
         MoveSprite2.Y = MoveSprite2.Y + 3.5;
       }
       if(MoveSprite.Y <= Target.Y - 89.5 && MoveSprite2.Y >= TargetY + 89.5)
       {
         AnimationState = 1;
       } 
     }
     else if(AnimationState == 1)
     {
       MovementMultiplier = MovementMultiplier + 5.5;
       MoveSprite.Y = MoveSprite.Y + 1.5*MovementMultiplier;
       MoveSprite2.Y = MoveSprite2.Y - 1.5*MovementMultiplier;      
       
       if(MoveSprite.Y >= Target.Y-25 && MoveSprite2.Y <= TargetY+25)
       {
         AnimationState = 2; 
         Pause = 8;
       }
       
     }
     else if(AnimationState == 2 && Pause > 0)
     {
       int[] SignTable; 
           
       if(Pause%2==0)
       {
         SignTable = new int[] {-1,1,-1};  
       }
       else
       {
         SignTable = new int[] {-1,1,1};  
       }
       Target.X = Target.X + SignTable[Pause%3]*10;
       Pause = Pause - 1;
     }
     else
     {
       background(100,150,250);
       Target.X = TargetX;
       rectMode(CENTER);  
       stroke(2,2,2);
       strokeWeight(4);
       fill(200,200,200);
       ellipse(520,160,200,90);
       User.Show();
       Target.Show();
       fill(100,100,100);
       rect(350,390,695,115);
       
       Buttons.clear(); 
       AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
       SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
       ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
       ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
       BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
       Buttons.add(AttackButton);
       Buttons.add(SwitchButton);
       Buttons.add(ItemsButton);
       Buttons.add(ForfeitButton);
       Buttons.add(BackButton);
       CurrentAnimation = "";
       unregisterMethod("draw", this);   
     }
   }
   else if(CurrentAnimation.equals("Converse"))
   {
     MoveSprite.Show();
     MoveSprite2.Show();
     if(SpriteText.FontSize > 0)
     {
       SpriteText.Show();  
     }
     
     if(Pause <= 0 || AnimationState == 4)
     {
       if(AnimationState == 0)
       {
         if(Counter > 0)
         {
           User.Y = User.Y + 1;
           User.Rotation = User.Rotation + 1;
         }
         
         if(User.Y >= MoveY + 10 && Counter > 0)
         {
           AnimationState = 1;       
         }
         else if(Counter <= 0)
         {
           Counter = 3;
           AnimationState = 2;
         }
       }
       else if(AnimationState == 1)
       {
         User.Y = User.Y - 1;
         User.Rotation = User.Rotation - 1;
  
         if(User.Y <= MoveY)
         {
           AnimationState = 0;    
           Counter = Counter - 1;
           Pause = 1;
         }  
       }
       else if(AnimationState == 2)
       {
         MoveSprite.X = User.X + 120;
         MoveSprite.Y = User.Y - 120;
         SpriteText.X = MoveSprite.X+5;
         SpriteText.Y = MoveSprite.Y-20; 
         
         if(Counter > 0)
         {
           SpriteText.text = SpriteText.text + ".";
           Counter = Counter - 1;
           Pause = 12;
           SpriteText.FontSize = 64;  
           if(Counter == 0)
           {
             Pause = 24;
           }
         }
         else
         {
           AnimationState = 3;
           SpriteText.text = "";
           Counter = 3;
         }
       }
       else if(AnimationState == 3)
       {
         MoveSprite2.X = Target.X - 150;
         MoveSprite2.Y = Target.Y - 40;
         MoveSprite.Y = -1000;
         SpriteText.X = MoveSprite2.X+5;
         SpriteText.Y = MoveSprite2.Y-20; 
         
         if(Counter > 0)
         {
           SpriteText.text = SpriteText.text + ".";
           Counter = Counter - 1;
           Pause = 12;
           SpriteText.FontSize = 64;          
         }
         else
         {
           SpriteText.text = "!";
           AnimationState = 4;
           Pause = 16;
         }
       }
       else if(AnimationState == 4)
       {
           int[] SignTable;      
           if(Pause%2==0)
           {
             SignTable = new int[] {-1,1,-1};  
           }
           else
           {
             SignTable = new int[] {-1,1,1};  
           }
           Target.X = Target.X + SignTable[Pause%3]*10;  
           Pause = Pause - 1;
           if(Pause <= 0)
           {
             background(100,150,250);
             Target.X = TargetX;
             rectMode(CENTER);  
             stroke(2,2,2);
             strokeWeight(4);
             fill(200,200,200);
             ellipse(520,160,200,90);
             User.Show();
             Target.Show();
             fill(100,100,100);
             rect(350,390,695,115);
             
             Buttons.clear(); 
             AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
             SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
             ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
             ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
             BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
             Buttons.add(AttackButton);
             Buttons.add(SwitchButton);
             Buttons.add(ItemsButton);
             Buttons.add(ForfeitButton);
             Buttons.add(BackButton);
             CurrentAnimation = "";
             unregisterMethod("draw", this);   
           }
       }
     }
   }
   else if(CurrentAnimation.equals("Cold Winds"))
   {
     if(Pause <= 0)  
     {
       MoveSprite.Show();
       if(AnimationState == 0)
       {
         MoveSprite.X = MoveSprite.X + 20;
         MoveSprite.Y = MoveSprite.Y - 8;
         MoveSprite.Rotation = MoveSprite.Rotation + 1;
         
         if(MoveSprite.X >= Target.X && MoveSprite.Y >= MoveSprite.Y)
         {
           AnimationState = 1;  
           Counter = 12;
         }      
       }    
       else if(AnimationState == 1)
       {
         MoveSprite.X = MoveSprite.X + 20;
         MoveSprite.Y = MoveSprite.Y - 6;
         int[] SignTable;      
         if(Counter%2==0)
         {
           SignTable = new int[] {-1,1,-1};  
         }
         else
         {
           SignTable = new int[] {-1,1,1};  
         }
         Target.X = Target.X + SignTable[Counter%3]*5;  
         Counter = Counter - 1;
         Target.Tint = color((Target.Tint >> 16 & 0xFF)-15, (Target.Tint >> 8 & 0xFF)-5, (Target.Tint & 0xFF));  
         if(Counter <= 0)
         {
           AnimationState = 2;
           Counter = 12;
         }
       }
       else if(AnimationState == 2)
       {
         MoveSprite.X = MoveSprite.X + 20;
         MoveSprite.Y = MoveSprite.Y - 6;
         int[] SignTable;      
         if(Counter%2==0)
         {
           SignTable = new int[] {1,1,-1};  
         }
         else
         {
           SignTable = new int[] {-1,1,-1};  
         }
         Target.X = Target.X + SignTable[Counter%3]*5;  
         Counter = Counter - 1;
         if(Counter > 0)
         {
           Target.Tint = color((Target.Tint >> 16 & 0xFF)+15, (Target.Tint >> 8 & 0xFF)+5, (Target.Tint & 0xFF));  
         }
         else
         {
            MoveSprite.X = -1000;
            MoveSprite.Rotation = 0;
            background(100,150,250);
            Target.X = TargetX;
            rectMode(CENTER);  
            stroke(2,2,2);
            strokeWeight(4);
            fill(200,200,200);
            ellipse(520,160,200,90);
            User.Show();
            Target.Show();
            fill(100,100,100);
            rect(350,390,695,115);
            
            Buttons.clear(); 
            AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
            SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
            ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
            ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
            BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
            Buttons.add(AttackButton);
            Buttons.add(SwitchButton);
            Buttons.add(ItemsButton);
            Buttons.add(ForfeitButton);
            Buttons.add(BackButton);
            CurrentAnimation = "";
            unregisterMethod("draw", this);
         }
       }
     }
     else
     {      
       Pause = Pause - 1;
     }
   }
   else if(CurrentAnimation.equals("Defensive Stance"))
   {
     if(Pause <= 0)  
     {
       if(AnimationState == 0)
       {
         User.Y = User.Y - 2;
         User.Rotation = User.Rotation - 1;
         if(User.Y <= MoveY - 16)
         {
           AnimationState = 1;
         }
       } 
       else if(AnimationState == 1)
       {
         User.Y = User.Y + 6; 
         User.Rotation = User.Rotation + 2.5;
         if(User.Y >= MoveY)
         {
           AnimationState = 2;
           User.Rotation = 0;
           Counter = 6;
         }
       }
       else if (AnimationState == 2)
       {
         int[] SignTable;      
         if(Counter%2==0)
         {
           SignTable = new int[] {1,1,-1};  
         }
         else
         {
           SignTable = new int[] {-1,1,-1};  
         }
         
         User.Y = User.Y + SignTable[Counter%3]*10;  
         Counter = Counter - 1;
         if(Counter == 0)
         {
           User.Y = MoveY;
           AnimationState = 3;
           Counter = 35;
         }
       }
       else if (AnimationState == 3)
       {     
         Counter = Counter - 1;
         if(Counter <= 0)
         {
           background(100,150,250);
           User.Tint = color(255);
           rectMode(CENTER);  
           stroke(2,2,2);
           strokeWeight(4);
           fill(200,200,200);
           ellipse(520,160,200,90);
           User.Show();
           Target.Show();
           fill(100,100,100);
           rect(350,390,695,115);
          
           Buttons.clear(); 
           AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
           SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
           Buttons.add(AttackButton);
           Buttons.add(SwitchButton);
           Buttons.add(ItemsButton);
           Buttons.add(ForfeitButton);
           Buttons.add(BackButton);
           CurrentAnimation = "";
           unregisterMethod("draw", this);  
         }
         else if(Counter > 15)
         {
           User.Tint = color((User.Tint >> 16 & 0xFF)-15, (User.Tint >> 8 & 0xFF)-15, (User.Tint & 0xFF)-15);
         }
         else
         {
           User.Tint = color((User.Tint >> 16 & 0xFF)+15, (User.Tint >> 8 & 0xFF)+15, (User.Tint & 0xFF)+15);  
         }
       }
     else
     {      
       Pause = Pause - 1;
     }
   }
  }
  else if(CurrentAnimation.equals("Ego Hit"))
   {
     if(Pause <= 0)  
     {
       if(AnimationState == 0)
       {
         User.YSize = User.YSize*1.05;
         User.XSize = User.XSize*1.05;
         User.Y = User.Y - 5.5;
         
         if(User.XSize > SizeX*1.25)
         {
           Pause = 24;
           AnimationState = 1;
         }        
       }
       else if(AnimationState == 1)
       {
         User.X = User.X + 50;        
         if(User.X > MoveX + 50)
         {
           Pause = 1;
           Counter = 3;
           AnimationState = 2;
         }        
       }
       else if(AnimationState == 2)
       {
         if(User.X > MoveX)
         {
           User.X = User.X - 50;  
         }
         User.YSize = User.YSize/1.05;
         User.XSize = User.XSize/1.05;
         User.Y = User.Y + 7;
         int[] SignTable;      
         if(Counter%2==0)
         {
           SignTable = new int[] {1,1,-1};  
         }
         else
         {
           SignTable = new int[] {-1,1,-1};  
         }
         if(Counter > 0)
         {
           Target.X = Target.X + SignTable[Counter%3]*5; 
         }
         if(Counter == 3)
         {
           HitEffect.X = Target.X;
           HitEffect.Y = Target.Y;
           HitEffect.XSize = 128/1.15; 
           HitEffect.YSize = 128/1.15; 
         }
         HitEffect.Show();
         Counter = Counter - 1;
         if(User.X <= MoveX && Counter <= 0 && User.YSize <= SizeY && User.Y >= MoveY)
         {
           background(100,150,250);
           User.Tint = color(255);
           rectMode(CENTER);  
           stroke(2,2,2);
           strokeWeight(4);
           fill(200,200,200);
           ellipse(520,160,200,90);
           User.X = MoveX;
           User.Y = MoveY;
           User.XSize = SizeX;
           User.YSize = SizeY;
           Target.X = TargetX;
           Target.Y = TargetY;
           User.Show();
           Target.Show();
           fill(100,100,100);
           rect(350,390,695,115);
          
           Buttons.clear(); 
           AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
           SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
           Buttons.add(AttackButton);
           Buttons.add(SwitchButton);
           Buttons.add(ItemsButton);
           Buttons.add(ForfeitButton);
           Buttons.add(BackButton);
           CurrentAnimation = "";
           unregisterMethod("draw", this); 
         }        
       }
     }
     else
     {      
       Pause = Pause - 1;
     }
   }
   else if(CurrentAnimation.equals("Hype Up"))
   {
     if(Pause <= 0)  
     {
       if(AnimationState == 0)
       {

         int[] SignTable;      
         if(Counter%2==0)
         {
           SignTable = new int[] {1,1,-1};  
         }
         else
         {
           SignTable = new int[] {-1,1,-1};  
         }
         User.Y = User.Y + SignTable[Counter%3]*15; 
         Counter = Counter - 1;
         if(Counter <= 0)
         {
           background(100,150,250);
           User.Tint = color(255);
           rectMode(CENTER);  
           stroke(2,2,2);
           strokeWeight(4);
           fill(200,200,200);
           ellipse(520,160,200,90);
           User.X = MoveX;
           User.Y = MoveY;
           User.XSize = SizeX;
           User.YSize = SizeY;
           Target.X = TargetX;
           Target.Y = TargetY;
           User.Show();
           Target.Show();
           fill(100,100,100);
           rect(350,390,695,115);
          
           Buttons.clear(); 
           AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
           SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
           Buttons.add(AttackButton);
           Buttons.add(SwitchButton);
           Buttons.add(ItemsButton);
           Buttons.add(ForfeitButton);
           Buttons.add(BackButton);
           CurrentAnimation = "";
           unregisterMethod("draw", this);
         }        
       }    
     }
     else
     {      
       Pause = Pause - 1;
     }
   }
   else if(CurrentAnimation.equals("Kick"))
   {
     if(Pause <= 0)  
     {
       if(AnimationState == 0)
       {
         
         User.Rotation = User.Rotation - 18; 
         Counter = Counter - 1;
         if(Counter <= 4)
         {
           AnimationState = 1;
           Counter = 12;
         }        
       }  
       else if(AnimationState == 1)
       {
         if(Counter == 12)
         {
           MoveSprite.X = TargetX;
           MoveSprite.Y = TargetY;
         }
         MoveSprite.Show();
         int[] SignTable;      
         if(Counter%2==0)
         {
           SignTable = new int[] {1,1,-1};  
         }
         else
         {
           SignTable = new int[] {-1,1,-1};  
         }
         Target.X = Target.X + SignTable[Counter%3]*15; 
         MoveSprite.XSize = MoveSprite.XSize/(1.04*(float(Counter/6)));
         MoveSprite.YSize = MoveSprite.YSize/(1.04*(float(Counter/6)));
         User.Rotation = User.Rotation + 3; 
         Counter = Counter - 1;
         if(Counter <= 0)
         {
           background(100,150,250);
           User.Tint = color(255);
           rectMode(CENTER);  
           stroke(2,2,2);
           strokeWeight(4);
           fill(200,200,200);
           ellipse(520,160,200,90);
           User.X = MoveX;
           User.Y = MoveY;
           User.XSize = SizeX;
           User.YSize = SizeY;
           Target.X = TargetX;
           Target.Y = TargetY;
           User.Show();
           Target.Show();
           fill(100,100,100);
           rect(350,390,695,115);
          
           Buttons.clear(); 
           AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
           SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
           Buttons.add(AttackButton);
           Buttons.add(SwitchButton);
           Buttons.add(ItemsButton);
           Buttons.add(ForfeitButton);
           Buttons.add(BackButton);
           CurrentAnimation = "";
           unregisterMethod("draw", this);
         }     
       }
     }
     else
     {      
       Pause = Pause - 1;
     }
   } 
   else if(CurrentAnimation.equals("Life Drain"))
   {
     if(Pause <= 0)  
     {
       if(AnimationState <= 16)
       {
         for(int i = 0; i < Counter; i++)
         {
           ExplosionParticles[i].X = ExplosionParticles[i].X - 55;
           if(ExplosionParticles[i].X <= User.X)
           {
              ExplosionParticles[i].X = User.X;
           }
           if(ExplosionParticles[i].Y >= User.Y)
           {
              ExplosionParticles[i].Y = User.Y;
           }
           ExplosionParticles[i].Y = ExplosionParticles[i].Y + 23.5;
           strokeWeight(Counter/2);
           fill(0,255,0, Counter*31.875);
           ExplosionParticles[i].Show();
         }
         Pause = 1;
         if(Counter < 8)
         {
           Counter = Counter + 1;
         }
         if(Counter >= 8)
         {
           AnimationState = AnimationState + 1;
         }        
       }
       else if(AnimationState > 10)
       {
         background(100,150,250);
         User.Tint = color(255);
         rectMode(CENTER);  
         stroke(2,2,2);
         strokeWeight(4);
         fill(200,200,200);
         ellipse(520,160,200,90);
         User.X = MoveX;
         User.Y = MoveY;
         User.XSize = SizeX;
         User.YSize = SizeY;
         Target.X = TargetX;
         Target.Y = TargetY;
         User.Show();
         Target.Show();
         fill(100,100,100);
         rect(350,390,695,115);
        
         Buttons.clear(); 
         AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
         SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
         ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
         ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
         BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
         Buttons.add(AttackButton);
         Buttons.add(SwitchButton);
         Buttons.add(ItemsButton);
         Buttons.add(ForfeitButton);
         Buttons.add(BackButton);
         CurrentAnimation = "";
         unregisterMethod("draw", this);  
       }
     } 
     else
     {      
       Pause = Pause - 1;
     } 
   } 
   else if(CurrentAnimation.equals("Punch"))
   {
     if(Pause <= 0)  
     {
       if(AnimationState == 0)
       {
         
         User.Rotation = User.Rotation + 18; 
         Counter = Counter - 1;
         if(Counter <= 4)
         {
           AnimationState = 1;
           Counter = 12;
         }        
       }  
       else if(AnimationState == 1)
       {
         if(Counter == 12)
         {
           MoveSprite.X = TargetX;
           MoveSprite.Y = TargetY;
         }
         MoveSprite.Show();
         int[] SignTable;      
         if(Counter%2==0)
         {
           SignTable = new int[] {1,1,-1};  
         }
         else
         {
           SignTable = new int[] {-1,1,-1};  
         }
         Target.X = Target.X + SignTable[Counter%3]*15; 
         MoveSprite.XSize = MoveSprite.XSize/(1.04*(float(Counter/6)));
         MoveSprite.YSize = MoveSprite.YSize/(1.04*(float(Counter/6)));
         User.Rotation = User.Rotation - 3; 
         Counter = Counter - 1;
         if(Counter <= 0)
         {
           background(100,150,250);
           User.Tint = color(255);
           rectMode(CENTER);  
           stroke(2,2,2);
           strokeWeight(4);
           fill(200,200,200);
           ellipse(520,160,200,90);
           User.X = MoveX;
           User.Y = MoveY;
           User.XSize = SizeX;
           User.YSize = SizeY;
           Target.X = TargetX;
           Target.Y = TargetY;
           User.Show();
           Target.Show();
           fill(100,100,100);
           rect(350,390,695,115);
          
           Buttons.clear(); 
           AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
           SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
           Buttons.add(AttackButton);
           Buttons.add(SwitchButton);
           Buttons.add(ItemsButton);
           Buttons.add(ForfeitButton);
           Buttons.add(BackButton);
           CurrentAnimation = "";
           unregisterMethod("draw", this);
         }     
       }
     }
     else
     {      
       Pause = Pause - 1;
     }
   }
   else if(CurrentAnimation.equals("Recharge"))
   {
     if(Pause <= 0)  
     {
       if(AnimationState == 0)
       {        
          int[] SignTable; 
             
          if(int(Counter)%2==0)
          {
            SignTable = new int[] {-1,1,-1};  
          }
          else
          {
            SignTable = new int[] {-1,1,1};  
          }
          
          if (SizeX > 10)
          {
            SizeX = SizeX - 10;
            SizeY = SizeY - 10;
            User.X = User.X + (SignTable[Counter%3]*5);                 
          }
          else
          {
            User.X = MoveX;
            SizeX = 0;
            SizeY = 0;
          }
          if(Counter > 10)
          {
            User.Tint = color((User.Tint >> 16 & 0xFF)-25, (User.Tint >> 8 & 0xFF)+25, (User.Tint & 0xFF)-25);  
          }
          else
          {
            User.Tint = color((User.Tint >> 16 & 0xFF)+25, (User.Tint >> 8 & 0xFF), (User.Tint & 0xFF)+25);
          }
          Counter = Counter - 1;
          for(int i = 0; i < 8; i++)
          {                
            int[][] PositionTable = {{-1,-1}, {-1,0}, {-1,1}, {0,-1}, {0,1}, {1,0}, {1,-1}, {1,1}};
            ExplosionParticles[i].X = ExplosionParticles[i].X - ((PositionTable[i][0]+(random(-1,1)))*MovementMultiplier);
            ExplosionParticles[i].Y = ExplosionParticles[i].Y - ((PositionTable[i][1]+(random(-1,1)))*MovementMultiplier);
            if(ExplosionParticles[i].XSize > 5)
            {
              ExplosionParticles[i].XSize = ExplosionParticles[i].XSize - 3;
              ExplosionParticles[i].YSize = ExplosionParticles[i].YSize - 3;
            }
            fill(50, 136+int(random(-50,50)), 3);
            noStroke();
            ExplosionParticles[i].Show();
            if(MovementMultiplier > 0)
            {
              MovementMultiplier = MovementMultiplier - 0.08;
            }
          }
         if(Counter <= 0)
         {
           background(100,150,250);
           User.Tint = color(255);
           rectMode(CENTER);  
           stroke(2,2,2);
           strokeWeight(4);
           fill(200,200,200);
           ellipse(520,160,200,90);
           User.X = MoveX;
           User.Y = MoveY;
           Target.X = TargetX;
           Target.Y = TargetY;
           User.Show();
           Target.Show();
           fill(100,100,100);
           rect(350,390,695,115);
          
           Buttons.clear(); 
           AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
           SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
           BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
           Buttons.add(AttackButton);
           Buttons.add(SwitchButton);
           Buttons.add(ItemsButton);
           Buttons.add(ForfeitButton);
           Buttons.add(BackButton);
           CurrentAnimation = "";
           unregisterMethod("draw", this);
         }
       }      
     }
     else
     {      
       Pause = Pause - 1;
     }
   }
   else if(CurrentAnimation.equals("Sad Story"))
   {
     if(Pause <= 0)  
     {
       if(AnimationState == 0)
       {        
         MoveSprite.Y = MoveSprite.Y + float(6/(12/Counter+1));
         MoveSprite.Show();
         Counter = Counter - 1;
         if(Counter <= 0)
         {
           Pause = 24;
           AnimationState = 1;
         }
       }      
       else if(AnimationState == 1)
       {        
         background(100,150,250);
         User.Tint = color(255);
         rectMode(CENTER);  
         stroke(2,2,2);
         strokeWeight(4);
         fill(200,200,200);
         ellipse(520,160,200,90);
         User.X = MoveX;
         User.Y = MoveY;
         Target.X = TargetX;
         Target.Y = TargetY;
         User.Show();
         Target.Show();
         fill(100,100,100);
         rect(350,390,695,115);
        
         Buttons.clear(); 
         AttackButton = new Button(460, 360, 140, 45, color(200,215,255), "Attack", color(200, 105, 64), 25,  color(100, 100, 100, 70), true);
         SwitchButton = new Button(460, 420,140,45, color(200,215,255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
         ForfeitButton = new Button(610, 420, 140, 45, color(200,215,255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
         ItemsButton = new Button(610, 360, 140,45, color(200,215,255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
         BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255,255,255), color(100, 100, 100, 70));
         Buttons.add(AttackButton);
         Buttons.add(SwitchButton);
         Buttons.add(ItemsButton);
         Buttons.add(ForfeitButton);
         Buttons.add(BackButton);
         CurrentAnimation = "";
         unregisterMethod("draw", this);
       } 
     }
     else
     {      
       MoveSprite.Show();
       Pause = Pause - 1;
     }
   }
  } 
}
