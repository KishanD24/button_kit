import 'common_import.dart';

enum ButtonType {
  rounded,
  outlined,
  gradient,
  text,
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Button KIT Demo',
      home: ButtonDemo(),
    );
  }
}
