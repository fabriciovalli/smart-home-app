import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:lightoff/config/application.dart';
import 'package:lightoff/config/routes.dart';

class LightOffApp extends StatefulWidget {
  @override
  _LightOffAppState createState() => _LightOffAppState();
}

class _LightOffAppState extends State<LightOffApp> {
  _LightOffAppState() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
    );
  }
}
