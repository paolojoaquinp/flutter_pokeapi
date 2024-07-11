

import 'package:dio/dio.dart';
import 'package:flutter_pokeapi/features/pokemon_search/domain/entities/pokemon/pokemon.dart';
import 'package:flutter_pokeapi/features/pokemon_search/domain/repositories/pokemon_repository.dart';
import 'package:http/http.dart';

import '../../domain/either/either.dart';
import '../../domain/entities/pokemon_response/pokemon_response.dart';
import '../../domain/failures/http_request_failure.dart';

class PokemonsApi {
  final _dio = Dio();

  GetPokemonsFuture getPokemons() async {
    try {
      final response = await _dio.get(
        'https://pokeapi.co/api/v2/pokemon',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      if(response.statusCode == 200) {
        final json = response.data;
        final pokemonResponse = PokemonResponse.fromJson(json);
        return Either.right(pokemonResponse);
      }
      if(response.statusCode == 404) {
        throw HttpRequestFailure.notFound();
      }
      if(response.statusCode! >= 500) {
        throw HttpRequestFailure.server();
      }
      throw HttpRequestFailure.local();
    } catch (e) {
      late HttpRequestFailure failure;
      if(e is HttpRequestFailure) {
        failure = e;
      } else if (e is ClientException) {
        failure = HttpRequestFailure.network();
      } else {
        failure = HttpRequestFailure.local();
      }
      return Either.left(failure);
    }
  }

  GetPokemonsByNameFuture getPokemonsByName(String name) async {
     try {
      final response = await _dio.get(
        'https://pokeapi.co/api/v2/pokemon/$name',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      if(response.statusCode == 200) {
        final json = response.data;
        final pokemonResponse = Pokemon.fromJson(json);
        return Either.right(pokemonResponse);
      }
      if(response.statusCode == 404) {
        throw HttpRequestFailure.notFound();
      }
      if(response.statusCode! >= 500) {
        throw HttpRequestFailure.server();
      }
      throw HttpRequestFailure.local();
    } catch (e) {
      late HttpRequestFailure failure;
      if(e is HttpRequestFailure) {
        failure = e;
      } else if (e is ClientException) {
        failure = HttpRequestFailure.network();
      } else {
        failure = HttpRequestFailure.local();
      }
      return Either.left(failure);
    }
  }   
}