import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  final _userNameInputController = TextEditingController();
  final _password1InputController = TextEditingController();
  final _password2InputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BotstaFormTextField usernameField;
    BotstaFormTextField password1Field;
    BotstaFormTextField password2Field;
    return Scaffold(
        body: Column(children: [
      FullscreenModalTitle(title: 'Register'),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 40),
              usernameField = BotstaFormTextField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return false;
                  }
                  return true;
                },
                hintText: 'Username',
                controller: _userNameInputController,
                leading: Icon(Icons.person),
              ),
              SizedBox(height: 30),
              password1Field = BotstaFormTextField(
                obsecureText: true,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return false;
                  }
                  return true;
                },
                hintText: 'Password',
                controller: _password1InputController,
                leading: Icon(Icons.lock),
              ),
              SizedBox(height: 30),
              password2Field = BotstaFormTextField(
                obsecureText: true,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return false;
                  }
                  return true;
                },
                hintText: 'Confirm password',
                controller: _password2InputController,
                leading: Icon(Icons.lock),
              ),
              SizedBox(height: 30),
              BotstaButton(
                onTap: () async {
                  if (!usernameField.validate() |
                      !password1Field.validate() |
                      !password2Field.validate()) {
                    return;
                  }
                  var username = _userNameInputController.text.trim();
                  var password1 = _password1InputController.text;
                  var password2 = _password2InputController.text;

                  if (password1 != password2) {
                    password1Field.setValidationState(false);
                    password2Field.setValidationState(false);
                    return null;
                  }

                  var successful = await context
                      .read<AuthenticationBloc>()
                      .registerAsync(username, password1);
                  if (successful) {
                    _password1InputController.clear();
                    _password2InputController.clear();
                    _userNameInputController.clear();
                  } else {
                    password1Field.validate();
                    password2Field.validate();
                  }
                },
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
