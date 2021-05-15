import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class BotstaFormTextField extends StatefulWidget {
  BotstaFormTextField(
      {required this.controller,
      this.hintText,
      this.leading,
      this.obsecureText = false,
      this.validator,
      this.validateOnChange = true});

  final TextEditingController controller;
  final String? hintText;
  final Widget? leading;
  final bool obsecureText;
  final bool Function(String?)? validator;
  final bool validateOnChange;

  final _BotstaFormTextFieldState _state = _BotstaFormTextFieldState();

  bool validate() {
    if (validator != null) {
      var result = validator!(controller.text);
      _state.updateValidator(result);
      return result;
    } else {
      _state.updateValidator(true);
    }

    return true;
  }

  setValidationState(bool value) {
    _state.updateValidator(value);
  }

  @override
  _BotstaFormTextFieldState createState() => _state;
}

class _BotstaFormTextFieldState extends State<BotstaFormTextField>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _colorTweenAnimation;

  void updateValidator(bool value) {
    if (_animationController != null) {
      if (value) {
        _animationController!.reverse();
      } else {
        _animationController!.forward();
      }
    }
  }

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var tween = ColorTween(
        begin: context.theme().highlightColor, end: context.theme().errorColor);
    _colorTweenAnimation = tween.animate(_animationController!);

    return AnimatedBuilder(
      animation: _animationController!,
      builder: (builder, _) {
        return Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
          decoration: BoxDecoration(
              color: _colorTweenAnimation!.value,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              widget.leading != null
                  ? Container(
                      margin: EdgeInsets.only(right: 7), child: widget.leading!)
                  : SizedBox.shrink(),
              Expanded(
                child: TextField(
                  onChanged: widget.validateOnChange
                      ? (s) {
                          widget.validate();
                        }
                      : null,
                  controller: widget.controller,
                  obscureText: widget.obsecureText,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
