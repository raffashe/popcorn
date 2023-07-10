import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pix_test_1/Utils/consts.dart';
import 'package:pix_test_1/data/Model/movie_model.dart';
import '../../../data/repositories/movies_repository.dart';
import '../Widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  Future get() async {
    return await getMovies();
  }

// item recebendo a resposya da api
  List<MovieProduct> lista = [];

  int movieSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Consts().Bg100,
      drawer: const DrawerHome(),
      body: Center(
        child: FutureBuilder(
          //regarra get
          future: get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasData) {
              lista = snapshot.data;
            }

            return ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //top container
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //icone menu
                          GestureDetector(
                            /* onTap: () => {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Drawer()))
                            }, */
                            child: Icon(
                              FontAwesomeIcons.bars,
                              color: Consts().Text100,
                              size: 25,
                            ),
                          ),
                          //nome usuario
                          Row(
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "Hi! Raffaela",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: "HeyWow",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Bem vinda!",
                                    style: TextStyle(
                                      color: Consts().Primary200,
                                      fontSize: 16,
                                      fontFamily: "HeyWow",
                                    ),
                                  ),
                                ],
                              ),
                              //logo app
                              Image.asset('assets/images/icon.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 80, horizontal: 20),
                      child: Text(
                        "Confira nossa lista!",
                        style: TextStyle(
                            color: Consts().Text100,
                            fontSize: 24,
                            fontFamily: "HeyWow",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(16),
                        itemCount: lista.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: GestureDetector(
                              child: Image.network(
                                lista[index].image,
                                fit: BoxFit.cover,
                              ),
                              onTap: () {
                                movieSelected = index;
                                setState(() {});
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              lista[movieSelected].title,
                              style: TextStyle(
                                  color: Consts().Text100,
                                  fontFamily: "HeyWow",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(lista[movieSelected].status,
                                    style: TextStyle(
                                      color: Consts().Accent100,
                                      fontFamily: "HeyWow",
                                      fontSize: 16,
                                    )),
                                const SizedBox(height: 10),
                                Text(
                                  lista[movieSelected].description,
                                  style: TextStyle(
                                    color: Consts().Text100,
                                    fontFamily: "HeyWow",
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
