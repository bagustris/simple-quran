# More information: https://wiki.ubuntu.com/Touch/Testing
#
# Notes for autopilot tests:
# -----------------------------------------------------------
# In order to run autopilot tests:
# sudo apt-add-repository ppa:autopilot/ppa
# sudo apt-get update
# sudo apt-get install python-autopilot autopilot-qt
#############################################################

all:

autopilot:
	chmod +x tests/autopilot/run
	tests/autopilot/run

check:
	qmltestrunner -input tests/unit

run:
	/usr/bin/qmlscene $@ simple-quran.qml
