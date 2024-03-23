import 'package:flutter/material.dart';
import '../model/contact.dart';

class ContactDetailsPage extends StatelessWidget {
  final Contact contact;

  ContactDetailsPage({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du contact'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(contact.iconPath.toString()),
            ),
            Text(contact.name.toString()),
            Text(contact.phoneNumber.toString()),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Informations supplémentaires'),
                        content: Text('Ajoutez ici des informations supplémentaires sur le contact.'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            child: Text('Fermer'),
                          ),
                        ],
                      );
                    },
                );
              },
              child: Text('Plusd d\'infos'),
            )
          ],
        ),
      ),
    );
  }
}
