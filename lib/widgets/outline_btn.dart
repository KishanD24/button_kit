import 'package:button_kit/common_import.dart';

class OutlinedBtn extends StatelessWidget {
  final String title;
  final Color borderColor;
  final Color textColor;
  final double radius;
  final VoidCallback onTap;
  final double height;
  final double? textSize;
  final Widget? prefixIcon;

  const OutlinedBtn({
    super.key,
    required this.title,
    required this.onTap,
    this.borderColor = Colors.blue,
    this.textColor = Colors.blue,
    this.radius = 25,
    this.height = 48,
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
          color: Colors.transparent,
          border: Border.all(color: borderColor, width: 2),
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