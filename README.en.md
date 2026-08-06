# Rick and Morty App

Mobile application developed in Flutter to explore characters from the **Rick and Morty** universe, consuming data from the official REST API.

## 📝 About the Project

The project consists of developing a mobile application integrated with the public **Rick and Morty** REST API (`rickandmortyapi.com`). The app allows listing characters from the animated series and viewing their detailed information.

## 🖼️ Screen (Preview)

<img src="assets/images/rick-and-morty.gif" alt="App Demo" width="300"/>

## ✨ Features

- 🔍 **Local Search & Dynamic Filter:** Quick search by name or ID among characters already fetched from the API.
- 📱 **View Modes:** Seamless toggle between List and Grid views on the main screen.
- 🎨 **Dynamic Dominant Colors:** Dominant color extraction from each character's image using `palette_generator` to style card backgrounds.
- ♾️ **Automatic Pagination (Infinite Scroll):** Transparent loading of new characters (20 per page) as the user scrolls down.
- 🖼️ **Image Caching:** Utilizing `cached_network_image` for fast, optimized image loading with loading states and placeholders.
- ⚡ **Reactive State Management:** Efficient, reactive state management using **MobX**.
- 📄 **Complete Details:** Detailed screen displaying information such as life status, species, gender, first appearance/origin, location, and episodes.

## 🛠️ Technologies Used

- **[Flutter](https://flutter.dev/)** (v3.10+) - Cross-platform development framework.
- **[Dart](https://dart.dev/)** - Primary programming language.
- **[MobX](https://pub.dev/packages/mobx)** & **[flutter_mobx](https://pub.dev/packages/flutter_mobx)** - Reactive state management.
- **[Dio](https://pub.dev/packages/dio)** - HTTP client for REST API requests.
- **[Palette Generator](https://pub.dev/packages/palette_generator_master)** - Dominant color extraction from images.
- **[Cached Network Image](https://pub.dev/packages/cached_network_image)** - Remote image caching and rendering.
- **[Rick and Morty API](https://rickandmortyapi.com/)** - Official public REST API.

## 🚀 How to Run the Project

To run this project on your local machine, make sure you have Flutter installed. Then follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ludson96/5-app-rick-and-morty.git

   cd 5-app-rick-and-morty
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```
