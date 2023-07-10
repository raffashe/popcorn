import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../Model/movie_model.dart';

Future getMovies() async {
  final Response response = await http.get(Uri.parse(
      'https://drive.google.com/uc?id=1sX7grfu3QlB25bHthHV0jy6K4lNe0A2F&export=download%27'));

  if (response.statusCode == 200) {
    //var retorno = MovieProduct.fromJson(r);

    final result = (json.decode(response.body) as List)
        .map((e) => MovieProduct.fromMap(e))
        .toList();

    return result;
  }
}
