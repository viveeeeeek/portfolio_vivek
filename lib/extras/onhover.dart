import 'package:flutter/material.dart';

class HoverWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const HoverWidget({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  State<HoverWidget> createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  double scale = 1.0;

  void _mouseEnter(bool hover) {
    setState(() {
      if (hover) {
        // scale = widget.scale / 2; //! This makes scale smaller by 2
        scale =
            0.9; //! where as this makes it 0.9 of original size. It is better way
      } else {
        scale = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _mouseEnter(true);
      }),
      onExit: (_) => setState(() {
        _mouseEnter(false);
      }),
      child: TweenAnimationBuilder(
        curve: Curves.easeInOutCubicEmphasized,
        duration: const Duration(milliseconds: 222),
        tween: Tween<double>(begin: 1.0, end: scale),
        builder: (BuildContext context, double value, _) {
          return Transform.scale(scale: value, child: widget.child);
        },
      ),
    );
  }
}
