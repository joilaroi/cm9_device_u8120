# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# configuration for touchscreen.
# frameworks/base/services/input/InputReader.cpp
# configuration for keyboard.
# frameworks/base/libs/ui/Keyboard.cpp
# frameworks/base/services/input/InputReader.cpp
# configuration for cursor.
# frameworks/base/services/input/InputReader.cpp
#

#touch.deviceType={touchScreen, touchPad, pointer, default}
#touch.deviceType = touchScreen
#touch.orientationAware = 1

keyboard.layout = qwerty
keyboard.characterMap = qwerty
keyboard.orientationAware = 1
keyboard.builtIn = 1

#cursor.mode = {navigation, pointer, default}
#cursor.orientationAware = 1

#touch.gestureMode={pointer,spots,default}

#touch.size.calibration={none, geometric, diameter, area, default}
#touch.size.calibration = geometric
#touch.size.scale = 1
#touch.size.bias = 1
#touch.size.isSummed = 1

#touch.pressure.calibration={none,physical,amplitude,default}
#touch.pressure.calibration = physical
#touch.pressure.scale = 0.01

#touch.orientation.calibration={none,interpolated,vector,default}
#touch.orientation.calibration = none

#touch.distance.calibration={none,scaled,default}
#touch.distance.scale
