import 'package:button_kit/common_import.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final List<Color> gradientColors;
  final double height;
  final double radius;
  final Color textColor;
  final VoidCallback onTap;
  final Widget? prefixIcon;
  final double? textSize;
  const GradientButton({
    super.key,
    required this.title,
    required this.onTap,
    this.gradientColors = const [Colors.blue, Colors.purple],
    this.height = 48,
    this.radius = 30,
    this.textColor = Colors.white,
    this.prefixIcon,
    this.textSize
  });

  @override
  Widget build(BuildContext context) {
    return PressEffect(
      onTap: onTap,
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: gradientColors),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon!,
              const SizedBox(width: 8),
            ],
            Flexible(
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize??16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}