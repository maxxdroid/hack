import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailsScreeen extends StatefulWidget {
  const DetailsScreeen({super.key});

  @override
  State<DetailsScreeen> createState() => _DetailsScreeenState();
}

class _DetailsScreeenState extends State<DetailsScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: ModelViewer(src: 'assets/models3d/bat.glb'),
            )
          ],
        ),
      ),
    );
  }
}