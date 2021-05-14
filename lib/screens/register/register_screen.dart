import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class RegisterScreen extends StatelessWidget {
  final _userNameInputController = TextEditingController();
  final _password1InputController = TextEditingController();
  final _password2InputController = TextEditingController();
  final _userNameKey = GlobalKey<FormState>();
  final _password1Key = GlobalKey<FormState>();
  final _password2Key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      FullscreenModalTitle(title: 'Register'),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 40),
              Form(
                key: _userNameKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: BotstaTextField(
                  hintText: 'Username',
                  controller: _userNameInputController,
                  leading: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 30),
              Form(
                key: _password2Key,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: BotstaTextField(
                  hintText: 'Password',
                  controller: _password1InputController,
                  leading: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 30),
              Form(
                key: _password1Key,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: BotstaTextField(
                  hintText: 'Confirm password',
                  controller: _password2InputController,
                  leading: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 30),
              BotstaButton(
                onTap: () {},
                child: Text(
                  'Register',
                  style: context.textTheme().subtitle2,
                ),
              ),
            ],
          )),
    ]));
  }
}
