# Project Description

Right after we learnt about the Piezo buzzer in class, I knew I wanted to do something related to music and so when the time came to decide our final projects, I decided 
I wanted to build a piano using arduino. This was the basic idea that I started with, and then as I continued building it I thought it would be a cool idea to add a visual element
to the music that was being created on the music which is how I came upon my final idea: a piano that would create art on the screen. 

This image is of the physical piano, with each key colour corresponding to the color of the shape that is drawn on the screen:
![2556DB80-41E0-4661-97DA-2FFF1DEC1565](https://user-images.githubusercontent.com/89835162/146582581-9e24a3b1-08d8-4f4a-b1af-33789daee24c.JPG)

The following video is of the visual output. As we can see, the shape, size and position is randomised, and the colour of these is based on the colour of the key that is
pressed:

https://user-images.githubusercontent.com/89835162/146582592-459da66a-c548-4d2c-a4ac-a587a576efb1.mov

# Schematic

![IMG_0133](https://user-images.githubusercontent.com/89835162/146583149-3aea08a2-8297-4ef2-80de-0f37305f34b0.jpg)


Each key was a switch, and pressing down on it connected the circuit as can be seen in the schematic.

# Difficulties

I think the first difficulty I had was figuring out how I could make the switches. I didn't want to use buttons, and wanted to create something that looked more like an 
actual piano. I contemplated using a bunch of materials, including coffee sleeves and paper clips, but finally settled upon cardboard and aluminium foil. 

I also had some difficulties with the serial output of my switches. I forgot that the output in processing would be in ASCII, and so for the first few tries it did not work and 
I thought something was wrong with my code. However, then I used the println() function on processing to see what was being sent from arduino to processing, and finally realised it was
in ASCII and so I adjusted my if conditions and it finally started working! 

A third difficulty I had was that I was receiving the output from the arduino too quickly, and that was messing up the sound that was being outputted. I solved this using the delay() function 
on arduino, and after tinkering around with it for a bit I finally settled upon the correct time that it needed to be delayed for. 

A final difficulty I faced was that all my sounds would play simultaneously when I pushed multiple buttons one after the other. I realised this was because two sounds were playing at the same time
and would not stop -- to fix this, I created a function that would stop playing the previous sound if a new button was pressed. This helped stop the echoing that was happening, and made the piano sound
much clearer. 

However, one thing I could not fix was a disturbance in the sound that would come after the piano was played continuously for more than a few minutes. My guess is that it was because the program was
being overloaded with commands, and everytime I restarted the program the problem would fix itself.
