import 'package:flutter/material.dart';
import 'package:lightoff/config/application.dart';

class SetupScreen extends StatefulWidget {
  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  double LOGO_HEIGHT;
  double INSTRUCTIONS_HEIGHT;

  Widget _buildTopLogo() {
    return Container(
      height: LOGO_HEIGHT,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            Icons.power_settings_new,
            size: MediaQuery.of(context).size.height * .1,
          ),
          Column(
            children: <Widget>[
              Text(
                "LightOff",
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                "Smart Home",
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInstructions(BuildContext context) {
    return Container(
      height: INSTRUCTIONS_HEIGHT,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "Como configurar?",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          _createStep(1, "Escolha o ambiente"),
          _createStep(2,
              "Ative a funcionalidade de PAREAR dos dispositivos que deseja conectar ao ambiente"),
          _createStep(3, "Veja a facilidade de um ambiente conectado!"),
        ],
      ),
    );
  }

  Widget _createStep(int stepNumber, String text) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 4,
            child: Text(
              "Passo " + stepNumber.toString() + ":",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Flexible(
            flex: 15,
            child: Text(
              text,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFotterButton(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 80.0,
          decoration: BoxDecoration(color: Colors.black87),
          child: FlatButton(
            onPressed: () {
              Application.router.navigateTo(context, "/newRoom");
            },
            child: Text(
              "Começar Agora!",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    LOGO_HEIGHT = MediaQuery.of(context).size.height * .3;
    INSTRUCTIONS_HEIGHT = MediaQuery.of(context).size.height * .5;
    return Material(
      child: SafeArea(
        top: true,
        bottom: false,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  _buildTopLogo(),
                  Divider(
                    height: 20.0,
                    color: Colors.black,
                  ),
                  _buildInstructions(context),
                ],
              ),
            ),
            _buildFotterButton(context),
          ],
        ),
      ),
    );
  }
}
