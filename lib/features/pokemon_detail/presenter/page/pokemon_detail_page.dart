import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokeapi/features/pokemon_detail/presenter/bloc/pokemon_detail_bloc.dart';
import 'package:flutter_pokeapi/features/pokemon_detail/presenter/bloc/pokemon_detail_state.dart';
import 'package:flutter_pokeapi/features/pokemon_search/data/api/pokemons_api.dart';
import 'package:flutter_pokeapi/features/pokemon_search/data/respositories_impl/pokemons_repository_imp.dart';

import '../../../pokemon_search/domain/failures/http_request_failure.dart';
import '../bloc/pokemon_detail_event.dart';


class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage({
    super.key,
    required this.pokemon
  });

  final String pokemon;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonDetailBloC(
        pokemonRepository: PokemonsRepositoryImp(
          PokemonsApi()
        )
      )..add(
        InitialEvent(name: pokemon)
      ),
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PokemonDetailBloC, PokemonDetailState>(
      listener: (context, state) {
        if (state is HttpRequestFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Something went wrong, please come back later.'),
              duration: Duration(seconds: 3),
            ),
          );
        }
      },
      child: _Body(),
    );
  }
}


class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailBloC, PokemonDetailState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: Text("Iniciando detalles...."),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (pokemon) => Center(
            child: Scaffold(
              appBar: AppBar(
                title: Text(pokemon.name!),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if(pokemon.sprites!.frontShiny != null) 
                    Image.network(
                      pokemon.sprites!.frontShiny!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  Text(
                    pokemon.name!,
                    style: const TextStyle(
                      fontSize: 24.0, // Tamaño para el título
                      fontWeight: FontWeight.bold, // Estilo de fuente en negrita para el título
                      fontFamily: 'Arial', // Fuente para el título
                    ),
                  ),
                  Text(
                    'Height: ${pokemon.height.toString()}',
                    style: const TextStyle(
                      fontSize: 18.0, // Tamaño para el subtítulo
                      fontStyle: FontStyle.italic, // Estilo de fuente en cursiva para el subtítulo
                      fontFamily: 'Arial', // Fuente para el subtítulo
                    ),
                  ),
                  Text(
                    'Weight: ${pokemon.weight.toString()}',
                    style: const TextStyle(
                      fontSize: 16.0, // Tamaño para el cuerpo del texto
                      fontFamily: 'Arial', // Fuente para el cuerpo del texto
                    ),
                  ),
                ],
              )
            ),
          ),
          failed: (failure) => const Center(
            child: Text('Something went wrong, please come back later.'),
        )
      );
      },
    );
  }
}