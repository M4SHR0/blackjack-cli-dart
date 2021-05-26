import 'dart:io';
import 'dart:math';

class Card{
  int cardCounts = 52;
  List fullDeck = [];

  List initial(){
    for (int i = 0; i < cardCounts; i++){
      fullDeck.add(i);
    }
    return fullDeck;
  }
}