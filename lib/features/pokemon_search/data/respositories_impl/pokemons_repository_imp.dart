import 'package:flutter_pokeapi/features/pokemon_search/data/api/pokemons_api.dart';
import 'package:flutter_pokeapi/features/pokemon_search/domain/repositories/pokemon_repository.dart';

class PokemonsRepositoryImp implements PokemonRepository {
  final PokemonsApi _api;
  PokemonsRepositoryImp(this._api);
  
  @override
  GetPokemonsFuture getPokemons() {
    return _api.getPokemons();
  }
  
  @override
  GetPokemonsByNameFuture getPokemonsByName(String name) {
    return _api.getPokemonsByName(name);
  }
}