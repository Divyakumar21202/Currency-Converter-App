import 'package:flutter/material.dart';
import 'package:currency_converter_app/home_page.dart';

void main(){
  runApp(const CurrencyConverterApp());
}
class CurrencyConverterApp extends StatelessWidget{
 const CurrencyConverterApp({super.key});
 @override
  Widget build(BuildContext context) {
    
   return const MaterialApp(
     home:HomePage() ,
     debugShowCheckedModeBanner: false,
     title: 'Currency Converter App',
     
   );
    
  }
}