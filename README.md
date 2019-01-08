Breakout board for VoCore2 CPU module
=====================================

| [<img src="https://github.com/electroniceel/vocore2-breakout/raw/master/photos/top-lowres.jpg" width=437 alt="Top side">](https://github.com/electroniceel/vocore2-breakout/raw/master/photos/top-highres.jpg) | [<img src="https://github.com/electroniceel/vocore2-breakout/raw/master/photos/bottom-lowres.jpg" width=393 alt="Bottom side">](https://github.com/electroniceel/vocore2-breakout/raw/master/photos/bottom-highres.jpg) |

Main Features
-------------

- Uses a bare [VoCore2 CPU module](https://vocore.io/v2.html)
- core components on board
  - 1x RJ45 10/100 Ethernet
  - 1x USB-Host
  - 1x microSD
  - 12 VDC in with Buck-converter to 5V
  - RTC (MicroCrystal RV-8803-C7) and CR2032 battery
  - TCN75A or similar I2C temperature sensor
- Other pins broken out to 2.54mm pin headers (2x20)
- Separate pin headers for the console (UART2), protected by 74LVC2G17 buffer

Layout & Schematics
-------------------

See the ["kicad" directory](https://github.com/electroniceel/vocore2-breakout/tree/master/kicad).

There is also a [PDF version of the schematics](https://github.com/electroniceel/vocore2-breakout/raw/master/schematics.pdf) available.

Parts
-----

See the KiCad part data in the schematics and the linked footprints.

The only non-obvious part is the microSD socket. It is a common model found at Chinese suppliers.
The insertion/removal type is push-push (push-in, push-out).

It goes under various names and model numbers, often called "TF" or "TransFlash". Sometimes you
find more detailed numbers, like "TF09-2-12B" or "TF-01A".

You can get them from for example these offers:
- https://lcsc.com/product-detail/Connector-Card-Sockets_Korean-Hroparts-Elec-TF-01A_C91145.html
- https://www.aliexpress.com/item//32603008211.html
- https://www.aliexpress.com/item//32637213532.html

No warranties for correctness of these offers.


Solderbridges
-------------

The board contains two sets of solderbridges to select between features:

#### J3 & J4

You can select to which I2C bus to connect the onboard I2C components like RTC and temperature sensor.

You can select between 
1. the hardware I2C of the MT76x8, pins I2C_SD and I2C_CLK
2. a software emulated I2C bus on GPIO39 and GPIO40, using the driver i2c-gpio

#### J5 & J6

Select if you want the USB bus on the USB-A-Socket at the edge of the board or on the pin headers.
The USB bus shouldn't be connected to both because of reflections on the stub traces.

OpenWRT patches
---------------

- OpenWRT upstream already contains support for the VoCore2
- But the Device Tree there is a bit "sparse" and some features are disabled
- So I have created a new Target Profile called "VoCore2-Breakout" and some small adaptions to make the features work
- You can find this work in the ["openwrt" directory](https://github.com/electroniceel/vocore2-breakout/tree/master/openwrt)
- Use either the 0003a- or 0003b- patch based on how the solderbridges J3 & J4 are set

To use these:
1. First prepare the OpenWRT build system as described in https://openwrt.org/docs/guide-developer/build-system/start
2. Apply my patches before running "make menuconfig"
3. Select Target "MediaTek Ralink MIPS", Subtarget "MT76x8 based boards", Target Profile "VoCore2-Breakout"
4. Build

License
-------
![CC-BY](https://licensebuttons.net/l/by/4.0/88x31.png)

This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

Please link to https://git.io/fpKW4 for attribution.
