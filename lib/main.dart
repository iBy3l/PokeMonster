import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemonster/common/repositories/pokemon_repository.dart';
import 'package:pokemonster/features/pokemonster/screens/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PokeMonster',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PokerMonterRoute(
        repository: PokemonRepository(
          dio: Dio(),
        ),
      ),

      /*HommeContainer(
        repository: PokemonRepository(
          dio: Dio(),
        ),
      ),*/
    );
  }
}
