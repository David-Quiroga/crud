import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  //const SavePage({super.key});
  static const String ROUTE = "/save";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardar"),
      ),
      body: Container(
        child: _FormSave(
        ),
      ),
    );
  }
}

class _FormSave extends StatelessWidget{
  final _formKey =  GlobalKey<FormState>();
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Divider(height: 30),
            TextFormField(
            controller: titleController,
              validator: (value) {
                  if(value!.isEmpty){
                    return "El campo no puede estar vacio";
                  } 
                  return null;
                },
              decoration: InputDecoration(
                labelText: "Titulo",

                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.circular(30))
                  )
                )
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                //!Agregar mas propiedades
                controller: contentController,
                maxLines: 15,
                maxLength: 200,
                validator: (value) {
                  if(value!.isEmpty){
                    return "El campo no puede estar vacio";
                  } 
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Contenido", 
                  border: OutlineInputBorder(
                  ) 
                ),
              ),
              ElevatedButton(
                child: Text("Guardar"),
                onPressed: (() {
                  if(_formKey.currentState!.validate()){
                    print("Guardar");
                  }
                }),
              )
          ],
        )
      ),
    );
  }
}