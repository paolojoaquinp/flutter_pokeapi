

import 'package:flutter_pokeapi/features/pokemon_search/domain/entities/pokemon_response/pokemon_response.dart';

import '../either/either.dart';
import '../entities/pokemon/pokemon.dart';
import '../failures/http_request_failure.dart';

typedef GetPokemonsFuture = Future<Either<HttpRequestFailure, PokemonResponse>>;

typedef GetPokemonsByNameFuture = Future<Either<HttpRequestFailure, Pokemon>>;

abstract class PokemonRepository {
  GetPokemonsFuture getPokemons();
  GetPokemonsByNameFuture getPokemonsByName(String name);
}