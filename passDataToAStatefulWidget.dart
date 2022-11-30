floatingActionButton: FloatingActionButton(
        onPressed: () {
          
            // navigate to RandomizerPage (stateful)
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomizerPage(
                  minimum: _minimum,
                  maximum: _maximum,
                ),
              ),
            );
          
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.arrow_forward),
      ),


//------------------------------------------------------------------------------------

import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  final int minimum;
  final int maximum;

  const RandomizerPage({
    super.key,
    required this.minimum,
    required this.maximum,
  });

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  @override
  Widget build(BuildContext context) {
    int min = widget.minimum;
    int max = widget.maximum;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomizer page"),
      ),
      body: Text("$min"),
    );
  }
}
