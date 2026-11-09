TARGET := iphone:clang:latest:14.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

# مكتبة مستقلة (dylib) بدون أي اعتماد على Substrate / ElleKit
LIBRARY_NAME = AflatoonSuite

AflatoonSuite_FILES = Tweak.xm
AflatoonSuite_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
AflatoonSuite_FRAMEWORKS = UIKit Foundation QuartzCore AVFoundation
AflatoonSuite_LOGOS_DEFAULT_GENERATOR = internal
AflatoonSuite_USE_SUBSTRATE = 0

include $(THEOS_MAKE_PATH)/library.mk
