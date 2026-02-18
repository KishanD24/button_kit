import 'common_import.dart';

class ButtonKit extends StatelessWidget {
  final ButtonType type;
  final String title;
  final Widget? prefixIcon;
  final VoidCallback onTap;

  final double? textSize;
  final double? radius;
  final double? height;
  // Colors for rounded/outlined/text
  final Color? color;
  final Color? textColor;
  final Color? borderColor;

  // Gradient for gradient button
  final List<Color>? gradientColors;

  const ButtonKit({
    super.key,
    required this.type,
    required this.title,
    required this.onTap,
    this.prefixIcon,
    this.textSize,
    this.color,
    this.textColor,
    this.borderColor,
    this.gradientColors,
    this.height,
    this.radius
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {

      case ButtonType.rounded:
        return RoundedButton(
          title: title,
          prefixIcon: prefixIcon,
          color: color ?? Colors.blue,
          textColor: textColor ?? Colors.white,
          textSize:textSize,
          onTap: onTap,
          radius: radius ?? 12,
          height: height ?? 48,
        );

      case ButtonType.outlined:
        return OutlinedBtn(
          title: title,
          prefixIcon: prefixIcon,
          borderColor: borderColor ?? Colors.blue,
          textColor: textColor ?? Colors.blue,
          onTap: onTap,
          textSize:textSize,
          radius: radius ?? 12,
          height: height ?? 48,
        );

      case ButtonType.gradient:
        return GradientButton(
          title: title,
          textSize:textSize,
          prefixIcon: prefixIcon,
          gradientColors: gradientColors ?? [Colors.blue, Colors.purple],
          onTap: onTap,
          radius: radius ?? 12,
          height: height ?? 48,
        );

      case ButtonType.text:
        return SimpleTextButton(
          title: title,
          textSize:textSize,
          prefixIcon: prefixIcon,
          textColor: textColor ?? Colors.blue,
          onTap: onTap,
        );
    }
  }
}
