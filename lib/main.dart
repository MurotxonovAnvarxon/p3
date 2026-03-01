import 'package:flutter/material.dart';

ValueNotifier<bool> isAuthP3 = ValueNotifier<bool>(false);

class MyAppP3 extends StatefulWidget {
  final Function(bool) isAuthGlobalP3;

  const MyAppP3({super.key, required this.isAuthGlobalP3});

  @override
  State<MyAppP3> createState() => _MyAppP3State();
}

class _MyAppP3State extends State<MyAppP3> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isAuthP3,

      builder: (BuildContext context, bool value, Widget? child) {
        widget.isAuthGlobalP3(value);

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            leading: GestureDetector(
              onTap: () {
                isAuthP3.value = false;
              },
              child: Icon(Icons.arrow_back_rounded),
            ),
            title: Text("P3"),
          ),
          body: Container(color: Colors.yellow),
        );
      },
    );
  }
}
