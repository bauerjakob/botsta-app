import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class AppBarActionButton extends StatelessWidget {
  final Icon icon;
  final Function onTap;

  const AppBarActionButton(this.icon, { required this.onTap });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme().accentColor,
      borderRadius: BorderRadius.circular(13),
      child: InkWell(
        borderRadius: BorderRadius.circular(13),
        child: icon,
        onTap: () => onTap(),
      ),
    );
  }
}
