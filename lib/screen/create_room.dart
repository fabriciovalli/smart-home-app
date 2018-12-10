import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
  @override
  _CreateRoomScreenState createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  Widget _buildBody(BuildContext context) {
    var items = <Widget>[
      _renderRoomItem("Quarto de casal"),
      _renderRoomItem("Sala"),
      _renderRoomItem("Banheiro"),
      _renderRoomItem("Cozinha"),
    ];
    items.add(_buildAddNewRoom());

    return ListView(
      children: items,
    );
  }

  Widget _renderRoomItem(String name) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 100.0,
          color: Colors.black26,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddNewRoom() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100.0,
        color: Colors.black26,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.add),
            SizedBox(width: 12.0),
            Text(
              "Adicionar Ambiente",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text("Ambientes"),
      ),
      body: _buildBody(context),
    );
  }
}
