import 'package:pokemonster/common/models/pokemon.dart';

abstract class iPokemonRepository {
  Future<List<Pokemon>> getAllPokemons();
}

class PokemonRepository implements iPokemonRepository {
  @override
  Future<List<Pokemon>> getAllPokemons() {}
}
