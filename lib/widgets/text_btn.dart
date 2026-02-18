import 'package:button_kit/common_import.dart';

class SimpleTextButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final VoidCallback onTap;
  final Widget? prefixIcon;
  final double? textSize;

  const SimpleTextButton({
    super.key,
    required this.title,
    required this.onTap,
    this.textColor = Colors.blue,
    this.prefixIcon,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return PressEffect(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...[
            prefixIcon!,
            const SizedBox(width: 6),
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
    );
  }
}