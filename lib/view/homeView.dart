import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widget/item.dart';

class homeView extends StatefulWidget {
  homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  late bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Text(
                            "Votre agence marketing, communication Digitale & Solutions Technologiques",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Des solutions marketing et Technologiques vous permettant d'accroître votre notoriété et commercialiser davantage vos produits et services.",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 130),
                          height: 60,
                          width: 240,
                          color: Color.fromARGB(255, 240, 204, 24),
                          child: TextButton(
                            onPressed: () {},
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "Commencons",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.skip_next,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset("img/agence.png"),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
                'Nos Partenaires',
                style: TextStyle(
                  fontSize: 27,
                  color: Color.fromARGB(255, 7, 1, 70),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Nous Ont Fait Confiance',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    isTrue = value;
                  });
                },
                child: Column(
                  children: [
                    partenaireContent(),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: 150,
                    color: Colors.white,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Notre plus value",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Decouvrez Notre Valeur Ajoutée",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              content(),
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Membres d'equipes",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 21,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Des membres d'equipes incroyables",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              secondContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
    const size = 350.1;
    List<Widget> tab = [
      itemCarousel(
        'img/item_2.jpg',
        'Publicitie sur Instagram et Facebook',
        'Vous venez de lancer votre activite, vous n\'avez pas les moyens pour payer un CM? Alors faites-vous former afin de pouvoir vous-meme lancer et booster vos publiciter',
        'Apprenez la publiciter\n sur Facebook et Instagram',
        'Animer vos communiquer et\n booster vos ventes',
        size,
      ),
      itemCarousel(
        'img/item_4.png',
        'Nous proposons des stages de formation en atelier pratique ',
        """Nos stages de formation en atelier pratiques vous offrent l’opportunité d’apprendre de nouvelles compétences et techniques directement auprès d’experts dans leur domaine 
        Nos ateliers sont conçus pour être interactifs et pratiques, vous permettant de mettre en pratique ce que vous avez appris et de repartir avec des connaissances solides et des compétences pratiques.
        Inscrivez-vous dès maintenant pour découvrir nos offres de stages de formation en atelier pratiques.""",
        'Apprennez et maitrisez\n de nouvelles solutions\n marketing et technologiques',
        'Participez aux projets de\n l\'entreprise',
        size,
      ),
      itemCarousel(
        'img/item_3.jpg',
        'Developpement des sites, applications web et mobile',
        """Nous sommes spécialisés dans le développement de sites web, d’applications web et mobiles de haute qualité. Notre équipe d’experts utilise les dernières technologies et les meilleures pratiques pour créer des solutions sur mesure qui répondent aux besoins de nos clients.
       Que vous ayez besoin d’un site web simple ou d’une application mobile complexe, nous sommes là pour vous aider à atteindre vos objectifs en ligne. Contactez-nous dès maintenant pour en savoir plus sur nos services de développement de sites, applications web et mobiles.""",
        'Apprennez et maitrisez de\n nouvelles solutions marketing\n et technologiques',
        'Participez aux projets de\n l\'entreprise',
        size,
      ),
      itemCarousel(
        'img/item_1.jpg',
        'Formation de haute qualité sur les réseaux sociaux',
        """
     Vous venez de lancer votre activité, vous n'avez pas les moyens pour payer un community-manager ? Alors faites-vous former afin de pouvoir vous-même creer et gerer des communautés sur le digital et faire un ma de ventes.
    """,
        'Apprenez la publiciter\n sur Facebook et Instagram',
        'Animer vos communiquer et\n booster vos ventes',
        size,
      ),
    ];
    return Container(
      child: CarouselSlider(
          items: tab,
          options: CarouselOptions(
            height: 800,
            viewportFraction: 0.9,
            enlargeFactor: 0.3,
          )),
    );
  }
}

Widget secondContent() {
  List<Widget> tab = [
    itemPersonnel('img/fritz-enolla.png', "Fritz Enolla",
        'Expert en Marketing Digital', 'Ingenieur Reseaux'),
    itemPersonnel('img/orgis-carnot.png', "Ogris-Carnot",
        'Expert en Stratégie Digitale', 'Analyste Financier'),
    itemPersonnel('img/fabrice-kegoum.jpg', "Fabrice Kegoum",
        'Responsable des Projets TI', 'Ingenieur logiciel'),
    itemPersonnel('img/dassidji-kevin.png', "Kevin Dassiji", 'Designer',
        'Ingenieur Reseaux'),
  ];
  return CarouselSlider(
    options: CarouselOptions(
      height: 430,
      viewportFraction: 0.9,
      enlargeFactor: 0.3,
    ),
    items: tab,
  );
}

Widget partenaireContent() {
  List<Widget> tab = [
    cardo('img/sock.png', color_card),
    cardo("img/dreamss.png", color_card),
    cardo("img/dolskinn.png", color_card),
    cardo("img/dreamss.png", color_card),
  ];
  return CarouselSlider(
    items: tab,
    options: CarouselOptions(
      height: 180,
      viewportFraction: 0.9,
      enlargeFactor: 0.3,
    ),
  );
}
