public class Move {
  
  String Name;
  String Description;
  int Power; 
  int EnduranceCost;
  int Accuracy;
  String Type;
  
  
  Move(String Name, String Description, String Type, int Power, int EnduranceCost, int Accuracy)
  {
    this.Name = Name;
    this.Description = Description;
    this.Type = Type;
    this.Power = Power;
    this.EnduranceCost = EnduranceCost;
    this.Accuracy = Accuracy;
    MoveEnclyopedia.add(this);
  }
  
  
  
  public void Effect()
  {
    if(Name.equals("Move Closer"))
    {
      
    }
  }
  
  
}
