# MAD MUD COMPANY WEBPAGES

The **[MAD MUD COMPANY webpages](https://mad-mud.netlify.app)** are hosted by the **[Netlify platform](https://www.netlify.com)**.

[![Netlify Status](https://api.netlify.com/api/v1/badges/cec72aa2-df39-4f31-b430-60965f13946f/deploy-status?branch=main)](https://app.netlify.com/sites/mad-mud/deploys)

### Code generation

To build the generated parts of immutable Freezed model classes, the go router routes, and test mocks, use the build_runner command (where "--delete-conflicting-outputs" prevents the prompt asking what to do with conflicting pre-existing files):

`dart run build_runner build --delete-conflicting-outputs`

(You might need to run `flutter pub global activate build_runner` prior to the file generation.)

### Running tests

To run unit and widget tests

`flutter test`

or, for a more verbose output

`flutter test -r expanded`

To run all integration tests
`flutter drive  --driver=test_driver/integration_test.dart --target=integration_test/test.dart -d chrome`

To run a specific integration test file (for example language_change_test.dart)
`flutter drive  --driver=test_driver/integration_test.dart --target=integration_test/language_change_test.dart -d chrome`

Note: you might need to install ChromeDriver into the directory of your choice
`npx @puppeteer/browsers install chromedriver@stable`
and add the path to ChromeDriver to your $PATH environment variable.

### Packages and technologies

- **ROUTING:** **[go_router](https://pub.dev/packages/go_router)** with **[type-safe routes](https://pub.dev/documentation/go_router/latest/topics/Type-safe%20routes-topic.html)** and **[go_router_builder file generation](https://pub.dev/packages/go_router_builder)**
- **STATE MANAGEMENT:** The Bloc based approach with the **[flutter_bloc](https://pub.dev/packages/flutter_bloc)** package was selected.
- **OBJECT COMPARISON:** To help in comparing bloc state changes the **[equatable](https://pub.dev/packages/equatable/example)** package was selected.
- **DEPENDENCY INJECTION:** **[get_it](https://pub.dev/packages/get_it)**
- **TEST MOCKING:** For test mocking, the **[mockito](https://pub.dev/packages/mockito)** package was selected.
- **BLOC TESTING:** To help in testing bloc functionality, the **[bloc_test](https://pub.dev/packages/bloc_test)** package was used.
- **ICONS:** **[Material Symbols Icons for Flutter](https://pub.dev/packages/material_symbols_icons)** were selected for icons because their weight can be easily modified (to be lighter than the usual Material icons)

### Conventions

- **File imports and exports**: To keep import statements clean and maintainable, we use barrel files (files named **barrel.dart** that re-export other files in a folder) throughout the project.

### Deployment

Build the app with

`flutter build web`
`flutter build web --release --web-renderer html`

No need to drag the directory **/build/web/** to Netlify anymore as Netlify deployment happens automatically on pushing to GitHub main. You can run the web build locally with
`flutter run -d chrome`
