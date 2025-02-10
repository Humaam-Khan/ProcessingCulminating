public int GameState;
public String SelectedCreature = "";
private int PreviousGameState = -1;
ArrayList<Button> Buttons = new ArrayList<Button>();
ArrayList<Creature> CreatureEncyclopedia = new ArrayList<Creature>();
ArrayList<Move> MoveEnclyopedia = new ArrayList<Move>();
ArrayList<Creature> PlayerParty = new ArrayList<Creature>();

// Moves

Move Agility = new Move("Agility", "Increases the user's Speed stat by 3-6", "Effect", 0, 8, 100);
Move BumRush = new Move("Bum Rush", "The user throws themselves at the target with immense speed.", "Physical", 70, 20, 90);
Move Bite = new Move("Bite", "The user bites the target. Has a 10% to lower the target's Endurance stat by an amount based on the user's Speed stat.", "Phyiscal", 40, 9, 90);
Move Converse = new Move("Converse", "The user tries to start a conversation with the target. May raise or lower either creature's Attack or Defense stat by 1-3.", "Effect", 0, 0, 100);
Move ColdWinds = new Move("Cold Winds", "The user generates a cold wind, dealing damage and lowering the opponent's Speed stat by 1-2.", "Magic", 50, 7, 100);
Move DefensiveStance = new Move("Defensive Stance", "The user takes a defensive stance increasing their Defense stat by 4-6.", "Effect", 0, 3, 100);
Move EgoHit = new Move("Ego Hit", "The user hits the target egotistically.If the target is KO'ed, the user gains 7-13 Attack.", "Physical", 30, 22, 90);
Move Fireball = new Move("Fireball", "The user casts a fireball against the target.", "Magic", 55, 5, 100);
Move HypeUp = new Move("Hype Up", "The user tries to creates hype for themselves, raising their Attack and Defense stat by 1-5.", "Effect", 0, 0, 65);
Move Kick = new Move("Kick", "The user kicks the target", "Physical", 50, 10, 85);
Move LifeDrain = new Move("Life Drain", "The user drains the target's life. Recovers user's HP by 1/3 of the damage dealt.", "Magic", 35, 5, 90);
Move MoveCloser = new Move("Move Closer", "Moves closer to the target.", "Neutral", 0, 2, 100);
Move Punch = new Move("Punch", "The user punches the target", "Physical", 65, 12, 75);
Move Recharge = new Move("Recharge", "The user heals 1/3 of their HP, but they cannot attack the next turn.", "Effect", 0, 0, 100);
Move SadStory = new Move("Sad Story", "The user tells the target a sad story. Lowers the target's Speed and Defense stat by 3-5", "Effect", 0, 3, 40);
Move Scare = new Move("Scare", "Attempts to scare the target lowering their Attack stat by 2-4.", "Effect", 0, 0, 85);
Move Scratch = new Move("Scratch", "The user scratches the target.", "Physical", 25, 7, 100);
Move SmashDown = new Move("Smash Down", "The user jumps and puts all its weight on the target for massive damage.", "Physical", 100, 5, 70);
Move SwordSlash = new Move("Sword Slash", "The user slashes their sword on the target to deal damage.", "Weapon", 80, 7, 100);

Move NullMove = new Move("", "", "", 0, 0, 0);

// Creatures
Creature MobileGrave, MrBat, Skeleton;


void setup()
{
  size(700, 450);
  GameState = 0;
  frameRate(24);
  MobileGrave = new Creature(50, 16, 22, 5, 27, MoveCloser, Scare, Kick, DefensiveStance, "CreatureSprites/MobileGrave.png", "A somehow sentient grave that can deal massive damage to opponents. Unfortunately,it is a slow creature and most of its moves require a startup before it can attack.");
  MrBat = new Creature(32, 6, 4, 30, 16, Agility, LifeDrain, Scare, Bite, "CreatureSprites/MrBat.png", "Just your average bat;fast and frail. Can easily cripple opponents,but has trouble finishing them off.");
  Skeleton = new Creature(40, 8, 13, 16, 52, Scratch, Scare, Punch, EgoHit, "CreatureSprites/Skeleton.png", "This skeleton has the body structure which enables it to use a lot of attacks. Unfortunately, bones aren't great for dealing damage, but they can tank a lot of damage.");

  //background(0,0,0);


  // Creatures


  //Text TestText = new Text("THIS IS A TEST STRING", 350, 275, 12, color(255,255,255), color(0,0,0));






  //TestText.Animate(24);
}


