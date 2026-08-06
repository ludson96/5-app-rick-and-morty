import 'package:app_rich_and_morty/pages/home/store/home.store.dart';
import 'package:app_rich_and_morty/pages/home/widgets/character_card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class GridViewCards extends StatelessWidget {
  final HomeStore store;
  final ScrollController scrollController;

  const GridViewCards({
    super.key,
    required this.store,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return GridView.builder(
          key: Key("gridView"),
          controller: scrollController,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            childAspectRatio: 0.70,
          ),
          itemCount: store.filteredCharacters.length,
          itemBuilder: (ctx, index) {
            final character = store.filteredCharacters[index];
            return CharacterCard(
              key: ValueKey(character.id),
              store: store,
              character: character,
              isGrid: true,
            );
          },
        );
      },
    );
  }
}
