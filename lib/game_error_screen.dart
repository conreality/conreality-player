/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/material.dart';

import 'src/game.dart' show exitGame;
import 'src/strings.dart' show Strings;

////////////////////////////////////////////////////////////////////////////////

class GameErrorScreen extends StatelessWidget {
  GameErrorScreen({this.error});

  final dynamic error;

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).connecting),
        actions: <Widget>[
          FlatButton(
            child: Text(Strings.of(context).retry.toUpperCase()),
            onPressed: () {
              // TODO
            },
          ),
          FlatButton(
            child: Text(Strings.of(context).cancel.toUpperCase()),
            onPressed: () => exitGame(context),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.error, size: 192.0),
            Text(
              error.toString(),
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
