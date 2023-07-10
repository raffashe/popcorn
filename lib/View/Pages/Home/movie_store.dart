/* import 'package:flutter/material.dart';
import 'package:pix_test_1/data/Model/movie_model.dart';
import 'package:pix_test_1/data/http/exceptions.dart';
import 'package:pix_test_1/data/repositories/movies_repository.dart';

class MovieStore {
   getMovies() repository;

  // Variavel relativa para o loading
  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  // Variavel relativa para o state
  final ValueNotifier<List<MovieProduct>> state =
      ValueNotifier<List<MovieProduct>>([]);
  // Variavel relativa para o erro
  final ValueNotifier<String> erro = ValueNotifier('');

  MovieStore({required this.repository});

  Future getMovies() async {
    isLoading.value = true;

    try {
      final result = await repository.getMovies();
      state.value = result;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }
}
 */