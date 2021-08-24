import 'package:api_calling/core/notifier/api.notifier.dart';
import 'package:api_calling/core/repository/model/movie.model.dart';
import 'package:api_calling/meta/Movie/widget/movie.info.dart';
import 'package:api_calling/meta/Movie/widget/vote.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class MoviePage extends HookConsumerWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultData = ref.watch(getApiProvider);
    return Scaffold(
      backgroundColor: Vx.white,
      appBar: AppBar(
        title: 'Movie'.text.make(),
      ),
      body: resultData.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final Result iteams = data[index];
              return VxBox(
                child: VStack(
                  [
                    HStack([
                      Vote(
                        votes: iteams.voting,
                      ),
                      Image.network(
                        iteams.poster.toString(),
                        height: 100,
                      ),
                      15.widthBox,
                      MovieInfo(
                        title: iteams.title.toString(),
                        genre: iteams.genre.toString(),
                        director: iteams.director.toString(),
                        starring: iteams.stars.toString(),
                        language: iteams.language.toString(),
                        realisedata: iteams.releasedDate.toString(),
                      )
                    ]),
                    InkWell(
                        onTap: () {},
                        child: VxBox(
                                child:
                                    'Watch Trailor'.text.white.makeCentered())
                            .height(35)
                            .width(300)
                            .blue400
                            .roundedSM
                            .makeCentered())
                  ],
                  crossAlignment: CrossAxisAlignment.start,
                  axisSize: MainAxisSize.max,
                ).px1(),
              ).make().py1();
            },
          );
        },
        loading: () => CircularProgressIndicator().centered(),
        error: (error, stackTrace) {
          return error.toString().text.makeCentered();
        },
      ),
    );
  }
}
