import 'package:codemagic_demo_app/models/author.model.dart';
import 'package:codemagic_demo_app/services/api.service.dart';
import 'package:codemagic_demo_app/views/widgets/author_tile.widget.dart';
import 'package:codemagic_demo_app/views/widgets/loader.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final apiService = ApiService();
  late Future<List<Author>> _futureAuthors;

  @override
  void initState() {
    super.initState();
    _futureAuthors = apiService.getAuthors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Know Your People',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: FutureBuilder<List<Author>>(
          future: _futureAuthors,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List<Widget>.generate(
                  snapshot.data!.length,
                  (index) {
                    Author author = snapshot.data![index];
                    return Hero(
                      tag: author.name!,
                      child: AuthorTile(author: author),
                    );
                  },
                ),
              );
            }
            return const Center(
              child: Loader(),
            );
          },
        ),
      ),
    );
  }
}
