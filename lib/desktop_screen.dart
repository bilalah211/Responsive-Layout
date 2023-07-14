import 'package:flutter/material.dart';
import 'package:responsivepractice/constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D E S K T O P'),
        centerTitle: true,
      ),
      backgroundColor: myDefaultColor,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 8,
                  child: Expanded(
                    flex: 4,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 8),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration:
                                  const BoxDecoration(color: Colors.blue),
                            ),
                          );
                        }),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.greenAccent,
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
