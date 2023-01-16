import 'package:app_example_value_notifier/controllers/counter_controller.dart';
// import 'package:app_example_value_notifier/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // HomeController homeController = HomeController();
  Counter counter = Counter();

  // int get _counter => homeController.counter;

  // @override
  // void initState() {
  //   super.initState();
  //   counter.addListener(() {
  //     setState(() {});
  //   });
  // }

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
            const Text(
              'You have pushed the button this many times:',
            ),
            // Quando devo usa-lo?
            // AnimatedBuilder para animações mais complexas e pesadas
            // AnimatedBuilder(
            //   animation: counter,
            //   builder: (context, child) {
            //     return Text(
            //       '${counter.value}',
            //       style: Theme.of(context).textTheme.headline4,
            //     );
            //   },
            // ),
            // ValueListenableBuilder o mais conhecido e mais usado
            ValueListenableBuilder<int>(
              valueListenable: counter,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
