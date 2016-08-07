# 增加一个可执行的二进制
ADD_EXECUTABLE( test_main test_main.cpp )

# 增加opencv的依赖
FIND_PACKAGE( OpenCV REQUIRED )

TARGET_LINK_LIBRARIES( test_main ${OpenCV_LIBS})