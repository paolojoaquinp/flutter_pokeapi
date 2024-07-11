import 'package:equatable/equatable.dart';

abstract class PokemonDetailEvent extends Equatable {
  const PokemonDetailEvent();
}

class InitialEvent extends PokemonDetailEvent {
  final String name;

  const InitialEvent({required this.name});

  @override
  List<Object> get props => [name];
}