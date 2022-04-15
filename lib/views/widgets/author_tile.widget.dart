import 'package:codemagic_demo_app/models/author.model.dart';
import 'package:codemagic_demo_app/views/author/author.view.dart';
import 'package:codemagic_demo_app/views/widgets/loader.widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AuthorTile extends StatelessWidget {
  final Author author;

  const AuthorTile({
    Key? key,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => AuthorView(author: author),
        ),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
          minHeight: MediaQuery.of(context).size.height * (0.6),
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  author.imageUrl,
                ),
                const Gap(10),
                Text(
                  '" ${author.name} "',
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
