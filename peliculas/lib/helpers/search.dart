

import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _searchX = TextEditingController();
  final _keyForm = GlobalKey<FormState>();
  @override
  void dispose(){
    super.dispose();
    _searchX.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Form(
          key: _keyForm,
          child: 
        TextFormField(
          controller: _searchX,
          decoration: InputDecoration(
            labelText: 'Buscar',
            labelStyle:TextStyle(color: Colors.white),
          ),
          validator: (value) {
            value==null || value.isEmpty
            ? 'Ingrese algo para buscar'
            : null;
          },
          
        ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              if(_keyForm.currentState!.validate()){
                
              }
            },child: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}