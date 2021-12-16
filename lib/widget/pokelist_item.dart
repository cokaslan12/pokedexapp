import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/uihelper.dart';
import 'package:pokedex/model/pokemonmodel.dart';
import 'package:pokedex/pages/detilpage.dart';
import 'package:pokedex/widget/poke_image.dart';

class PokeListItem extends StatelessWidget {
  PokemonModel pokemon;
  PokeListItem({required this.pokemon, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(pokemon: pokemon),),);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.grey,
        color: UiHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UiHelper.getdefaultpadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ?? "N/A",style: Sabitler.getpokemonnamestyle(),),
              Chip(
                backgroundColor: Colors.black,
               label: Text(pokemon.type![0].toString(),
                style: Sabitler.gettypechipstyle(),
                ),
               ),
               Expanded(child: PokeImageandBall(pokemodel: pokemon,)),
            ],
          ),
        ),
      ),
    );
  }
}