void draw()
{
  if ((GameState == 0) && (GameState != PreviousGameState))
  {
    background(0, 0, 0);
    PFont myFont = createFont("MS Gothic", 10);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    fill(255, 255, 255);
    textSize(72);
    text("   COMPUTER SCIENCE: \n Culminating Edition", 330, 125);
    Button PlayButton = new Button(350, 325, 140, 45, color(255, 255, 255), "Play", color(0, 0, 0), 25, color(100, 100, 100, 70), true);
    PreviousGameState = 0;
  } else if ((GameState == 1) && (GameState != PreviousGameState))
  {
    background(0, 0, 0);
    PFont myFont = createFont("MS Gothic", 10);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    fill(255, 255, 255);
    textSize(24);
    text(" CHOOSE ONE;THE REST YOU WILL ENCOUNTER IN A FIGHT \n AND WILL HAVE THE OPTION TO KEEP ONE AFTER EACH BATTLE.", 350, 35);
    ImageButton MobileGrave = new ImageButton(150, 250, 86*2, 128*2, "CreatureSprites/MobileGrave.png", false, color(0, 0, 0), color(100, 100, 100, 70));
    ImageButton MrBat = new ImageButton(350, 250, 35*4, 57*4, "CreatureSprites/MrBat.png", false, color(0, 0, 0), color(100, 100, 100, 70));
    ImageButton Skeleton = new ImageButton(550, 250, 48*5, 45*5, "CreatureSprites/Skeleton.png", false, color(0, 0, 0), color(100, 100, 100, 70));

    textSize(20);
    text("Mobile Grave", 130, 385);
    text("Mr.Bat", 350, 385);
    text("Skeleton", 550, 385);
    PreviousGameState = 1;
  } else if ((GameState == 2) && (GameState != PreviousGameState))
  {
    background(100, 150, 250);
    Creature PlayerCreature = PlayerParty.get(0);

    PlayerCreature.Sprite.ImageString = PlayerCreature.ImageString = PlayerCreature.ImageString.replace(".png", "") + "Back.png";
    PlayerCreature.Sprite.X = 145;
    PlayerCreature.Sprite.Y = 230;
    PlayerCreature.Sprite.XSize = PlayerCreature.Sprite.XSize*1.6;
    PlayerCreature.Sprite.YSize = PlayerCreature.Sprite.YSize*1.6;
    PlayerCreature.Sprite.Show();

    Skeleton.Sprite.X = 520;
    Skeleton.Sprite.Y = 90;
    Skeleton.Sprite.XSize = Skeleton.Sprite.XSize*1.8;
    Skeleton.Sprite.YSize = Skeleton.Sprite.YSize*1.8;

    rectMode(CENTER);
    fill(100, 100, 100);
    stroke(2, 2, 2);
    strokeWeight(4);
    rect(350, 390, 695, 115);
    fill(200, 200, 200);
    ellipse(520, 160, 200, 90);
    Skeleton.Sprite.Show();
    Animations FireballAnimation = new Animations(PlayerCreature.Sprite, Skeleton.Sprite);
    FireballAnimation.SadStory();

    Button AttackButton = new Button(460, 360, 140, 45, color(200, 215, 255), "Attack", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
    Button SwitchButton = new Button(460, 420, 140, 45, color(200, 215, 255), "Switch", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
    Button ForfeitButton = new Button(610, 420, 140, 45, color(200, 215, 255), "Forfeit", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
    Button ItemsButton = new Button(610, 360, 140, 45, color(200, 215, 255), "Items", color(200, 105, 64), 25, color(100, 100, 100, 70), true);
    ImageButton BackButton = new ImageButton(670, 305, 45, 45, "BackArrow.png", true, color(255, 255, 255), color(100, 100, 100, 70));
    PreviousGameState = 2;
  }

  for (Button button : Buttons)
  {
    button.CheckMousePosition();
  }
}


void mousePressed() {
  for (int i = 0; i < Buttons.size(); i++)
  {
    if (Buttons.get(i).MouseOverButton() == true)
    {
      Buttons.get(i).ButtonPressed();
    }
  }
}
