# App Rick and Morty

Aplicativo mobile desenvolvido em Flutter para explorar os personagens do universo de **Rick and Morty**, consumindo dados da API REST oficial.

## 📝 Sobre o Projeto

O projeto consiste no desenvolvimento de uma aplicação mobile integrada com a API Rest pública de **Rick and Morty** (`rickandmortyapi.com`). O aplicativo permite listar os personagens da série animada e visualizar suas informações detalhadas.

## 🖼️ Tela (Preview)

<img src="assets/images/rick-and-morty.gif" alt="Demonstração do App" width="300"/>

## ✨ Funcionalidades

- 🔍 **Busca Local & Filtro Dinâmico:** Pesquisa rápida por nome ou ID entre os personagens já buscados na API.
- 📱 **Modos de Visualização:** Alternância fluida entre exibição em Lista e Grade na tela principal.
- 🎨 **Cores Predominantes Dinâmicas:** Extração da cor predominante de cada imagem utilizando `palette_generator` para estilizar o fundo dos cards.
- ♾️ **Paginação Automática (Infinite Scroll):** Carregamento transparente de novos personagens (20 por página) ao rolar a tela.
- 🖼️ **Cache de Imagens:** Utilização de `cached_network_image` para carregamento rápido e otimizado com estados de *loading* e *placeholder*.
- ⚡ **Gerenciamento de Estado Reativo:** Gerenciamento reativo e eficiente de estado com **MobX**.
- 📄 **Detalhes Completos:** Tela detalhada exibindo informações como status de vida, espécie, gênero, primeira aparição/origem, localização e episódios.

## 🛠️ Tecnologias Utilizadas

- **[Flutter](https://flutter.dev/)** (v3.10+) - Framework para desenvolvimento cross-platform.
- **[Dart](https://dart.dev/)** - Linguagem de programação principal.
- **[MobX](https://pub.dev/packages/mobx)** & **[flutter_mobx](https://pub.dev/packages/flutter_mobx)** - Gerenciamento de estado reativo.
- **[Dio](https://pub.dev/packages/dio)** - Cliente HTTP para requisições na API REST.
- **[Palette Generator](https://pub.dev/packages/palette_generator_master)** - Extração de cores predominantes das imagens dos personagens.
- **[Cached Network Image](https://pub.dev/packages/cached_network_image)** - Carregamento e cache de imagens remotas.
- **[Rick and Morty API](https://rickandmortyapi.com/)** - API Rest pública oficial.

## 🚀 Como Executar o Projeto

Para rodar este projeto em sua máquina local, você precisará ter o Flutter instalado. Depois, siga os passos abaixo:

1.  **Clone o repositório** (se estiver usando git):
    ```bash
    git clone https://github.com/ludson96/5-app-rick-and-morty.git

    cd 5-app-rick-and-morty
    ```

2.  **Instale as dependências** com o Flutter:
    ```bash
    flutter pub get
    ```

3.  **Execute o aplicativo**:
    ```bash
    flutter run
    ```

