import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemonmodel.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  PokeNameType({required this.pokemon, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(pokemon.name ?? " ",style: Sabitler.getpokemonnamestyle(),)),
              Text('#${pokemon.num}',style: Sabitler.getpokemonnamestyle(),),
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
            backgroundColor: Colors.black,
            label: Text(pokemon.type?.join(' , ')?? '',style: Sabitler.gettypechipstyle(),)),
        ],
      ),
    );
  }
}