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

PCB     | Pi pin | Pi ref  | Source ref | Comments
--------|--------|---------|------------|---------
LEDA    | 17     | 3.3v    |            | LED anode
REST    | 18     | GPIO 24 | RESET      | Pull low (via resistor) to reset- could use a button.
CS      | 8      | GPIO 14 | CS         | Always tied to ground.
RD      | 10     | GPIO 15 | RD         |
WR      | 12     | GPIO 18 | RW         |
RS      | 16     | GPIO 23 | DC         | Data/Command
VCC     | 1      | 3.3v    |            | J1 must be bridged to bypass 5v voltage regulator.
GND     | 6      | Ground  |            |
DB15    | 22     | GPIO 25 |            |
DB14    | 24     | GPIO 8  |            |
DB13    | 26     | GPIO 7  |            |
DB12    | 28     | GPIO 1  |            |
DB11    | 32     | GPIO 12 |            |
DB10    | 36     | GPIO 16 |            |
DB9     | 38     | GPIO 20 |            |
DB8     | 40     | GPIO 21 |            |
DB7     | 21     | GPIO 9  |            |
DB6     | 23     | GPIO 11 |            |
DB5     | 27     | GPIO 0  |            |
DB4     | 29     | GPIO 5  |            |
DB3     | 31     | GPIO 6  |            |
DB2     | 33     | GPIO 13 |            |
DB1     | 35     | GPIO 19 |            |
DB0     | 37     | GPIO 26 |            |

