import 'package:botsta_app/config/themes/themes.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/screens/register/register_screen.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/widgets/botsta_text_field.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LoginScreen extends StatelessWidget {
  final _userNameInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _serverUrlInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BotstaFormTextField? serverUrlField;
    BotstaFormTextField usernameField;
    BotstaFormTextField passwordField;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: [
                Center(
                  child: Text(
                    'Login',
                    style: context.textTheme().headline1,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FutureBuilder(
                  future: getIt.get<SecureStorageService>().serverUrl,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return serverUrlField = BotstaFormTextField(
                        defaultValue: snapshot.data.toString(),
                        validateOnChange: true,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return false;
                          }
                          return true;
                        },
                        hintText: 'Server Url',
                        controller: _serverUrlInputController,
                        leading: Icon(Icons.computer),
                      );
                    }

                    return serverUrlField = BotstaFormTextField(
                      validateOnChange: true,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return false;
                        }
                        return true;
                      },
                      hintText: 'Server Url',
                      controller: _serverUrlInputController,
                      leading: Icon(Icons.computer),
                    );
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                usernameField = BotstaFormTextField(
                  validateOnChange: true,
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
                SizedBox(
                  height: 30,
                ),
                passwordField = BotstaFormTextField(
                  validateOnChange: true,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return false;
                    }
                    return true;
                  },
                  hintText: 'Password',
                  obsecureText: true,
                  controller: _passwordInputController,
                  leading: Icon(Icons.lock),
                ),
                SizedBox(
                  height: 30,
                ),
                BotstaButton(
                  child: Text(
                    'Login',
                    style: context.textTheme().subtitle2,
                  ),
                  onTap: () async {
                    if (!serverUrlField!.validate() |
                        !usernameField.validate() |
                        !passwordField.validate()) {
                      return;
                    }

                    var username = _userNameInputController.text;
                    var password = _passwordInputController.text;
                    var serverUrl =
                        _serverUrlInputController.text.trim().toLowerCase();

                    var secureStorage = getIt.get<SecureStorageService>();
                    await secureStorage.setServerUrl(serverUrl);
                    await secureStorage.setServerUrlWebsocket(
                        serverUrl.replaceFirst(RegExp(r'http(s?)'), 'ws'));
                    await getIt
                        .get<SecureStorageService>()
                        .setServerUrl(serverUrl);

                    var successful = await context
                        .read<AuthenticationBloc>()
                        .loginAsync(username, password);
                    _passwordInputController.clear();
                    if (successful) {
                      _userNameInputController.clear();
                    } else {
                      passwordField.validate();
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Don't have an account yet?",
                  style: context.textTheme().headline3,
                ),
                SizedBox(
                  height: 30,
                ),
                BlocBuilder<ThemeBloc, ThemeState>(
                  builder: (context, state) {
                    return BotstaButton(
                      backgroundColor: state.appTheme == AppTheme.Light
                          ? context.theme().primaryColor
                          : context.theme().highlightColor,
                      onTap: () {
                        showCupertinoModalBottomSheet(
                            expand: true,
                            context: context,
                            builder: (context) {
                              return RegisterScreen();
                            });
                      },
                      child: Text(
                        'Register',
                        style: context.textTheme().subtitle2,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
