import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
   return _HomePageState();
  }

}
class _HomePageState extends State<HomePage>{
  double result =0;
  final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context){
    const border=OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.2,
        strokeAlign: BorderSide.strokeAlignOutside,
        style: BorderStyle.solid,
        color: Colors.black,
      ),
      borderRadius: BorderRadius.all(Radius.circular(55)),
    );
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: const Text('Currency Converter',),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body:
      Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('INR ${result!=0?result.toStringAsFixed(2):result.toStringAsFixed(0)}',style:const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            ),


            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Color.fromARGB(255, 0 , 0, 0)),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                  hintText: 'Enter the Amount in USD',
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder:border,
                  enabledBorder:border,

                ),

                controller: textEditingController ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result=double.parse(textEditingController.text)*81.3;
                });
              },
                style:const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50),
                  ),
                ),
                child:

                const Text("convert",
                ),

              ),
            )
          ],
        ),
      ),
    );
  }

}
