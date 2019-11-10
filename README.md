This is a extension to the code from qmarco/Ackmaniac with own adaption to simplify and describe the function on a XH18 display.
- Disabled eMTB mode
- Disabled BOOST mode

Change of Achmaniac in relation to qmarco:
*Biggest change is that the software controls the motor current based on the torque sensor insead of the battery current.
Reason is that motor current is equal to torque so the result should be a smoother motor assistance.*

## XH18 descriptions
- OVERTEMPERATURE -> E06
- EBIKE WHEEL LOCKED -> E04
- OVERVOLTAGE -> E08

functions:
- DEFAULT PARAMETERS -> E02 (Level 0)
- STREET MODE ENABLED -> E02 (Level 1)
- OFFROAD MODE ENABLED -> E03 (Level 1)
- ~~BOOST MODE ENABLED -> E03 (Level 2)~~
- ~~BOOST MODE DISABLED -> E02 (Level 2)~~
- ~~EMTB MODE ENABLED -> E03 (Level 3)~~
- ~~EMTB MODE DISABLED -> E02 (Level 3)~~

To switch from one mode to another with the XH18 display, press the "power" button twice.
The "i" button only changes from odometer to tripmeter and resets .

Examples for the XH18 screen:
- level 0 selected: (E02 = DEFAULT ON). Reset all modes to default settings
- level 1 selected: (E02 = STREET ON, E03 = STREET OFF) or...
- level 1 selected: (E03 = OFFROAD ON, E02 = OFFROAD OFF).
- ~~level 2 selected: (E03 = BOOST ON, E02 = BOOST OFF).~~
- ~~level 3 selected: (E03 = eMTB ON, E02 = eMTB OFF).~~




## discussion

Endless Sphere:
https://endless-sphere.com/forums/viewtopic.php?f=30&t=98281

italian forum:
http://www.jobike.it/forum/topic.asp?TOPIC_ID=76426&whichpage=1

english forum:
https://endless-sphere.com/forums/viewtopic.php?f=30&t=98281

german forum:
https://www.pedelecforum.de/forum/index.php?threads/software-f%C3%BCr-tsdz2-sfm-du-250-350-mittelmotor-umbausatz.50939/

