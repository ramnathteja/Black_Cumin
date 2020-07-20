import 'package:Black_Cumin/pages/cardMaker.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> deck = new List<Widget>();
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  Key key = UniqueKey();
                  deck.add(new CardMaker(
                      key: key,
                      run: () {
                        setState(() {
                          print(key);
                        });
                      },
                      save: () {
                        setState(() {
                          print(key);
                        });
                      },
                      delete: () {
                        setState(() {
                          deck.removeWhere((card) => card.key == key);
                        });
                      }));
                });
              },
              label: Text('hit me')),
          Wrap(
            children: deck,
          ),
        ],
      ),
    );
  }
}
//we should maintain a list here !!!!
