# -*- coding: utf-8 -*-
"""
Created on Mon Oct 24 12:31:16 2022

@author: admin
"""

# -*- coding:utf-8 -*-
from __future__ import division

import sys

sys.path.append('../../udm/sw')
import udm
from udm import *

import sigma
from sigma import *


udm = udm('COM9', 921600)
print("")

sigma = sigma(udm)


sigma.udm.wr32(0x00100010, 4)
sigma.udm.wr32(0x80000010, 0xfe55aaff)

udm.disconnect()