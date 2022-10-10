# -*- coding:utf-8 -*-
from __future__ import division

import sys

sys.path.append('../../udm/sw')
import udm
from udm import *

import sigma
from sigma import *


udm = udm('COM7', 921600)
print("")

sigma = sigma(udm)
# sigma.run_app_tests()
# sigma.reset_buf()

firmware_filename = 'C:/Users/admin/Desktop/activecore-master/designs/rtl/sigma/sw/apps/matrix_mul.riscv'

# sigma.tile.loadelf(firmware_filename)

verify_data = [12837, 12051, 10757, 16590, 28310, 8393, 9368, 7162, 9753, 11680, 17268, 13690, 14821, 19622, 35659, 11520, 13084, 14225
, 11120, 27625, 17183, 14532, 10269, 19580, 25723]

sigma.hw_test_generic(sigma, "MAT_MUL", firmware_filename, 0.1, verify_data)

print(sigma.tile.udm.rdarr32(0x6000, len(verify_data)),'\n')

udm.disconnect()
