import 'package:botsta_app/config/lang/bloc/localization_bloc.dart';
import 'package:botsta_app/config/themes/themes.dart';
import 'package:botsta_app/constants/app_constants.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/models/botsta_switch_state.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/widgets/botsta_switch.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
           Text(
            'Current User',
            style: context.textTheme().headline2,
          ),
          SizedBox(
            height: 10,
          ),
          Text((getIt.get<AuthenticationBloc>().state as AuthenticationStateAuthenticated).user.name),
          SizedBox(
            height: 20,
          ),
          Text(
            'Connected To',
            style: context.textTheme().headline2,
          ),
          SizedBox(
            height: 10,
          ),
          FutureBuilder(
            future: getIt.get<SecureStorageService>().serverUrl,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Text(
                  snapshot.data.toString(),
                  //style: context.textTheme().headline2,
                );
              }
              return Text('');
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
            context.translate('SETTINGS.theme.title'),
            style: context.textTheme().headline2,
          ),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return BotstaSwitch(
                label1: context.translate('SETTINGS.theme.light'),
                label2: context.translate('SETTINGS.theme.dark'),
                state: state.appTheme == AppTheme.Light
                    ? BotstaSwitchState.value1
                    : BotstaSwitchState.value2,
                onChanged: (state) {
                  var theme = state == BotstaSwitchState.value1
                      ? AppTheme.Light
                      : AppTheme.Dark;
                  context
                      .read<ThemeBloc>()
                      .add(new ThemeEventUpdate(theme: theme));
                },
              );
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
            context.translate('SETTINGS.localization.title'),
            style: context.textTheme().headline2,
          ),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<LocalizationBloc, LocalizationState>(
            builder: (context, state) {
              return BotstaSwitch(
                label1: context.translate('SETTINGS.localization.english'),
                label2: context.translate('SETTINGS.localization.german'),
                state: state.locale.languageCode == AppConstants.LANGCODE_EN
                    ? BotstaSwitchState.value1
                    : BotstaSwitchState.value2,
                onChanged: (state) {
                  String localization;
                  if (state == BotstaSwitchState.value1) {
                    localization = AppConstants.LANGCODE_EN;
                  } else {
                    localization = AppConstants.LANGCODE_DE;
                  }

                  context
                      .read<LocalizationBloc>()
                      .add(new UpdateLocalizationEvent(Locale(localization)));
                },
              );
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
            context.translate('SETTINGS.developer.title'),
            style: context.textTheme().headline2,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            context.translate('SETTINGS.developer.name'),
            style: context.textTheme().headline3,
          ),
          SizedBox(
            height: 20,
          ),
          BotstaButton(
            child: Text(context.translate('SETTINGS.developer.website_button'),
                style: context.textTheme().subtitle2),
            onTap: () async {
              await launch(context.translate('SETTINGS.developer.website_url'));
            },
          ),
          SizedBox(
            height: 20,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return BotstaButton(
                child: Text(context.translate('SETTINGS.logout'),
                    style: context.textTheme().subtitle2),
                backgroundColor: state.appTheme == AppTheme.Light
                    ? context.theme().primaryColor
                    : context.theme().highlightColor,
                onTap: () {
                  context.read<AuthenticationBloc>().add(AuthenticationEventUnauthenticated());
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
