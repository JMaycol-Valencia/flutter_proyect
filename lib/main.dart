import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola mundo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practica'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery. of(context). size. width,
              height: MediaQuery. of(context). size. height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/originals/1c/02/20/1c022001c80c4d0d2a13da2137ca56ff.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery. of(context). size. width,
                height: 100,
                color: Colors.black.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    'Hola Mundo',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
       ),//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



//relleno de flutter
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
