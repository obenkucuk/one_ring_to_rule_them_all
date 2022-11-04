import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../components/dropdown/dropdown_button.dart';
import '../components/overlay/overlay.dart';
import '../theme/text_style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // instance = OverlayX(key: dimensionKey);
    });
  }

  late OverlayX instance;

  GlobalKey dimensionKey = GlobalKey();
  final jobRoleCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                //    print(instance.size);
                context.go("/b");
              },
              child: Card(
                child: SizedBox.square(
                  key: dimensionKey,
                  dimension: 200,
                ),
              ),
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyles(context).s8W300Dark(),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            MyDropdownWidget(
              itemsList: const ["1", "2", "3"],
              getSelectedValue: (p0) => print(p0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
