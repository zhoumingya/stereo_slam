#include <opencv2/opencv.hpp>

//#include <iostream>
//#include <string>
//#include <sstream>

using namespace cv;
using namespace std;

int main ( int argc, char **argv )
{
    VideoCapture capture(0);
    Mat image;
    if(!capture.isOpened()) { cerr << " ERR: Unable find input Video source." << endl;
      return -1;
    }

    capture >> image;
    if(image.empty()){ cerr << "ERR: Unable to query image from capture device.\n" << endl;
      return -1;
    }

    int w = image.size().width, h = image.size().height;
    Rect rect_left(0,0,w/2, h),rect_right(w/2,0,w/2,h);
    Mat image_left = image(rect_left);
    Mat image_right = image(rect_right);

    int key = 0;
    int img_num = 1;
    string strLeft = "Left",strRight = "Right";
    string strImgSuffix = ".tif";

//    stringstream ssLeft,ssRight;
//    ssLeft<<strLeft<<img_num<<strImgSuffix;
//    ssRight<<strRight<<img_num<<strImgSuffix;
//
//    cout<<ssLeft.str()<<ssRight.str()<<endl;
//    return 0;

    while(key != 'q')
    {
        capture >> image;

        imshow(strLeft, image_left);
        imshow(strRight, image_right);

        if(key == 's')
        {
            stringstream ssLeft,ssRight;
            ssLeft<<strLeft<<img_num<<strImgSuffix;
            ssRight<<strRight<<img_num<<strImgSuffix;

            imwrite(ssLeft.str(), image_left);
            imwrite(ssRight.str(), image_right);

            cout<<"Saved "<<ssLeft.str()<<" "<<ssRight.str()<<endl;
            img_num++;
        }
        key = waitKey(1);
    }
    return 0;
}