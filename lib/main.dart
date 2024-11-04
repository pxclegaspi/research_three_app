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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<DisplayPage> createState() => _MyDisplayPageState();
}

class _MyDisplayPageState extends State<DisplayPage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = MyHomePage();
        break;
      //   break;
      case 1:
        page = Placeholder();
      //   break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
        //page = MyHomePage();
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          body: Row(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                        icon: Icon(Icons.video_camera_back),
                        label: Text('Lesson 1 Video'),
                    ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.one_k),
                    //   label: Text('Lesson 1 Practice Questions'),
                    // ),
                    // NavigationRailDestination(
                    //     icon: Icon(Icons.video_camera_back),
                    //     label: Text('Lesson 2 Video'),
                    // ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.two_k),
                    //   label: Text('Lesson 2 Practice Questions'),
                    // ),
                    // NavigationRailDestination(
                    //     icon: Icon(Icons.video_camera_back),
                    //     label: Text('Lesson 3 Video'),
                    // ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.three_k),
                    //   label: Text('Lesson 3 Practice Questions'),
                    // ),
                    // NavigationRailDestination(
                    //     icon: Icon(Icons.video_camera_back),
                    //     label: Text('Lesson 4 Video'),
                    // ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.four_k),
                    //   label: Text('Lesson 4 Practice Questions'),
                    // ),
                    // NavigationRailDestination(
                    //     icon: Icon(Icons.video_camera_back),
                    //     label: Text('Lesson 5 Video'),
                    // ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.five_k),
                    //   label: Text('Lesson 5 Practice Questions'),
                    // ),
                    // NavigationRailDestination(
                    //     icon: Icon(Icons.video_camera_back),
                    //     label: Text('Lesson 6 Video'),
                    // ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.six_k),
                    //   label: Text('Lesson 6 Practice Questions'),
                    // ),
                    // NavigationRailDestination(
                    //     icon: Icon(Icons.video_camera_back),
                    //     label: Text('Lesson 7 Video'),
                    // ),
                    // NavigationRailDestination(
                    //   icon: Icon(Icons.seven_k),
                    //   label: Text('Lesson 7 Practice Questions'),
                    // ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ), 
              )
            ]
          ),
        );
      }
    );
  }
}

class MyHomePage extends StatelessWidget {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    void _incrementCounter() {
      //setState(() {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
        _counter++;
      //});
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextButton(
                onPressed: _incrementCounter, 
                child: 
                const Text("Button here")
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      }
    );
  }
}