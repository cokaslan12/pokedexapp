import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/uihelper.dart';
import 'package:pokedex/model/pokemonmodel.dart';

class PokeImageandBall extends StatelessWidget {
  final PokemonModel pokemodel;
  PokeImageandBall({required this.pokemodel, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /*Align(
          alignment: Alignment.bottomRight,
          child: Opacity(
              opacity: 0.2,
              child: Image.asset("assets/images/pokeball.png",
              width: UiHelper.calculatorPokeimgball(),
              height: UiHelper.calculatorPokeimgball(),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),*/
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemodel.id!,
            child: CachedNetworkImage(
              fit: BoxFit.fitHeight,
              imageUrl: pokemodel.img!,
              placeholder: (context,url)=>CircularProgressIndicator(
                color: UiHelper.getColorFromType(pokemodel.type![0]),
              ),
              errorWidget: (context,url,eror)=>Icon(Icons.error),
            ),
          ),
        ),
      ],
    );
  }
}