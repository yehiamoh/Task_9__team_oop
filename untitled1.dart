import 'dart:convert';
import 'dart:io';
void main() {

var team=Team(name: "yehia", age: 18, Trainer: "fg", attacks: [], defenders: [], goalkeepers: []);
var player1 = AttackPlayer(name: "Player 1", age: 25, place: "Forward", numOfGoals: 10);
var player2 = DefenderPlayer(name: "Player 2", age: 28, place: "Defense", numOfAssists: 5);
var player3 =GoalKeeper(name: "Yehia", age: 18, cleanSheets: 18, place: "goalkepper");

team.addPlayer(player1);
team.addPlayer(player2);
team.addPlayer(player3);

team.info();
}
class Player {
  String name;
  String place;
  int age;
  Player({required this.name,required this.age,required this.place});
}
class AttackPlayer extends Player {
  int numOfGoals;
  AttackPlayer({required super.name,required super.age,required this.numOfGoals, required super.place});
}
class DefenderPlayer extends Player {
  int numOfAssists;
  DefenderPlayer({required super.name,required super.age,required this.numOfAssists, required super.place});
}
class GoalKeeper extends Player {
  int cleanSheets;
  GoalKeeper({required super.name,required super.age,required this.cleanSheets, required super.place});
}
class Team{
   String name ;
   int age ;
   String Trainer;
   List<AttackPlayer> attacks;
   List<DefenderPlayer> defenders;
   List<GoalKeeper> goalkeepers;
   Team({required this.name,required this.age,required this.Trainer,required this.attacks,required this.defenders,required this.goalkeepers});
   void addPlayer(Player player){
     if (player.age >= 18 && player.age <= 30) {
       if (player is AttackPlayer) {
         attacks.add(player);
       } else if (player is DefenderPlayer) {
         defenders.add(player);
       } else if (player is GoalKeeper) {
         goalkeepers.add(player);
       }
     }
   }

   void info() {
     print("Team Name: $name");
     print("Team Age: $age");
     print("Attacks:");
     for (var attack in attacks) {
       print("Name: ${attack.name}, Age: ${attack.age}, Place: ${attack.place}, Goals: ${attack.numOfGoals}");
     }
     print("Defenders:");
     for (var defender in defenders) {
       print("Name: ${defender.name}, Age: ${defender.age}, Place: ${defender.place}, Assists: ${defender.numOfAssists}");
     }
     print("Goalkeepers:");
     for (var goalkeeper in goalkeepers) {
       print("Name: ${goalkeeper.name}, Age: ${goalkeeper.age}, Place: ${goalkeeper.place}, Clean Sheets: ${goalkeeper.cleanSheets}");
     }
   }
}







