import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../pokemon_search/domain/entities/pokemon/pokemon.dart';
import '../../../pokemon_search/domain/failures/http_request_failure.dart';

part 'pokemon_detail_state.freezed.dart';

@freezed
class PokemonDetailState with _$PokemonDetailState {
  const factory PokemonDetailState.initial() = _Initial;
  const factory PokemonDetailState.loading() = _Loading;
  const factory PokemonDetailState.loaded({
    required Pokemon pokemon,
  }) = _Loaded;
  const factory PokemonDetailState.failed(HttpRequestFailure failure) = _Failed;
}