# MATLAB Report Generator
  Making reports for Matlab tasks is a tedious task.<br>
  Here is a sample tutorial to show you how easy it is with this project.<br>
  Add this file to the source code folder and run it through Matlab.
  
  ``` 
  startt("MyReport")

  heading("Task 1")
  paragraph("Plot a sine wave")
  code("sine_wave")
  codeoutput("sine_wave")

  endd()
  ```
  
  This is the <b>sine_wave.m</b> file we are including in our report
  
  ```
  x = 0:pi/100:2*pi;
  y = sin(x);
  plot(x,y)
  ```
  
  And this is the result stored in folder <b>"Matlab Reports Here"</b> with filename of <b>"MyReport.docx"</b>
  
  <img src="./Readme%20Files/sinewave%20example.PNG" width="100%"></img>
