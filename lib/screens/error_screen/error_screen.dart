import 'package:botsta_app/config/routes/routes.dart';
import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

import '../../startup.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 15,
          right: 15,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Text(
              "Upps, an error occured.",
              style: context.textTheme().headline2,
            ),
            SizedBox(height: 20),
            BotstaButton(
              child: Text(
                "Retry",
                style: context.textTheme().subtitle2,
              ),
              onTap: () {
                var authBloc = getIt.get<AuthenticationBloc>();
                authBloc.add(InitialAuthenticationEvent());
                RoutesConfig.ROUTER.navigateTo(
                  context,
                  Routes.LOADING,
                  clearStack: true,
                );
              },
            ),
            SizedBox(height: 20),
            BotstaButton(
              child: Text(
                "Logout",
                style: context.textTheme().subtitle2,
              ),
              onTap: () {
                getIt
                    .get<AuthenticationBloc>()
                    .add(AuthenticationEventUnauthenticated());
              },
              backgroundColor: context.theme().primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
