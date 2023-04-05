import 'dart:io';

bool winner = false;
bool Xturn = true;
int moveCount = 0;
List <String> values = ['1','2','3','4','5','6','7','8','9'];
List <String> combinations = ['012','345','678','036','147','258','048','246'];
void getBoard()
{
  print("   |   |   ");
  print(" ${values[0]} | ${values[1]} | ${values[2]}");
  print("___|___|___");
  print("   |   |   ");
  print(" ${values[3]} | ${values[4]} | ${values[5]}");
  print("___|___|___");
  print("   |   |   ");
  print(" ${values[6]} | ${values[7]} | ${values[8]}");
  print("   |   |   ");
}
bool checkCombination(String single_combination, String player_input)
{
  List<int> numbers = single_combination.split('').map((item){
    return int.parse(item);}).toList();
    bool match = false;
    for (final items in numbers)
    {
      if (values[items] == player_input)
      {
        match = true;
      }
      else{
        match = false;
        break;
      }
    }
    return (match);
}

void checkWinner(player){
  for (final items in combinations)
  {
    bool combinationValidity = checkCombination(items,player);
    if (combinationValidity == true)
    {
      print("$player WON!!");
      winner = true;
      break;
    }
  }
}
void nextPlayerFunction()
{
  if (Xturn == true)
  {
    print("X Choose a number from the board");
      int selected_number = int.parse(stdin.readLineSync()!);
      values[selected_number - 1] = 'X';
  }
  else{
    print("0 choose a number from the board");
      int selected_number = int.parse(stdin.readLineSync()!);
      values[selected_number - 1] = '0'; 
  }
  Xturn = !Xturn;
  moveCount++;
  if (moveCount == 9)
  {
    winner = true;
    print ("Draw!!");
  }
  else{
    clearScreen();
    getBoard();
  }
  checkWinner('X');
  checkWinner('0');
  if (winner == false)
  {
    nextPlayerFunction();
  }
}void clearScreen()
{
    if (Platform.isWindows){
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}
void main()
{
  getBoard();
  nextPlayerFunction();
}