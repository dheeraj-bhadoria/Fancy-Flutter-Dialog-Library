# fancy_flutter_dialog

A new Flutter project.

## Use this package as a library

![image description](https://github.com/dheeraj-bhadoria/Fancy-Flutter-Dialog-Library/blob/main/fancydialog.png)

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :-----: |
|   ✔️    | ✔️  |  ✔️   | ✔️  |  ✔️   |   ✔️    |



## Run this command:

With Flutter:

```yaml
    $ flutter pub add fancy_flutter_dialog
```

## This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```yaml
    dependencies:
    fancy_flutter_dialog: ^1.0.0
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.
Import it

Now in your Dart code, you can use:

```dart
    import 'package:fancy_flutter_dialog/fancy_flutter_dialog.dart';
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
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Fancy Flutter Dialog'),
        );
      }
    }
    
    class MyHomePage extends StatefulWidget {
      const MyHomePage({super.key, required this.title});
    
      // This widget is the home page of your application. It is stateful, meaning
      // that it has a State object (defined below) that contains fields that affect
      // how it looks.
    
      // This class is the configuration for the state. It holds the values (in this
      // case the title) provided by the parent (in this case the App widget) and
      // used by the build method of the State. Fields in a Widget subclass are
      // always marked "final".
    
      final String title;
    
      @override
      State<MyHomePage> createState() => _MyHomePageState();
    }
    
    class _MyHomePageState extends State<MyHomePage> {
      int _counter = 0;
    
      void _incrementCounter() {
        setState(() {
          // This call to setState tells the Flutter framework that something has
          // changed in this State, which causes it to rerun the build method below
          // so that the display can reflect the updated values. If we changed
          // _counter without calling setState(), then the build method would not be
          // called again, and so nothing would appear to happen.
          _counter++;
        });
      }
    
      @override
      Widget build(BuildContext context) {
        // This method is rerun every time setState is called, for instance as done
        // by the _incrementCounter method above.
        //
        // The Flutter framework has been optimized to make rerunning build methods
        // fast, so that you can just rebuild anything that needs updating rather
        // than having to individually change instances of widgets.
        return Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: InkWell(
              child: Text("Show Dialog"),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return FancyAlertDialog(
                      title: "Rate us if you like the app",
                      backgroundColor: Color(0xFF303F9F),
                      message: "Do you really want to Exit ?",
                      negativeBtnText: "Cancel",
                      positiveBtnBackground: Color(0xFFFF4081),
                      positiveBtnText: "Rate",
                      negativeBtnBackground: Color(0xFFA9A7A8),
                      onPositiveClicked: () {
                        // Positive button clicked action
                        print("Rate");
                      },
                      onNegativeClicked: () {
                        // Negative button clicked action
                        print("Cancel");
                      },
                    );
                  },
                );
              },
            ),
          ),// This trailing comma makes auto-formatting nicer for build methods.
        );
      }
    }


```

## LICENSE
MIT License

Copyright (c) 2022 Dheeraj Singh Bhadoria

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



