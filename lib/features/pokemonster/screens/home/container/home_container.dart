import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../../common/models/pokemon.dart';
import '../../../../../common/repositories/pokemon_repository.dart';
import '../pages/home_error.dart';
import '../pages/home_loading.dart';
import '../pages/home_page.dart';

class HommeContainer extends StatelessWidget {
  const HommeContainer({Key? key, required this.repository}) : super(key: key);

  final iPokemonRepository repository;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>?>(
        future: repository.getAllPokemons(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return HomeLoading();
          }
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return HomePage(list: snapshot.data!);
          }
          if (snapshot.hasError) {
            return HomeError(error: snapshot.error.toString());
          }

          return HommeContainer(repository: PokemonRepository(dio: Dio()));
        });
  }
}
