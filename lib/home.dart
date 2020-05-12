import 'package:flutter/material.dart';

class Wisdome extends StatefulWidget {
  @override
  _WisdomeState createState() => _WisdomeState();
}

class _WisdomeState extends State<Wisdome> {
  int _index = 0;
  List quotes = [
    "This discourse, and the present frame of my mind, lead me rather to speak to those, who by feeling Satan's fiery darts, know assuredly that there is a devil.",
    "The only thing I won't watch is darts. And I don't watch cricket. How can you like a game that requires you to take four days off work to follow a Test? And I don't really like golf. I know a lot of English footballers play, but I know that if I go with the club to play, sooner or later I will end up trying to smash the ball with my foot.",
    "So many people say that obviously my game has changed since I arrived here and I say that it's good that it changed, otherwise it would show a lack of intelligence.",
    "When I was younger I was trying to do what I wanted to do, not what the game wanted me to do.",
    "It was tough at the time but when I was younger, my Dad. I would say my Dad, because without him I wouldn't have been here. I mean it was tough for me because he was really demanding. With him, it was never enough, you know, anything I did was never enough.",
    "You can fool all the people some of the time, and some of the people all the time, but you cannot fool all the people all the time.",
    "Time is a sort of river of passing events, and strong is its current; no sooner is a thing brought to sight than it is swept by and another takes its place, and this too will be swept away.",
    "All the world's a stage, and all the men and women merely players: they have their exits and their entrances; and one man in his time plays many parts, his acts being seven ages.",
    "I went to a restaurant that serves 'breakfast at any time'. So I ordered French Toast during the Renaissance.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(quotes[_index]),
            FlatButton.icon(
              label: Text(
                "Inspire Me",
              ),
              icon: Icon(
                Icons.wb_sunny,
              ),
              onPressed: _showQuote,
            )
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    //increment the counter by one
    setState(() {
      
      _index+=1;  
    });
  }
}
