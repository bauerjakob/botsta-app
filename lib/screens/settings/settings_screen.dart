import 'package:botsta_app/config/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate('SETTINGS.title')!),
      ),
      body: Container(
        child: ListView(
          children: [
            Text('Theme'),
            CupertinoSegmentedControl(
              
              children: {AppTheme.Light: Text('Light'), AppTheme.Dark: Text('Dark')},
              onValueChanged: (obj) {
                print(obj);
              },
              groupValue: AppTheme.Light,
            )
          ],
        ),
      ),
    );
  }
}
