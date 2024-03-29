import 'package:flutter/material.dart';

circularProgress() {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(top: 12.0),
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
    ),
  );
}

linearProgress() {
  return Container(
    alignment: Alignment.bottomCenter,
    padding: EdgeInsets.all(2.0),
    child: LinearProgressIndicator(
      valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
    ),
  );
}
