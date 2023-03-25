<p align = "center">
     <b> 2D DTFT of an Image for Image Processing using MATLAB </b>
</p>

This project is an implementation of the 2D Discrete Fourier Transform on existing images using filtering in the MATLAB program.
To run the program, save the program file and image "butterfly_512" in the same file directory and import the image to the program according to the location of the image file.

The image used is a 512x512 dimension image imported into the MATLAB program and converted to grayscale so that it can be processed in 2D. The image will then be filtered using 2D Filter H with the following frequency response:

<p align="center">
     <img width=300px height=auto alt="image" src="https://user-images.githubusercontent.com/78911479/227729183-ce5ffa91-de3a-4dd4-8494-2096831da9af.png">
 </p>
 
<p align="center">
<img width=700px height=auto alt="image" src="https://user-images.githubusercontent.com/78911479/227729284-2edb8813-acd9-43dc-b1c3-71a1c987caa0.png">
 </p>
 
2D Discrete-Time Fourier Transform (2D DTFT) is then applied to the original image and the filtered image with 2D Filter H to show a comparison between the two. The following is the output of the 2D DTFT results on the original image and the filtered image which are represented in the magnitude and phase of the two images:

<p align="center">
<img width=700px height=auto  alt="image" src="https://user-images.githubusercontent.com/78911479/227729149-2832af18-7a07-45d9-bf18-37c11e83e6dd.png">
 </p>
 
We can obtain the real and imaginary components of the filtered image that has been applied to 2D DTFT, in the form u and v. The next calculation shows a comparison of the changes in the values of u and v, namely at u = 0 and 0.5 and at v = 0 and 0.5, whose magnitudes are sketched as follows:

<p align="center">
<img width=700px height=auto  alt="image" src="https://user-images.githubusercontent.com/78911479/227729254-3ccfc0ba-8878-42c7-b1ac-136e648698c2.png">
</p>


