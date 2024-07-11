


import 'package:bloc/bloc.dart';
import 'package:flutter_pokeapi/features/pokemon_detail/presenter/bloc/pokemon_detail_event.dart';
import 'package:flutter_pokeapi/features/pokemon_detail/presenter/bloc/pokemon_detail_state.dart';
import 'package:flutter_pokeapi/features/pokemon_search/domain/repositories/pokemon_repository.dart';

class PokemonDetailBloC extends Bloc<PokemonDetailEvent, PokemonDetailState> {
  final PokemonRepository pokemonRepository;

  PokemonDetailBloC({required this.pokemonRepository}) : super(PokemonDetailState.initial()) {
    on<InitialEvent>(_onDetailStarted);
  }

  Future<void> _onDetailStarted(
    InitialEvent event,
    Emitter<PokemonDetailState> emit) async {
    
    emit(PokemonDetailState.loading());

    // the prop name is passed from the page as a parameter
    final result = await pokemonRepository.getPokemonsByName(event.name);



    result.when(left: (failure) {
      emit(PokemonDetailState.failed(failure));
    }, right: (pokemon) {
      emit(PokemonDetailState.loaded(pokemon: pokemon));
    });
  }

}