import 'package:flutter/material.dart';

class Sector extends StatelessWidget {
  final Widget title;
  final List<Widget> children;

  const Sector({Key key, this.title, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = <Widget>[
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
          child: title),
    ];
    items.addAll(children);

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: items,
    );
  }
}
