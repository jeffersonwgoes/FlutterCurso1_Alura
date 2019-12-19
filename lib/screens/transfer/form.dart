import 'package:curso_alura1/components/editor.dart';
import 'package:curso_alura1/models/transfer.dart';
import 'package:flutter/material.dart';

class FormTransfers extends StatefulWidget{
  final TextEditingController _controllerAccount = new TextEditingController();
  final TextEditingController _controllerValue = new TextEditingController();
  

  void _createTransfer(BuildContext context) {
    final int account = int.tryParse(_controllerAccount.text);
    final double value = double.tryParse(_controllerValue.text);
    if(account != null && value != null) {
      final transfer = Transfer(value, account);
      Navigator.pop(context, transfer);
    }
  }

  @override
  State<StatefulWidget> createState() {
    return ListFormTransferState();
  }  
}


class ListFormTransferState extends State<FormTransfers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferência'),),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Editor(
            controller: widget._controllerAccount, 
            hint: '0000', 
            label: 'Número da Conta',
          ),
          Editor(
            controller: widget._controllerValue, 
            hint: '00.0', 
            label: 'Valor', 
            icon: Icons.monetization_on
            ),
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () => widget._createTransfer(context),
          ),
        ],),),
    );
  }

}