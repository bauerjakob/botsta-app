import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/logic/blocs/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: CircularProgressIndicator(),
      ),
    ));
  }
}
