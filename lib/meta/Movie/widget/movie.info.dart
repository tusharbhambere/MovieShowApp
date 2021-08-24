import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieInfo extends StatelessWidget {
  final String title;
  final String genre;
  final String director;
  final String starring;

  final String language;
  final String realisedata;
  const MovieInfo(
      {Key? key,
      required this.title,
      required this.genre,
      required this.director,
      required this.starring,
      required this.language,
      required this.realisedata})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: VStack([
          title.text.bold.xl.make(),
          5.heightBox,
          Text('Genre:$genre').py1(),
          Text('director:$director').py1(),
          Text(
            'starring:$starring',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).py1(),
          Row(
            children: [
              "mins".text.sm.make().px1(),
              Container(
                color: Vx.black,
                height: 10,
                width: 1,
              ).px1(),
              language.text.sm.make().px1(),
            ],
          )
        ]),
      ),
    );
  }
}
