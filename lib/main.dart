import 'package:flutter/material.dart';

import 'package:clone_spotify/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var activetab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: getbody(),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(navbar.length, (index) {
              return IconButton(
                onPressed: () {
                  setState(() {
                    activetab = index;
                  });
                },
                icon: Icon(
                  navbar[index],
                  color: activetab == index ? Colors.white : Colors.grey,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget getbody() {
    return IndexedStack(
      index: activetab,
      children: const [
        Homepage(),
        SearchPage(),
        LibrabryPage(),
        SettingPage(),
      ],
    );
  }

  Widget getFooter() {
    return Container(
      height: 80,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(navbar.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  activetab = index;
                });
              },
              icon: Icon(
                navbar[index],
                color: activetab == index ? Colors.white : Colors.grey,
              ),
            );
          }),
        ),
      ),
    );
  }
}



