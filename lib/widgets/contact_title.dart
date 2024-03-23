import 'package:contact/widgets/contact_details_page.dart';
import 'package:flutter/material.dart';
import '../model/contact.dart';

class ContactTitle extends StatelessWidget {
  final Contact contact;

  ContactTitle({required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(contact.iconPath.toString()),
      ),
      title: Text(contact.name.toString()),
      subtitle: Text(contact.phoneNumber.toString()),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactDetailsPage(contact: contact)),
        );
      },
    );
  }
}
