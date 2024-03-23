import 'package:flutter/material.dart';
import 'model/contact.dart';
import 'widgets/contact_title.dart';
import 'widgets/contact_details_page.dart';
import 'widgets/add_contact_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carnet d\'adresses',
      home: ContactListPage(),
    );
  }
}

class ContactListPage extends StatefulWidget {
  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final List<Contact> contacts = [
    Contact(name: 'Oswald HOMEKY', phoneNumber: '+229 56 18 47 87', iconPath: ''),
    Contact(name: 'Patrice Talon', phoneNumber: '+229 90 64 15 58', iconPath: ''),
    Contact(name: 'Elun Musk', phoneNumber: '+229 66 12 14 55', iconPath: ''),
    Contact(name: 'Junior AGBODJOGBE', phoneNumber: '+229 56 18 47 40', iconPath: ''),
    Contact(name: 'Vano BABY', phoneNumber: '+229 56 25 50 56', iconPath: ''),
    Contact(name: 'Didier DOGBA', phoneNumber: '+229 56 18 45 47', iconPath: ''),
    Contact(name: 'Sadio MANE', phoneNumber: '+229 54 58 96', iconPath: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index){
            return ContactTitle(contact: contacts[index]);
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddContactPage(onContactAdded: _addContact)),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _addContact(Contact newContact){
    setState(() {
      contacts.add(newContact);
    });
  }
}

