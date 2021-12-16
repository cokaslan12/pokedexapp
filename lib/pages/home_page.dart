import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemonmodel.dart';
import 'package:pokedex/services/pokedexapi.dart';
import 'package:pokedex/widget/apptitle.dart';
import 'package:pokedex/widget/pokemonlistwidget.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder:(context,orientation)=>Column(
          children:[
            AppTitle(),
            Expanded(
              child: PokemonList(),
            ),
          ]
        ),
      ),
    );
  }
}