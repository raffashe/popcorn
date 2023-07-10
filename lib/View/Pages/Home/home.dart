/* import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pix_test_1/Utils/consts.dart';
import 'package:pix_test_1/data/Model/movie_model.dart';
import 'package:pix_test_1/data/http/http_client.dart';
import '../../../data/repositories/movies_repository.dart';
import '../Widgets/drawer.dart';
import 'movie_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* final MovieStore store = MovieStore(
      repository: MovieRepository(
    client: HttpCliente(),
  )); */

/*  @override
  void initState() {
    super.initState();
    store.getMovies();
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
            ElevatedButton(onPressed: getMovies(), child: Text("Deus abençoa")),
      ),
      /* 
      drawer: const DrawerHome(),
      backgroundColor: Consts().Bg100,
      body: Stack(
        //para os itens
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
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

                  // CardMovieLayout(),
                ],
              ),
            ),
          ),
// titulo app
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Confira nossa lista",
                  style: TextStyle(
                      fontFamily: "HeyWow",
                      fontSize: 24,                      color: Consts().Text100,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),

          AnimatedBuilder(
              animation:
                  Listenable.merge([store.isLoading, store.erro, store.state]),
              builder: (context, child) {
                if (store.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (store.erro.value.isNotEmpty) {
                  return Center(
                    child: Text(
                      store.erro.value,
                      style: TextStyle(
                          color: Consts().Accent100,
                          fontWeight: FontWeight.w600,
                          fontFamily: "HeyWow",
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  );
                } else {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 32),
                    padding: const EdgeInsets.all(16),
                    itemCount: ,
                    itemBuilder: (_, index) {
                      final item = store.state.value[index];
                      return Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Consts().Bg200),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                item.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                item.title,
                                style: TextStyle(
                                    color: Consts().Text100,
                                    fontFamily: "HeyWow",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item.status,
                                      style: TextStyle(
                                        color: Consts().Accent100,
                                        fontFamily: "HeyWow",
                                        fontSize: 16,
                                      )),
                                  const SizedBox(height: 10),
                                  Text(item.description,
                                      style: TextStyle(
                                        color: Consts().Text100,
                                        fontFamily: "HeyWow",
                                        fontSize: 20,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              }),

          //botão bav bar
          Positioned(child: Container())
        ],
      ), */
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:pix_test_1/data/Model/movie_model.dart';
import '../../../Utils/consts.dart';
import '../../../data/http/http_client.dart';
import '../../../data/repositories/movies_repository.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder(
        future: get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData) {}

          return SizedBox(); /* Column(
          children: [
            Container(
              height: 500,
              width: 500,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(height: 32),
                padding: const EdgeInsets.all(16),
                itemCount: 10,
                itemBuilder: (_, index) {
                  return Container(
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Consts().Bg200),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            item/* [0]["img_url"] */,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            item[],
                            style: TextStyle(
                                color: Consts().Text100,
                                fontFamily: "HeyWow",
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item,
                                  style: TextStyle(
                                    color: Consts().Accent100,
                                    fontFamily: "HeyWow",
                                    fontSize: 16,
                                  )),
                              const SizedBox(height: 10),
                              Text(item.[],
                                  style: TextStyle(
                                    color: Consts().Text100,
                                    fontFamily: "HeyWow",
                                    fontSize: 20,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => getMovies(),
              child: Text("Deus abençoa"),
            ),
          ],
        ); */
        },
      ),
    ));
  }
}
