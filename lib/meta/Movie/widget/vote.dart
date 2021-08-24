import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Vote extends StatelessWidget {
  final int votes;
  const Vote({Key? key, required this.votes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        IconButton(
          icon: Icon(Icons.upload_sharp),
          onPressed: () {
            print('down');
          },
        ),
        Text('$votes'),
        IconButton(
          icon: Icon(Icons.download_sharp),
          onPressed: () {
            print('down');
          },
        )
      ],
      crossAlignment: CrossAxisAlignment.center,
    );
  }
}
