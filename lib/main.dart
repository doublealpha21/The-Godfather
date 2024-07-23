import 'package:flutter/material.dart';
import 'package:test_project/download_button.dart';
import 'package:test_project/vertical_space.dart';
import 'package:test_project/counter_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Counter Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 0;
  int _counter3 = 0;

  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        shadowColor: Colors.red,
        elevation: 3.0,
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[850],
                ),
                child: const Center(
                  child: Text(
                    'Counter App ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              title: Text('Item 21'),
            ),
            const ListTile(
              title: Text('Item 23'),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          counterDisplay(),
          const VerticalSpace(),
          Container(
            color: Colors.greenAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'People Counted: $_counter2',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: _incrementCounter2,
                    icon: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpace(),
          Container(
            color: Colors.indigo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Drinks in Store: $_counter3',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: _incrementCounter3,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpace(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DownloadButtonExample(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              elevation: 3.0,
              foregroundColor: Colors.teal[400],
            ),
            child: const Text('Download Button'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterDisplay,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Container counterDisplay() {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Jobs Applied: $_counter',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: _incrementCounter1,
              icon: const Icon(
                Icons.add,
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
