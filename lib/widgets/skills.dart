import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_vivek/extras/onhover.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'SKILLS 🤗',
          style: TextStyle(
              fontSize: screenSize.width < 500 ? 10 : 16,
              color: const Color(0xFF0BDA74),
              letterSpacing: 2),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            SkillIcon(
              label: 'Android Studio',
              assetAddress: 'assets/android-studio.svg',
            ),
            SkillIcon(
              label: 'Flutter',
              assetAddress: 'assets/flutter.svg',
            ),
            SkillIcon(
              label: 'Git',
              assetAddress: 'assets/git.svg',
            ),
            SkillIcon(
              label: 'Blender',
              assetAddress: 'assets/blender-3d.svg',
            ),
          ],
        ),
      ],
    );
  }
}

class SkillIcon extends StatefulWidget {
  final String assetAddress;
  final String label;

  const SkillIcon({
    Key? key,
    required this.assetAddress,
    required this.label,
  }) : super(key: key);

  @override
  State<SkillIcon> createState() => _SkillIconState();
}

class _SkillIconState extends State<SkillIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        HoverWidget(
          child: MouseRegion(
            onEnter: (_) => setState(() => isHovered = true),
            onExit: (_) => setState(() => isHovered = false),
            child: Column(
              children: <Widget>[
                SizedBox(
                    height: screenSize.width < 500 ? 25 : 50,
                    width: screenSize.width < 500 ? 25 : 50,
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        isHovered ? const Color(0xFF0BDA74) : Colors.white,
                        BlendMode.srcIn,
                      ),
                      child: SvgPicture.asset(
                        widget.assetAddress,
                        fit: BoxFit.contain,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
