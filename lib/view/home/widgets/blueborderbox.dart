import 'package:flutter/material.dart';

class BlueborderBox extends StatelessWidget {
  const BlueborderBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: const [
          Icon(
            Icons.square,
            color: Colors.blue,
            size: 11,
          ),
          Text(
            '''Sanush Selftaught 
Flutter ''',
            style:
                TextStyle(color: Color.fromARGB(255, 0, 64, 175), fontSize: 7),
          )
        ],
      ),
    );
  }
}
