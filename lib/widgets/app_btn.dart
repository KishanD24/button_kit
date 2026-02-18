import 'package:button_kit/common_import.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final double radius;
  final VoidCallback onTap;
  final double height;
  final double? textSize;
  final Widget? prefixIcon; // asset or Icon()

  const RoundedButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.radius = 30,
    this.height = 48,
    this.prefixIcon, this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return PressEffect(
      onTap: onTap,
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: color,
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