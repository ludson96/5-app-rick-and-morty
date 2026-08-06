import 'package:app_rich_and_morty/colors.dart';
import 'package:app_rich_and_morty/models/character.model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsCharacterPage extends StatelessWidget {
  final Character character;

  const DetailsCharacterPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // pinned: false,
            // floating: true,
            collapsedHeight: 60,
            expandedHeight: 280,
            iconTheme: IconThemeData(
              color: getContrastingTextColor(
                character.color,
                defaultLightColor: Colors.black,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: ValueKey(character.id),
                child: CachedNetworkImage(
                  key: Key("imageDetails"),
                  imageUrl: character.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    "${character.name.toUpperCase()} | #${character.id}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    children: [
                      Chip(
                        label: Text(
                          character.status,
                          style: TextStyle(
                            color: getContrastingTextColor(
                              character.color,
                              defaultLightColor: Colors.black87,
                            ),
                          ),
                        ),
                        backgroundColor: character.color,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.only(
                          bottom: 0,
                          top: 0,
                          left: 5,
                          right: 5,
                        ),
                      ),
                      Chip(
                        label: Text(
                          character.species,
                          style: TextStyle(
                            color: getContrastingTextColor(
                              character.color,
                              defaultLightColor: Colors.black87,
                            ),
                          ),
                        ),
                        backgroundColor: character.color,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.only(
                          bottom: 0,
                          top: 0,
                          left: 5,
                          right: 5,
                        ),
                      ),
                      Chip(
                        label: Text(
                          character.gender,
                          style: TextStyle(
                            color: getContrastingTextColor(
                              character.color,
                              defaultLightColor: Colors.black87,
                            ),
                          ),
                        ),
                        backgroundColor: character.color,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.only(
                          bottom: 0,
                          top: 0,
                          left: 5,
                          right: 5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Última localização conhecida:",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          character.location.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Local de origem:",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          character.origin.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Quantidade de vezes que apareceu:",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "${character.episode.length} episódios",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
