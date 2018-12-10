import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:lightoff/config/route_handlers.dart';

class Routes {
  static String root = "/";
  static String login = "/login";
  static String newRoom = "/newRoom";
  static String rooms = "/rooms";
  static String getStarted = "/getStarted";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler);
    // router.define(root, handler: getStartedHandler);
    router.define(newRoom, handler: createRoomHandler);
    router.define(rooms, handler: roomsHandler);
    router.define(getStarted, handler: getStartedHandler);
  }
}
