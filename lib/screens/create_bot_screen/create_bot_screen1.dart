import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/botsta_switch_state.dart';
import 'package:botsta_app/screens/create_bot_screen/create_bot_screen2.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/widgets/botsta_switch.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CreateBotScreen extends StatelessWidget {
  final TextEditingController _botNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BotstaSwitch botstaSwitch;
    BotstaFormTextField botstaFormTextField;

    return Scaffold(
      body: Column(
        children: [
          FullscreenModalTitle(
            title: 'Create Bot',
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 20,
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  botstaFormTextField = BotstaFormTextField(
                    controller: _botNameController,
                    hintText: 'Bot name...',
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return false;
                      }
                      return true;
                    },
                    leading: Icon(
                      Icons.android,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  botstaSwitch = BotstaSwitch(
                    label1: 'Private',
                    label2: 'Public',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BotstaButton(
                    backgroundColor: context.theme().primaryColor,
                    child: Text(
                      'Create Bot',
                      style: context.textTheme().subtitle2,
                    ),
                    onTap: () async {
                      if (!botstaFormTextField.validate()) {
                        return;
                      }

                      var botName = _botNameController.text.trim();
                      var authBloc = getIt.get<AuthenticationBloc>();
                      var isPublic =
                          botstaSwitch.state == BotstaSwitchState.value2;
                      try {
                        var token =
                            await authBloc.registerBotAsync(botName, isPublic);
                        context.navigator().pop();
                        showCupertinoModalBottomSheet(
                            expand: true,
                            context: context,
                            builder: (context) {
                              return CreateBotScreen2(token);
                            });
                      } catch (Exception) {
                        return;
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
