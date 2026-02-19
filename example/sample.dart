import 'package:button_kit/button_kit.dart';
import 'package:button_kit/common_import.dart';


class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonKit(
                title: "Rounded Button",
                onTap: () {},
                type: ButtonType.rounded,
                prefixIcon: Icon(Icons.star, color: Colors.white),
                radius: 24,
              ),

              const SizedBox(height: 20),

              ButtonKit(
                type: ButtonType.outlined,
                title: "Outlined Button",
                prefixIcon: Icon(Icons.star, color: Colors.green),
                onTap: () {},
                borderColor: Colors.green,
                textColor: Colors.green,
              ),

              const SizedBox(height: 20),

              ButtonKit(
                type: ButtonType.gradient,
                title: "Gradient Button",
                gradientColors: [Colors.red, Colors.orange],
                prefixIcon: Icon(Icons.favorite, color: Colors.white),
                onTap: () {},
              ),

              const SizedBox(height: 20),

              ButtonKit(
                type: ButtonType.text,
                title: "Text Button",
                // prefixIcon: Icon(Icons.info, color: Colors.blue),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
