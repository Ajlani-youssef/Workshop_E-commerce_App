import 'package:ecommerce_app/models/produit.dart';
import 'package:ecommerce_app/screens/description.dart';
import 'package:ecommerce_app/screens/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<Produit> dummydata = [
    Produit(
        nom: "PC PORTABLE VEGABOOK",
        price: 499,
        description:
            ' "Ecran 14.1" HD LED - Processeur Intel Atom Quad Core Z8350, up to 1.92 Ghz, 2 Mo de cache - RAM 4 Go - Stockage 64 Go - Carte graphique Intel HD Graphic - Windows 10 - USB 2.0 - HDMI - Lecteur de Cartes - WebCam 0.3MP - Couleur: Silver - Garantie: 1 an',
        image:
            "https://www.tunisianet.com.tn/198862-large/pc-portable-vegabook-plus-14-quad-core-4-go-silver-50-dt-bon-d-achat.jpg"),
    Produit(
        nom: "PC PORTABLE VEGABOOK",
        price: 499,
        description:
            ' "Ecran 14.1" HD LED - Processeur Intel Atom Quad Core Z8350, up to 1.92 Ghz, 2 Mo de cache - RAM 4 Go - Stockage 64 Go - Carte graphique Intel HD Graphic - Windows 10 - USB 2.0 - HDMI - Lecteur de Cartes - WebCam 0.3MP - Couleur: Silver - Garantie: 1 an',
        image:
            "https://www.tunisianet.com.tn/198862-large/pc-portable-vegabook-plus-14-quad-core-4-go-silver-50-dt-bon-d-achat.jpg"),
    Produit(
        nom: "PC PORTABLE VEGABOOK",
        price: 499,
        description:
            ' "Ecran 14.1" HD LED - Processeur Intel Atom Quad Core Z8350, up to 1.92 Ghz, 2 Mo de cache - RAM 4 Go - Stockage 64 Go - Carte graphique Intel HD Graphic - Windows 10 - USB 2.0 - HDMI - Lecteur de Cartes - WebCam 0.3MP - Couleur: Silver - Garantie: 1 an',
        image:
            "https://www.tunisianet.com.tn/198862-large/pc-portable-vegabook-plus-14-quad-core-4-go-silver-50-dt-bon-d-achat.jpg"),
    Produit(
        nom: "PC PORTABLE VEGABOOK",
        price: 499,
        description:
            ' "Ecran 14.1" HD LED - Processeur Intel Atom Quad Core Z8350, up to 1.92 Ghz, 2 Mo de cache - RAM 4 Go - Stockage 64 Go - Carte graphique Intel HD Graphic - Windows 10 - USB 2.0 - HDMI - Lecteur de Cartes - WebCam 0.3MP - Couleur: Silver - Garantie: 1 an',
        image:
            "https://www.tunisianet.com.tn/198862-large/pc-portable-vegabook-plus-14-quad-core-4-go-silver-50-dt-bon-d-achat.jpg"),
    Produit(
        nom: "PC PORTABLE VEGABOOK",
        price: 499,
        description:
            ' "Ecran 14.1" HD LED - Processeur Intel Atom Quad Core Z8350, up to 1.92 Ghz, 2 Mo de cache - RAM 4 Go - Stockage 64 Go - Carte graphique Intel HD Graphic - Windows 10 - USB 2.0 - HDMI - Lecteur de Cartes - WebCam 0.3MP - Couleur: Silver - Garantie: 1 an',
        image:
            "https://www.tunisianet.com.tn/198862-large/pc-portable-vegabook-plus-14-quad-core-4-go-silver-50-dt-bon-d-achat.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping"),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.red),
        actions: [
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_bag,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Profile(),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(
          dummydata.length,
          (index) {
            return Center(
              child: Card(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => DescriptionPage(
                              produit: dummydata[index],
                            ),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        child: Image.network(dummydata[index].image),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 70,
                          child: Text(
                            dummydata[index].nom,
                            softWrap: true,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: Text(
                            "${dummydata[index].price}\$",
                            softWrap: true,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
