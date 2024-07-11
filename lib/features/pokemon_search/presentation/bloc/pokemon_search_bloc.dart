import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_pokeapi/features/pokemon_search/domain/repositories/pokemon_repository.dart';
import 'package:flutter_pokeapi/features/pokemon_search/presentation/bloc/pokemon_search_state.dart';

import 'pokemon_search_event.dart';

class PokemonSearchBloc extends Bloc<PokemonSearchEvent, PokemonSearchState> {
  final PokemonRepository pokemonsRepository;


  PokemonSearchBloc({required this.pokemonsRepository}) : super(PokemonSearchState.initial()) {
    on<InitialEvent>(_onSearchStarted);
   /*  on<PokemonLoadNextPage>(_onLoadNextPage); */
  }

  Future<void> _onSearchStarted(
    InitialEvent event,
    Emitter<PokemonSearchState> emit) async {
    
    emit(PokemonSearchState.loading());

    final result = await pokemonsRepository.getPokemons();

    result.when(left: (failure) {
      emit(PokemonSearchState.failed(failure));
    }, right: (pokemons) {
      emit(PokemonSearchState.loaded(pokemons: pokemons));
    });
  }



  /* Future<void> _onLoadNextPage(PokemonLoadNextPage event, Emitter<PokemonSearchState> emit) async {
    emit(PokemonSearchLoading());

    final result = await pokemonsRepository.getPokemonsNextPage(event.url);

    result.fold(
      (failure) => emit(PokemonSearchError(failure.toString())),
      (pokemons) => emit(PokemonSearchLoaded(pokemons: pokemons, isNextPage: true)),
    );
  } */
}