import 'package:flutter/material.dart';

import '../components/overlay/overlay.dart';

class ReadAssetScreen2 extends StatefulWidget {
  const ReadAssetScreen2({super.key});

  @override
  State<ReadAssetScreen2> createState() => _ReadAssetScreen2State();
}

class _ReadAssetScreen2State extends State<ReadAssetScreen2> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // instance = OverlayX(key: key);
    });
  }

  late OverlayX instance;

  GlobalKey key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // print(instance.size);
          },
          child: Card(
            child: SizedBox.square(
              key: key,
              dimension: 200,
            ),
          ),
        ),
      ),
    );
  }
}
