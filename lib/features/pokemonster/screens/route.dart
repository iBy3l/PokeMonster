import 'package:flutter/material.dart';
import 'package:pokemonster/common/repositories/pokemon_repository.dart';
import 'package:pokemonster/features/pokemonster/screens/home/container/home_container.dart';

class PokerMonterRoute extends StatelessWidget {
  const PokerMonterRoute({Key? key, required this.repository})
      : super(key: key);
  final PokemonRepository repository;

  @override
  Widget build(BuildContext context) {
    return Navigator(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          if (settings.name == '/') {
            return MaterialPageRoute(
              builder: (context) {
                return HommeContainer(repository: repository);
              },
            );
          }

          return MaterialPageRoute(
            builder: (context) {
              return HommeContainer(repository: repository);
            },
          );
        });
  }
}
