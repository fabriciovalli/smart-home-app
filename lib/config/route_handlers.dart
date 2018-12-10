import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:lightoff/screen/create_room.dart';
import 'package:lightoff/screen/home.dart';
import 'package:lightoff/screen/room.dart';
import 'package:lightoff/screen/setup.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomeScreen();
});

var getStartedHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SetupScreen();
});

var createRoomHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return CreateRoomScreen();
});

var roomsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return RoomScreen();
});
