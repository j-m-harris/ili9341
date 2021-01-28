# ili9341

A Raspberry pi framebuffer driver for the ili9341 lcd driver using 16bit
parallel transfer.

Tested on PCB marked TFT_320QDT_9341

* Ensure VCC connected to 3.3v
* Ensure J1 is bridged, since we aren't using 5V.

ili9341 datasheet: https://www.newhavendisplay.com/app_notes/ILI9341.pdf

## Installation

* Install kernel headers and build toolchain.
* `make`
* `insmod ili9341.ko`

This will create a new framebuffer e.g. `/dev/fb1`

If you're developing, install.sh will unload the module, compile and install
the new one and write some random data to the framebuffer.

## Wiring

R-PI Model B v2 GPIO
LCD GPIO p1 p2 GPIO LCD
      3v--* o--5v
      02--o o--5v
      03--o o--GND
DC----04--o o--14---RD
     GND--o o--15---WR
RESET-17--o o--18---DB10
CS----27--o o--GND
      22--o o--23---DB11
      3v--o o--24---DB12
IM0---10--o o--GND
DB8---09--o o--25---DB13
DB9---11--o o--08---DB14
     GND--o o--07---DB15
        p25 p26

