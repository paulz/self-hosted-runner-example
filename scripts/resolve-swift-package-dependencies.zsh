#!/bin/zsh

if [[ $# -eq 1 ]]
then
    echo Using Clone folder: $1
else
    cat << EndOfUsage
Resolve Swift Packages Dependencies with one clean retry

Usage:
$ZSH_ARGZERO directory

directory is where to clone dependent Swift Packages

EndOfUsage
    exit 1
fi

xcodebuild -resolvePackageDependencies -clonedSourcePackagesDirPath $1

if [[ $? == 0 ]]
then
    echo Resolved Swift Packages Dependencies on the first try
else
    echo Removing clone folder: $1
    rm -rf $1
    echo ::notice:: Retrying package resolution
    xcodebuild -resolvePackageDependencies -clonedSourcePackagesDirPath $1
fi
