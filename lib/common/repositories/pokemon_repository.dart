import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokemonster/common/consts/api_consts.dart';
import 'package:pokemonster/common/error/failure.dart';
import 'package:pokemonster/common/models/pokemon.dart';

abstract class iPokemonRepository {
  Future<List<Pokemon>?> getAllPokemons();
}

class PokemonRepository implements iPokemonRepository {
  final Dio dio;

  PokemonRepository({required this.dio});

  @override
  Future<List<Pokemon>?> getAllPokemons() async {
    final response = await dio.get(ApiConst.allPokemonsURL);
    try {
      final data = json.decode(response.data);

      final list = data["pokemon"];

      return list?.map((e) => Pokemon.fromMap(e)).toList();
    } catch (e) {
      throw Failure(message: 'Não foi possivel carregar os dados');
    }
  }
}
