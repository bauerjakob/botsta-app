import 'package:botsta_app/models/botsta_switch_state.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class BotstaSwitch extends StatefulWidget {
  BotstaSwitch(
      {required this.label1,
      required this.label2,
      this.onChanged,
      this.state = BotstaSwitchState.value1});

  final String label1;
  final String label2;
  BotstaSwitchState state;
  final Function(BotstaSwitchState)? onChanged;

  @override
  _BotstaSwitchState createState() => _BotstaSwitchState();
}

class _BotstaSwitchState extends State<BotstaSwitch> {
  @override
  void initState() {
    super.initState();
  }

  updateSwitchState(BotstaSwitchState switchState) {
    setState(() {
      widget.state = switchState;
    });
    if (widget.onChanged != null) {
      widget.onChanged!(switchState);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null) {
          if (details.primaryVelocity! < 0) {
            updateSwitchState(BotstaSwitchState.value1);
          } else if (details.primaryVelocity! > 0) {
            updateSwitchState(BotstaSwitchState.value2);
          }
        }
      },
      child: Container(
        width: double.infinity,
        height: 50,
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: context.theme().highlightColor,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        updateSwitchState(BotstaSwitchState.value1);
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                        child: Text(widget.label1,
                            style: context.textTheme().subtitle1),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        updateSwitchState(BotstaSwitchState.value2);
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                        child: Text(
                          widget.label2,
                          style: context.textTheme().subtitle1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 1,
                child: AnimatedAlign(
                  alignment: widget.state == BotstaSwitchState.value1
                      ? Alignment.topLeft
                      : Alignment.topRight,
                  duration: Duration(milliseconds: 200),
                  child: FractionallySizedBox(
                    heightFactor: 1,
                    widthFactor: 0.5,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: context.theme().accentColor,
                      child: InkWell(
                        onTap: () {},
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 200),
                          child: Text(
                            widget.state == BotstaSwitchState.value1
                                ? widget.label1
                                : widget.label2,
                            style: context.textTheme().subtitle2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
