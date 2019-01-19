/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'src/strings.dart';

////////////////////////////////////////////////////////////////////////////////

class ShareTab extends StatelessWidget {
  final String gameURL;

  ShareTab({Key key, this.gameURL}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    assert(this.gameURL != null);
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            QrImage(data: this.gameURL ?? "", size: 300.0),
            Text(
              Strings.of(context).scanThisWithAnotherDevice,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
