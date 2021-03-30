import 'package:flutter/material.dart';
import 'package:flutter_animated_drawer/components/AppDrawer.dart';
import 'package:flutter_animated_drawer/pages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Flutter'),
      leading: Builder(
        builder: (BuildContext appBarContext) {
          return IconButton(
            onPressed: () {
              AppDrawer.of(appBarContext).toggle();
            },
            icon: Icon(Icons.menu),
          );
        },
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: AppDrawer(
        child: Home(
          appBar: appBar,
        ),
      ),
    );
  }
}
