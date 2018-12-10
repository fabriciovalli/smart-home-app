import 'package:flutter/material.dart';

class RoomScreen extends StatefulWidget {
  final String name;

  const RoomScreen({Key key, this.name = "Quarto"}) : super(key: key);

  @override
  _RoomScreenState createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  Widget _buildDeviceList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 20.0),
      child: ListView(
        children: <Widget>[
          _renderItem(Icons.lightbulb_outline, "Lâmpada Principal", "80%"),
          Divider(height: 20.0),
          _renderItem(Icons.lightbulb_outline, "Lâmpada Ventilador", "Off"),
          Divider(height: 20.0),
          _renderItem(Icons.ac_unit, "Ar Condicionado", "21˚"),
          Divider(height: 20.0),
          _renderItem(Icons.lightbulb_outline, "Lâmpada Principal", "80%"),
          Divider(height: 20.0),
          _renderItem(Icons.lightbulb_outline, "Lâmpada Ventilador", "Off"),
          Divider(height: 20.0),
          _renderItem(Icons.ac_unit, "Ar Condicionado", "21˚"),
          Divider(height: 20.0),
          _renderItem(Icons.lightbulb_outline, "Lâmpada Principal", "80%"),
          Divider(height: 20.0),
          _renderItem(Icons.lightbulb_outline, "Lâmpada Ventilador", "Off"),
          Divider(height: 20.0),
          _renderItem(Icons.ac_unit, "Ar Condicionado", "21˚"),
          Divider(height: 20.0),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 150.0,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                color: Colors.teal[600],
                child: Text(
                  "Dispositivos".toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              FlatButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                color: Colors.black,
                child: Text(
                  "Ambientes".toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _renderItem(IconData icon, String name, String trailing) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 22.0),
      leading: Icon(icon),
      title: Text(name),
      trailing: Text(trailing),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.name),
        automaticallyImplyLeading: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _buildDeviceList(context),
          _buildFooter(context),
        ],
      ),
    );
  }
}
