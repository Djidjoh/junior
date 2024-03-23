import 'package:flutter/material.dart';
import '../model/contact.dart';

class AddContactPage extends StatelessWidget {
  final Function(Contact) onContactAdded;

  AddContactPage({required this.onContactAdded});

  @override
  Widget build(BuildContext context) {
    String name = '';
    String phoneNumber = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nom'),
              onChanged: (value) {
                name = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Numéro de téléphone'),
              onChanged: (value) {
                phoneNumber = value;
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Contact newContact = Contact(name: name, phoneNumber: phoneNumber, iconPath: '');
                  onContactAdded(newContact);
                  Navigator.pop(context);
                },
              child: Text('Enregister'),
            ),
          ],
        ),
      ),
    );
  }
}
