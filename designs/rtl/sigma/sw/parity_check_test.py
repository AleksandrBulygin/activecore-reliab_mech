from sigma import *

udm = udm('COM9', 921600)
print("")

sigma = sigma(udm)

print("### SIMULATION STARTED ###")
sigma.udm.wr32(0x00100010, 4)
sigma.tile.loadelf('apps/irq_handler.riscv')

sigma.udm.wr32(0x80000010, 0xfe55aaff)

sigma.udm.rd32(0x80000010)

leds = sigma.udm.rd32(0x80000000)

irq_num = leds & 65535
three_color_led = leds >> 16

if (three_color_led == 4):
	print("Interruption: ", irq_num)
else:
	print("Successful completion of reading")


print("### TEST PROCEDURE FINISHED ###")

udm.disconnect()
