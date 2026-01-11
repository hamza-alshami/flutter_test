<!-- Copilot / AI agent instructions for contributors and coding agents -->
# Quick Orientation

This is a small Flutter language-learning demo app. Key facts an AI assistant should know:

- Single entry: `lib/main.dart` (simple, mostly template-generated UI).
- Assets live under `assets/` with structured subfolders: `images/` and `sounds/` (categories: `colors/`, `numbers/`, `family_members/`, `phrases/`).
- The project uses Flutter SDK (see `pubspec.yaml`) and `flutter_lints` for style.

# How to run (developer workflows)

- Install deps: `flutter pub get`
- Run on default device: `flutter run`
- Run on Windows desktop (dev machine here): `flutter run -d windows`
- Build artifacts:
  - Android APK: `flutter build apk`
  - Windows release: `flutter build windows`
- Tests: `flutter test`

# Project-specific patterns & conventions

- Assets are organized by concept: `assets/sounds/<category>/` and `assets/images/<category>/`.
  - Filenames sometimes include spaces (for example `assets/sounds/family_members/older bother.wav`). Be careful when constructing file paths — use literal strings drawn from the filesystem or normalize names when refactoring.
- `pubspec.yaml` currently does not list explicit `assets:` entries. Confirm whether assets are referenced via direct paths or added later — updating `pubspec.yaml` may be required to include assets for packaging.
- Minimal state: the app is a single-file example (`lib/main.dart`). Expect other logic to be added in new Dart files rather than modifying large single-file components.

# Code patterns & examples

- UI entry point: `void main() => runApp(const MyApp());` in `lib/main.dart`.
- Typical widget pattern: `StatefulWidget` + `_State` pair as in `MyHomePage` / `_MyHomePageState`.
- Look for asset usage under `assets/` when implementing audio/image playback; use Flutter's `AudioPlayer` or `AudioCache` patterns and `Image.asset('assets/images/...')`.

# Integration points & external dependencies

- Flutter framework only (no third-party packages declared besides `cupertino_icons` and `flutter_lints`). Add packages via `flutter pub add <package>` and update `pubspec.yaml`.
- Platform projects exist for Android, iOS, web, macOS, Linux, Windows — prefer testing on the target platform folder when making platform-specific changes.

# Debugging & common fixes an agent may need to perform

- Watch for template artifacts in `lib/main.dart` (examples, TODOs, or partially edited code like malformed identifiers). Run `dart analyze` / use the IDE linting to surface issues.
- If adding or renaming assets, update `pubspec.yaml` `flutter.assets` list and run `flutter pub get`.

# Notes for AI code edits

- Keep changes small and localized. This repo follows a simple, file-per-feature approach; prefer adding new files under `lib/` instead of heavily editing `main.dart`.
- Use existing folder conventions when adding features: `lib/screens/`, `lib/widgets/`, `assets/sounds/*`, `assets/images/*`.
- When referencing files in messages, cite exact paths from this repo (for example `lib/main.dart` or `assets/sounds/numbers/number_one_sound.mp3`).

# Where to look next (key files)

- [lib/main.dart](lib/main.dart) — app entry and example widgets
- [pubspec.yaml](pubspec.yaml) — SDK version and dependency hints
- [analysis_options.yaml](analysis_options.yaml) — lint rules
- assets/ — images and audio used by the app

If anything in this file is unclear or you'd like more examples (asset loading, audio playback, or a suggested test file), tell me which area to expand.
