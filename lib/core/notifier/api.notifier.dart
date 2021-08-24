import 'package:api_calling/core/repository/api/api_post.dart';
import 'package:api_calling/core/repository/model/movie.model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//global
final getApiProvider = FutureProvider<List<Result>>((ref) async {
  return ref.watch(apiProvider).getMovie();
});
