#!/bin/sh
set -e
echo "Starting CustomImports"

# Reset Remove if exist and add customImportPackage and customImportPath
IMPORT_PACKAGE="net_lotto_aus_widgets:"

IMPORT_PACKAGE_PLACE_HOLDER="#customImportPackage"
IMPORT_PACKAGE_PATH_PLACE_HOLDER="#customImportPath"

sed -i '' "s|${IMPORT_PACKAGE}|${IMPORT_PACKAGE_PLACE_HOLDER}|g" ../../pubspec.yaml

IMPORT_PACKAGE_PATH_AUS="path: ./packages/net_lotto_aus_widgets"
IMPORT_PACKAGE_PATH_HEAD="path: ./packages/net_lotto_headquarter_widgets"
IMPORT_PACKAGE_PATH_GERM="path: ./packages/net_lotto_germ_widgets"
IMPORT_PACKAGE_PATH_USA="path: ./packages/net_lotto_usa_widgets"


sed -i '' "s|${IMPORT_PACKAGE_PATH_AUS}|${IMPORT_PACKAGE_PATH_PLACE_HOLDER}|g" ../../pubspec.yaml
sed -i '' "s|${IMPORT_PACKAGE_PATH_HEAD}|${IMPORT_PACKAGE_PATH_PLACE_HOLDER}|g" ../../pubspec.yaml
sed -i '' "s|${IMPORT_PACKAGE_PATH_GERM}|${IMPORT_PACKAGE_PATH_PLACE_HOLDER}|g" ../../pubspec.yaml
sed -i '' "s|${IMPORT_PACKAGE_PATH_USA}|${IMPORT_PACKAGE_PATH_PLACE_HOLDER}|g" ../../pubspec.yaml
#sed -i 's/original_dependency: ^1.0.0/new_dependency: ^2.0.0/' pubspec.yaml
# sh .ci_scripts/demo.sh env here evn should be the aus,germ,usa

  if [[ $1 == "" ]]; then
    env=usa
  else
    env=$1
  fi
echo "Selected environment $env"

# on the basis of evn provided by script add respective packages
#Replace bellow line with our packages and path
  #customImportPackage
    #customImportPath

IMPORT_PACKAGE="net_lotto_$env\_widgets:"

sed -i '' "s|${IMPORT_PACKAGE_PLACE_HOLDER}|${IMPORT_PACKAGE}|g" ../../pubspec.yaml

IMPORT_PACKAGE_PATH="path: ./packages/net_lotto_$env\_widgets"

sed -i '' "s|${IMPORT_PACKAGE_PATH_PLACE_HOLDER}|${IMPORT_PACKAGE_PATH}|g" ../../pubspec.yaml

echo "Ending CustomImports"