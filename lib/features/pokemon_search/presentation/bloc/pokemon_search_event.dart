


import 'package:equatable/equatable.dart';

abstract class PokemonSearchEvent extends Equatable {
  const PokemonSearchEvent();
}

class InitialEvent extends PokemonSearchEvent {
  const InitialEvent();

  @override
  List<Object> get props => [];
} 

