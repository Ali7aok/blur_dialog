import 'package:flutter/material.dart';
import 'package:blur_dialog/blur_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Blur Dialog Example')),
        body: const Center(child: ExamplePage()),
      ),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            showBlurDialog(
              context: context,
              title: "Custom Blur Dialog",
              children: [
                const Text("This is a customizable blur dialog."),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"),
                ),
              ],
              // Customizations (optional)
              blurX: 6,
              blurY: 6,
              backgroundColor: Colors.white,
              backgroundOpacity: 0.9,
              borderColor: Colors.blueAccent,
              borderWidth: 2,
              borderRadius: BorderRadius.circular(16),
            );
          },
          child: const Text("Open Blur Dialog"),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            showBlurDialog(
              context: context,
              title: "Dialog without Close Button",
              showCloseButton: false,
              children: [
                const Text("Here the close button is hidden."),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close manually"),
                ),
              ],
            );
          },
          child: const Text("Open Dialog Without Close Button"),
        ),
      ],
    );
  }
}
