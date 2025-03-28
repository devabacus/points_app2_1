
# после обновления пакета
flutter pub cache clean
flutter clean
flutter pub get

dart run build_runner build
dart run build_runner watch -d

flutter pub upgrade 
flutter pub upgrade --major-versions

