import 'package:curso_alura1/models/transfer.dart';
import 'package:curso_alura1/screens/transfer/form.dart';
import 'package:flutter/material.dart';

class TransferListState extends State<TransferList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Finanças'),
      ),
        body: ListView.builder(
          itemCount: widget._transfers.length,
          itemBuilder: (context, index) {
            final Transfer _tTransfer = widget._transfers[index];
            return ItemTransfer(_tTransfer);
          },
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), 
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormTransfers();
          })).then((receivedTransfer) => _refresh(receivedTransfer));          
        },
      ),
    );
  }

  void _refresh(receivedTransfer) {
    if(receivedTransfer != null) {
      setState(() {
        widget._transfers.add(receivedTransfer);  
      });
    }
  }
}


class TransferList extends StatefulWidget {
  final List<Transfer> _transfers = List();
  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}


class ItemTransfer extends StatelessWidget {

  final Transfer _transfer;

  const ItemTransfer(this._transfer);
  @override
  Widget build(BuildContext context)   {
    // TODO: implement build
    return Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text(_transfer.value.toString()),
            subtitle: Text(_transfer.account.toString()),
          ),
        );
  }

}
