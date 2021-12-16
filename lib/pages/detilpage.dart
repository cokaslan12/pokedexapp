import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/uihelper.dart';
import 'package:pokedex/model/pokemonmodel.dart';
import 'package:pokedex/widget/pokemon_info.dart';
import 'package:pokedex/widget/poketypename.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  DetailPage({required this.pokemon, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation==Orientation.portrait ? _buildportrait(context): _buildlandpace(context);
  }
  Scaffold _buildportrait(BuildContext context){
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UiHelper.getdefaultpadding(),
              child: IconButton(
                iconSize: ScreenUtil().orientation==Orientation.portrait? 28.r:16.w,
                color: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                }, 
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            PokeNameType(pokemon: pokemon),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    top: 0.12.h,
                    child: PokeInformation(pokemon: pokemon),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: pokemon.id!,
                      child: CachedNetworkImage(
                        errorWidget: (context,url,error)=>Icon(Icons.error),
                        placeholder: (context,url)=>CircularProgressIndicator(),
                        height: 0.15.sh,
                        fit: BoxFit.fitHeight,
                        imageUrl: pokemon.img!,
                      ),
                    ),
                  ),
                ],
              ),
            ),  
          ],
        ),
      ),
    );
  }
  Scaffold _buildlandpace(BuildContext context){
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: UiHelper.getdefaultpadding(),
              child: IconButton(
                iconSize: ScreenUtil().orientation==Orientation.portrait? 28.r:16.w,
                color: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                }, 
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            Expanded(
              child:Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PokeNameType(pokemon: pokemon),
                        Hero(
                        tag: pokemon.id!,
                        child: CachedNetworkImage(
                          errorWidget: (context,url,error)=>Icon(Icons.error),
                          placeholder: (context,url)=>CircularProgressIndicator(),
                          height: 0.20.sh,
                          fit: BoxFit.fitHeight,
                          imageUrl: pokemon.img!,
                        ),
                      ),
                    ],
                  ),
                  ),
                Expanded(
                  flex: 10,
                  child: PokeInformation(pokemon: pokemon),
                ), 
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}