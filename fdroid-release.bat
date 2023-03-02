
REM First:
REM 1. Create tag/release and pass it as an argument to this script
REM 2. Update the history.txt and push it, in order to change the latest commit ID

git pull origin

cd Android_LIB_Commons
git pull
git checkout --force %1
cd ..

cd Android_LIB_CommonsAds
git pull
git checkout --force %1
cd ..

cd Android_LIB_CommonsChess
git pull
git checkout --force %1
cd ..

cd Android_APP_ChessEngineBagatur
git pull
git checkout --force %1
cd ..

