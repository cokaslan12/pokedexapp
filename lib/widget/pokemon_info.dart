import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/uihelper.dart';
import 'package:pokedex/model/pokemonmodel.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;
  PokeInformation({required this.pokemon, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.w),),
        ),
        child: Padding(
          padding: UiHelper.getdefaultpadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildInformationRow("Name", pokemon.name),
              _buildInformationRow("Height", pokemon.height),
              _buildInformationRow("Weight", pokemon.weight),
              _buildInformationRow("Spawn Time", pokemon.spawnTime),
              _buildInformationRow("Weakness", pokemon.weaknesses),
              _buildInformationRow("Pre Evolution", pokemon.prevEvolution),
              _buildInformationRow("Next Evolution", pokemon.nextEvolution),
            ],
          ),
        ),
      ),
    );
  }
  _buildInformationRow(String label,dynamic value){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,style: Sabitler.getpokeinfolabelstyle(),),
        if(value is List && value.isNotEmpty)
          Text(value.join(' , '),style: Sabitler.getpokeinfotextstyle(),)
        else if(value==null)
          Text("N/A")
        else
          Text(value.toString(),style: Sabitler.getpokeinfotextstyle(),)
        
      ],
    );

  }
}