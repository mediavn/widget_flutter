import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController numberOneController = TextEditingController();
  final TextEditingController numberTwoController = TextEditingController();
  double? result;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Máy tính bỏ túi".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.red,
                  fontSize: width / 20,
                  fontWeight: FontWeight.w600,
                ),
            ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Input number 1",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Input number 2",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            showResult(),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: (){

                            },
                            child: Text("+")),
                        ElevatedButton(
                            onPressed: (){

                            },
                            child: Text("-")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: (){

                            },
                            child: Text("*")),
                        ElevatedButton(
                            onPressed: (){

                            },
                            child: Text("/")),
                      ],
                    )
                  ],

            ))
          ],
        ),
      ),
    );
  }
  Widget showResult(){
    if(result != null){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("= 10"),
      );
    }else{
      return Container();
    }
  }
}