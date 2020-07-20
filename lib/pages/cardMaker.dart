import 'package:flutter/material.dart';

class CardMaker extends StatefulWidget {
  final Key key;
  final Function run, save, delete;
  CardMaker({this.key, this.run, this.save, this.delete}) : super(key: key);
  @override
  _CardMakerState createState() => _CardMakerState();
}

class _CardMakerState extends State<CardMaker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //random color
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: SelectableText('data'),
                  fit: FlexFit.loose,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: SelectableText('Console data will be displayed here;'),
                  fit: FlexFit.loose,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: FlatButton(
                      onPressed: widget.run, child: Icon(Icons.play_arrow)),
                  fit: FlexFit.loose,
                ),
                Flexible(
                  child: FlatButton(
                      onPressed: widget.save, child: Icon(Icons.save)),
                  fit: FlexFit.loose,
                ),
                Flexible(
                  child: FlatButton(
                      onPressed: widget.delete, child: Icon(Icons.delete)),
                  fit: FlexFit.loose,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
