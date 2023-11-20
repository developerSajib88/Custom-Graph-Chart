import 'dart:math';

import 'package:flutter/material.dart';
import 'package:graph_chart/graph_item_view.dart';

class GraphChart extends StatefulWidget {
  const GraphChart({super.key});

  @override
  State<GraphChart> createState() => _GraphChartState();
}

class _GraphChartState extends State<GraphChart> {

  late int randomPerchant;
  List<Map<String,String>> graphList = [
    {
      "perChant" : "20",
      "graphType" : "action",
    },

    {
      "perChant" : "70",
      "graphType" : "cartoon",
    },


    {
      "perChant" : "60",
      "graphType" : "fantasy",
    },

    {
      "perChant" : "35",
      "graphType" : "comedy",
    },

    {
      "perChant" : "40",
      "graphType" : "romance",
    },

    {
      "perChant" : "20",
      "graphType" : "drama",
    },


  ];


  Color _getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0, // Alpha value, 1.0 for fully opaque color
    );
  }


  int _randomPerchant(){
    Random random = Random();
    randomPerchant = random.nextInt(100);
    setState(() {});
    return randomPerchant;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            height: 500,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: graphList.map((e) =>
                  GraphItemView(
                    perChant: e["perChant"]!,
                    //perChant: _randomPerchant().toString(),
                    graphHeight: double.parse(e["perChant"]!) * 5,
                    //graphHeight: randomPerchant * 4,
                    graphWidth: 300 / graphList.length,
                    graphName: e["graphType"]!,
                    color: _getRandomColor(),
                  )
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
