import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/botsta_switch_state.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/widgets/botsta_switch.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class CreateBotScreen2 extends StatelessWidget {
  CreateBotScreen2(this.token);

  String token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FullscreenModalTitle(
            title: 'Bot ApiKey',
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 20,
              ),
              child: Text(
                token,
                style: context.textTheme().headline3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
