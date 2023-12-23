import 'package:flutter/material.dart';

import '../../../utils/HexColor.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool showText;

  CustomSwitch(
      {Key? key,
      required this.value,
      required this.onChanged,
      this.showText = false})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: 38.0,
            height: 22.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31.0),
              color: widget.value == false
                  ? HexColor('#DDDDDD')
                  : HexColor('#FFD600'),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 2.0, bottom: 2.0, right: 2.0, left: 2.0),
              child: Container(
                alignment:
                    widget.value ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 16.0,
                  height: 16.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: HexColor('#ffffff')),
                  child: widget.showText == true
                      ? Text(
                          widget.value == true ? 'on' : 'off',
                          style: TextStyle(
                            color: widget.value == true
                                ? HexColor('#AAAFB3')
                                : HexColor('#CFD3D6'),
                            fontFamily: 'Pretendard400',
                            fontSize: 12.0,
                          ),
                        )
                      : Container(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
