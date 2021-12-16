import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedex/model/pokemonmodel.dart';

class pokeapi{
  static const String _url="https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  static Future<List<PokemonModel>> getPokemonmodel()async{
    List<PokemonModel> _list=[];
    var response=await Dio().get(_url);
    var pokelist=jsonDecode(response.data.toString())["pokemon"];
    if(pokelist is List){
      _list=pokelist.map((e) => PokemonModel.fromJson(e)).toList();
    }else{
      return [];
    }
    return _list;
  }
}