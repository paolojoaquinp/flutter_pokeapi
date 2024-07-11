import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokeapi/features/pokemon_detail/presenter/page/pokemon_detail_page.dart';
import 'package:flutter_pokeapi/features/pokemon_search/data/api/pokemons_api.dart';
import 'package:flutter_pokeapi/features/pokemon_search/data/respositories_impl/pokemons_repository_imp.dart';
import 'package:flutter_pokeapi/features/pokemon_search/domain/failures/http_request_failure.dart';
import 'package:flutter_pokeapi/features/pokemon_search/presentation/bloc/pokemon_search_bloc.dart';
import 'package:flutter_pokeapi/features/pokemon_search/presentation/bloc/pokemon_search_state.dart';

import '../bloc/pokemon_search_event.dart';



class PokemonSearchPage extends StatelessWidget {
  const PokemonSearchPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonSearchBloc(
        pokemonsRepository: PokemonsRepositoryImp(
          PokemonsApi()
        )
      )..add(
        const InitialEvent()
      ),
      child: _Page(),
    
    );
  }
}

class _Page extends StatefulWidget {
  @override
  State<_Page> createState() => _PageState();
}

class _PageState extends State<_Page> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PokemonSearchBloc,PokemonSearchState>(
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
      child:  _Body(controller: _controller)
    );
  }
}

class _Body extends StatelessWidget {
  final TextEditingController controller;

  _Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokeAPI'),
      ),
      body: Column(
        children: [
          _searchPokemonSection(
            context,
            controller: controller,
           
          ),
          _listOfPokemons(),
        ]
      )
    );
  }

  Widget _searchPokemonSection(
    BuildContext context, 
    {required TextEditingController controller}
  ) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: 'Buscar Pokemon',
          border: OutlineInputBorder(),
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: (value) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PokemonDetailPage(pokemon: value),
            ),
          );
        },
      ),
    );
  }

  Widget _listOfPokemons() {
  return Expanded(
    child: BlocBuilder<PokemonSearchBloc, PokemonSearchState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: Text('Start your search'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (pokemons) => ListView.builder(
            itemCount: pokemons.results!.length,
            itemBuilder: (context, index) {
              final pokemon = pokemons.results![index];
              return ListTile(
                dense: true,
                style: ListTileStyle.drawer,
                title: Text(pokemon['name']),
              );
            },
          ),
          failed: (failure) => Center(
            child: Text(failure.toString()),
          ),
        );
      },
    ),
  );
}
}