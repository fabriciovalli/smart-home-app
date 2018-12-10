import 'package:flutter/material.dart';
import 'package:lightoff/config/application.dart';
import 'package:lightoff/widgets/sector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Sector(
            title: Text(
              "Ambientes",
              style: TextStyle(fontSize: 22.0),
            ),
            children: <Widget>[
              Container(
                height: 120.0,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return RoomItem(
                      icon: Icons.looks_one,
                      name: "Quarto",
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Expanded(
            child: Sector(
              title: Text(
                "Dispositivos",
                style: TextStyle(fontSize: 22.0),
              ),
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.only(
                            left: 16.0, right: 24.0, top: 4.0, bottom: 4.0),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(24.0),
                          leading: Icon(Icons.lightbulb_outline),
                          title: Text("Lâmpada"),
                          trailing: Icon(Icons.arrow_right),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LightOff"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
      ),
      body: Stack(
          fit: StackFit.expand, children: <Widget>[_buildContent(context)]),
    );
  }
}

class RoomItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final List<Color> colors;

  const RoomItem({Key key, this.name, this.icon, this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.teal[500],
      child: InkWell(
        onTap: () {
          Application.router.navigateTo(context, "/rooms");
        },
        child: Container(
          width: 120.0,
          height: 120.0,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
                size: 60.0,
              ),
              Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
