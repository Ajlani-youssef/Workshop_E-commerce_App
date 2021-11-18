import 'dart:collection';

import 'package:ecommerce_app/models/personne.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  final Personne p = Personne(
      nom: "haddad",
      prenom: "Hani",
      email: "hanihaddad111@gmail.com",
      image:
          "https://cdn-images.kyruus.com/providermatch/baystate/photos/200/haddad-hani-1265430375.jpg");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.3,
                backgroundImage: NetworkImage(p.image),
              ),
              Text(p.nom),
              Text(p.prenom),
              Text(p.email),
            ],
          ),
        ),
      ),
    );
  }
}
