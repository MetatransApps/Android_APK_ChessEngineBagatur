# License

The license is GPL-2.0-only

# Overview

This is the repository, which builds this Android game "Bagatur Chess Engine with GUI: Chess AI", https://metatransapps.com/bagatur-chess-engine-with-gui-chess-ai/ developed by Metatrans Apps.

# Build APK

In order to build it, you need to clone this repository as well as its dependencies in one and the same git client's root directory (because the Gradle build uses relative paths on the file system, like './../')
All the dependencies are these 4 repositories:
  -  https://github.com/MetatransApps/Android_LIB_Commons
  -  https://github.com/MetatransApps/Android_LIB_CommonsAds
  -  https://github.com/MetatransApps/Android_LIB_CommonsChess
  -  https://github.com/MetatransApps/Android_APP_ChessEngineBagatur

Just clone all these 5 repositories (the current one + the 4 dependencies) in one and the same directory.
Then the structure could be imported in Android Studio or the Gradle build could be started directly.
