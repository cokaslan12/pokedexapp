import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemonmodel.dart';
import 'package:pokedex/services/pokedexapi.dart';
import 'package:pokedex/widget/pokelist_item.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({ Key? key }) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  Future<List<PokemonModel>>? _pokemonlist;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonlist=pokeapi.getPokemonmodel();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
        future: _pokemonlist,
        builder: (context,snapshot){
          if(snapshot.hasData){
            List<PokemonModel> _pokemonmodeller=snapshot.data!;

            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation==Orientation.portrait? 2 : 3),
              itemBuilder: (context,index){
                var oankieleman=_pokemonmodeller[index];
                return PokeListItem(pokemon:oankieleman);
              },
              itemCount: _pokemonmodeller.length,
            );
          }
          else if(snapshot.hasError){
            return Center(
              child: Text("Veri Gelmedi Bir Hata Oluştu"),
            );
          }
          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      );
  }
}