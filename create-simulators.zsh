#!/bin/zsh

scriptDir=${0:a:h}

deleteAndCreate() {
  xcrun simctl delete "$1"
  xcrun simctl create "$1" com.apple.CoreSimulator.SimDeviceType.iPad-mini-6th-generation 2> /dev/null
}

createSimulatorWithContact() {
  deleteAndCreate "ipad-runner$1"
  xcrun simctl boot "ipad-runner$1"
  xcrun simctl addmedia "ipad-runner$1" "$scriptDir/contact-with-deep-link.vcf"
}

for i in {1..7}
do
    createSimulatorWithContact $i &
done

deleteAndCreate "ipad-with-external-display" &

wait
echo DONE
