import 'dart:math';

import 'package:flutter/material.dart';

class GraphItemView extends StatelessWidget {
  final double graphHeight;
  final double graphWidth;
  final String graphName;
  final String perChant;
  final Color  color;

  const GraphItemView({
    super.key,
    required this.graphHeight,
    required this.graphWidth,
    required this.graphName,
    required this.perChant,
    required this.color
  });


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        Text("$perChant%",style: const TextStyle(color: Colors.white),),

        const SizedBox(height: 5,),

        AnimatedContainer(
          width: graphWidth,
          height: graphHeight,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
              color: color
          ),
        ),

        const SizedBox(height: 5,),

        // action, cartoon, comedy, fantasy, mystery, romance, science fiction, drama, musical and horror
        Text(graphName,style: const TextStyle(color: Colors.white),),


      ],
    );
  }
}
