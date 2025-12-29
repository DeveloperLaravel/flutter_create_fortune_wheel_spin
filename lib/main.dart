import 'package:flutter/material.dart';
import 'injection.dart';
import 'wheel/ui/wheel_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 2️⃣ تهيئة جميع Dependencies
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fortune Wheel Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: WheelPage(),
    );
  }
}

// class WheelPage extends StatefulWidget {
//   const WheelPage({super.key});

//   @override
//   State<WheelPage> createState() => _WheelPageState();
// }

// class _WheelPageState extends State<WheelPage> {
//   final items = ['Flutter', 'Dart', 'Bloc', 'Hive', 'Dio'];
//   final colors = [
//     Colors.red,
//     Colors.white,
//     Colors.green,
//     Colors.blue,
//     Colors.orange,
//   ];
//   final selected = StreamController<int>();

//   void spinWheel() {
//     final randomIndex = Random().nextInt(items.length);
//     selected.add(randomIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Fortune Wheel')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 300,
//             child: FortuneWheel(
//               selected: selected.stream,
//               items: [
//                 for (int i = 0; i < items.length; i++)
//                   FortuneItem(
//                     child: Text(items[i]),
//                     style: FortuneItemStyle(color: colors[i]),
//                   ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(onPressed: spinWheel, child: const Text('SPIN 🎡')),
//         ],
//       ),
//     );
//   }
// }
