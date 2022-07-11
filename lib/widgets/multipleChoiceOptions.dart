import 'package:flutter/material.dart';

class MultipleChoiceOptions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          heroTag: 'a',
          backgroundColor: Colors.teal,
          foregroundColor: const Color.fromARGB(224, 224, 224, 255),
          onPressed: (){},
          child: Text("A"),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          heroTag: 'b',
          backgroundColor: Colors.teal,
          foregroundColor: const Color.fromARGB(224, 224, 224, 255),
          onPressed: (){},
          child: Text("B"),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          heroTag: 'c',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: (){},
          child: Text("C"),
        ),
      ],
    );
  }
}
