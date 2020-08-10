# MATLAB-Report-Generator
  Making reports for Matlab tasks is a tedious task. This project intends to ease that process.
  Here is a sample tutorial to show you how easy it is. Add this file to the source code folder and run it through Matlab.
  
  ``` 
  startt("MyReport")

  heading("Task 1")
  paragraph("Plot a sine wave")
  code("sine_wave")
  codeoutput("sine_wave")

  endd()
  ```
  
  This is the sine_wave.m file we are including in our report
  
  ```
  x = 0:pi/100:2*pi;
  y = sin(x);
  plot(x,y)
  ```
  
  And this is the result stored in folder "Matlab Reports Here" with filename "MyReport.docx"
  
  <img src="./Readme%20Files/sinewave%20example.PNG" width="100%"></img>
