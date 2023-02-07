import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Button Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Click the button below to display text'),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        content: Text('Text displayed upon button click'),
                      );
                    },
                  );
                },
                child: const Text('Display Text'),
              ),
              TextButton(onPressed:(){
                print("Text Button Tapped");
              },
                  onLongPress: (){
                print("Long Pressed");
                  },
                  child: const Text("Click here")),

              ElevatedButton(onPressed: (){
                print("Elevated Button clicked");
              }, child: Text("Elevated Button")),

              OutlinedButton(onPressed: (){
                print("Outlined Button Clicked");
              }, child: Text("Outlined Button")),
            ],
            
          ),
        ),
      ),
    );
  }
}
