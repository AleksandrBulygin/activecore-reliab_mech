// See LICENSE for license details.

//**************************************************************************
// Test program for interrupt controller
//--------------------------------------------------------------------------

#include "sfr.h"
#include "io.h"
#include "isr.h"

#define BUS_IQR_NUM 2
#define RED_COLOR 0x40000
#define GREEN_COLOR 0x20000
#define BLUE_COLOR 0x10000

//--------------------------------------------------------------------------
// Main

void SetLED(int value) {
  IO_LED = value;
}

void int_handler(int mcause) {
  SetLED(BUS_IQR_NUM+RED_COLOR);
}

int main( int argc, char* argv[] )
{
  ConnectISR(BUS_IQR_NUM, &int_handler);
  SFR_IRQ_EN = 0x1 << BUS_IQR_NUM;
  while (1) {}
}
