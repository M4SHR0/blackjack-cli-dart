import 'dart:math';

import 'Card.dart';
import 'Player.dart';

class Game{
  List gameDeck = Card().initial();
  int playerCounts = 2;
  List playerList = [];

  void play(){
    shuffle();
    createPlayers();

    for (int i = 0; i < 2; i++) {
      for (int j = 0; j < playerCounts; j++) {
        playerList[j].deck.add(draw());
      }
    }

    for (int i = 0; i < 2; i++) {
      for (int j = 0; j < playerCounts; j++) {
        playerList[j].score = calcScore(playerList[j].deck);
      }
    }

    for (int j = 0; j < playerCounts; j++) {
      print(playerList[j].name);
      print("deck:${playerList[j].deck}");
      print("Score:${playerList[j].score}");
      print("");
    }


  }

  void createPlayers(){
    for (int n = 0; n < playerCounts; n++){
      Player player = Player("Player $n ");
      playerList.add(player);
    }
  }

  void shuffle(){
    List newDeck = [];
    while(gameDeck.length>0){
      int randNum = Random().nextInt(gameDeck.length);
      newDeck.add(gameDeck[randNum]);
      gameDeck.removeAt(randNum);
    }
    gameDeck = newDeck;
  }

  int draw(){
    int randNum = Random().nextInt(gameDeck.length);
    int cardNum;
    cardNum = gameDeck[randNum];
    gameDeck.removeAt(randNum);
    return cardNum;
  }

  int calcScore(List deck){
    int score = 0;
    for (int i = 0; i < deck.length; i++){
      int cardNum = deck[i] % 13;
      int tmp;
      if (cardNum == 0) {
        tmp = 11;
        if ((score + tmp) > 21){
          tmp = 1;
        }
      }else if(cardNum >= 10 && cardNum <= 12){
        tmp = 10;
      }else{
        tmp = cardNum + 1;
      }
      score = score + tmp;
    }
    return score;
  }
}