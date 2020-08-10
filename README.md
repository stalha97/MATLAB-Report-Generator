# MATLAB Report Generator
  Making reports for Matlab tasks is a tedious task.<br>
  Here is a sample tutorial to show you how easy it is with this project.<br>
  
  We wrote some code <b>sine_wave.m</b> and now we want to generate a simple report for it
  ```
  x = 0:pi/100:2*pi;
  y = sin(x);
  plot(x,y)
  ```
  
  <br>Add this file to the <b>"Source Code"</b> folder and run it in Matlab. <b>(You can give any name to file)</b>
  ``` 
  startt("MyReport")

  heading("Task 1")
  paragraph("Plot a sine wave")
  code("sine_wave")
  codeoutput("sine_wave")

  endd()
  ```
  
  <br>That's it. The report will be stored in the folder <b>"Matlab Reports Here"</b> with filename of <b>"MyReport.docx"</b>
  
  <img src="./Readme%20Files/sinewave%20example.PNG" width="100%"></img>
