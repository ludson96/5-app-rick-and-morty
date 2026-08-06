import 'package:app_rich_and_morty/models/character.model.dart';
import 'package:app_rich_and_morty/services/rm_api.service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'home.store.g.dart';

// This is the class used by rest of your codebase
class HomeStore = HomeStoreBase with _$HomeStore;

// The store-class
abstract class HomeStoreBase with Store {
  final _service = RMApiService();

  int page = 1;

  @observable
  bool isLoading = false;

  @observable
  ObservableList<Character> character = <Character>[].asObservable();

  @observable
  String? search;

  @computed
  List<Character> get filteredCharacters {
    if (search == null) return character.toList();

    return character
        .where(
          (character) =>
              character.name.toLowerCase().contains(search!.toLowerCase()) ||
              character.id.toString() == search,
        )
        .toList();
  }

  @action
  void setSearch(String? text) => search = text;

  @action
  Future<void> loadCharacters() async {
    isLoading = true;

    final characterResponse = await _service.loadCharacters(page: page);

    if (page == 42) {
      return;
    } else {
      page += 1;
    }
    for (final newChar in characterResponse.results) {
      if (!character.any((c) => c.id == newChar.id)) {
        character.add(newChar);
      }
    }

    isLoading = false;
  }

  @action
  void updateCharacterColor({required int characterId, required Color color}) {
    final indexCharacter = character.indexWhere(
      (character) => character.id == characterId,
    );
    character[indexCharacter] = character[indexCharacter].copyWith(
      color: color,
    );
  }
}
