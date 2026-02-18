import 'package:button_kit/common_import.dart';

class PressEffect extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const PressEffect({super.key, required this.child, this.onTap});

  @override
  State<PressEffect> createState() => _PressEffectState();
}

class _PressEffectState extends State<PressEffect> {
  double scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() => scale = 0.95);
  }

  void _onTapUp(TapUpDetails details) {
    setState(() => scale = 1.0);
  }

  void _onTapCancel() {
    setState(() => scale = 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 120),
        scale: scale,
        child: widget.child,
      ),
    );
  }
}