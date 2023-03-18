import 'package:flutter/material.dart';

class ScrollUpIndicator extends StatefulWidget {
  final ScrollController scrollController;

  const ScrollUpIndicator(this.scrollController, {super.key});

  @override
  State<ScrollUpIndicator> createState() => _ScrollUpIndicatorState();
}

class _ScrollUpIndicatorState extends State<ScrollUpIndicator> {
  late bool _visible = false;

  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(() {
      final offset = widget.scrollController.offset;

      if (offset > 360.0) {
        if (!_visible) setState(() => _visible = true);
      } else if (offset <= 360.0) {
        if (_visible) setState(() => _visible = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: kThemeAnimationDuration,
      child: _visible
          ? Container(
              width: double.maxFinite,
              height: 56.0,
              alignment: Alignment.centerLeft,
              color: Colors.green,
              child: GestureDetector(
                onTap: () {
                  widget.scrollController.animateTo(
                    0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: _buildScrollUpTrigger(),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: _buildFlutterIndicator(),
                    ),
                  ],
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buildScrollUpTrigger() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        SizedBox(width: 24.0),
        Icon(
          Icons.arrow_upward_rounded,
          color: Colors.white,
          size: 20.0,
        ),
        SizedBox(width: 16.0),
        Text(
          'AppConstants',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 2.5,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 24.0),
      ],
    );
  }

  Widget _buildFlutterIndicator() {
    return GestureDetector(
      onTap: () {
        // launchUrl(AppConstants.openSourceRepoURL);
      },
      behavior: HitTestBehavior.translucent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(width: 24.0),
          Text(
            'BUILT\nWITH',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 4.0),
          FlutterLogo(size: 36.0),
          SizedBox(width: 24.0),
        ],
      ),
    );
  }
}
