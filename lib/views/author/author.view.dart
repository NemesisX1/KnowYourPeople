import 'package:codemagic_demo_app/models/author.model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AuthorView extends StatefulWidget {
  final Author author;

  const AuthorView({
    Key? key,
    required this.author,
  }) : super(key: key);

  @override
  State<AuthorView> createState() => _AuthorViewState();
}

class _AuthorViewState extends State<AuthorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * (0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: widget.author.name!,
                      child: Image.network(
                        widget.author.imageUrl,
                        width: MediaQuery.of(context).size.width * (0.4),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.author.name!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          const Gap(20),
                          Text(
                            widget.author.description!,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Text(
                widget.author.bio!,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
