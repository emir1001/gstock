// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstock/FrontHomepage/services/composant.dart';
import 'package:gstock/FrontHomepage/services/composant_service.dart';

class ComposantScreen extends StatelessWidget {
  var _componantFamilyController = TextEditingController();
  var _componantNameController = TextEditingController();
  var _componantQuantityController = TextEditingController();
  var _componantDateController = TextEditingController();

  var _componant = Component();
  var _componantService = ComposantsService();

  List<Component> _componentList = List<Component>();

  getAllComponents() async {
    _componentList = List<Component>();
    var components = await _componantService.readComposants();
    components.forEach((Component) {
      var ComponantModel = Component();
      ComponantModel.date = Component['date'];
      ComponantModel.quantity = Component['quantity'];
      ComponantModel.name = Component['name'];
      ComponantModel.family = Component['family'];
      ComponantModel.id = Component['id'];
      _componentList.add(ComponantModel);
    });
  }

  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {},
                child: Text('cancel'),
              ),
              FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () async {
                  _componant.family = _componantFamilyController.text;
                  _componant.name = _componantNameController.text;
                  _componant.quantity = _componantQuantityController.text;
                  _componant.date = _componantDateController.text;

                  var result =
                      await _componantService.saveComposants(_componant);

                  print(result);
                },
                child: Text('Save'),
              ),
            ],
            title: Text('Component Form'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _componantFamilyController,
                    decoration: InputDecoration(
                      hintText: 'write family name',
                      labelText: 'Family',
                    ),
                  ),
                  TextField(
                    controller: _componantNameController,
                    decoration: InputDecoration(
                      hintText: 'write componant name',
                      labelText: 'Name',
                    ),
                  ),
                  TextField(
                    controller: _componantQuantityController,
                    decoration: InputDecoration(
                      hintText: 'write quantity in stock',
                      labelText: 'Quantity',
                    ),
                  ),
                  TextField(
                    controller: _componantDateController,
                    decoration: InputDecoration(
                      hintText: 'write acuisation date',
                      labelText: 'Date',
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('hello world'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
