import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/widgets/botsta_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class LoginScreen extends StatelessWidget {
  final _userNameInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _userNameKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Login',
                style: context.textTheme().headline1,
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _userNameKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: BotstaTextField(
                  hintText: 'Username',
                  controller: _userNameInputController,
                  leading: Icon(
                    Icons.person
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _passwordKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: BotstaTextField(
                  hintText: 'Password',
                  obsecureText: true,
                  controller: _passwordInputController,
                  leading: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () async {
                  if (!_userNameKey.currentState!.validate() |
                      !_passwordKey.currentState!.validate()) {
                    return;
                  }

                  var username = _userNameInputController.text;
                  var password = _passwordInputController.text;

                  var successful = await context
                      .read<AuthenticationBloc>()
                      .loginAsync(username, password);
                  _passwordInputController.clear();
                  if (successful) {
                    _userNameInputController.clear();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
