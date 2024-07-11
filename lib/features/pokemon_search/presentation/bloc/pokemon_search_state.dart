import 'package:flutter_pokeapi/features/pokemon_search/domain/entities/pokemon_response/pokemon_response.dart';
import 'package:flutter_pokeapi/features/pokemon_search/domain/failures/http_request_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_search_state.freezed.dart';

@freezed
class PokemonSearchState with _$PokemonSearchState {
  const factory PokemonSearchState.initial() = _Initial;
  const factory PokemonSearchState.loading() = _Loading;
  const factory PokemonSearchState.loaded({
    required PokemonResponse pokemons,
  }) = _Loaded;
  // state for loaded just one pokemon
  const factory PokemonSearchState.failed(HttpRequestFailure failure) = _Failed;
}