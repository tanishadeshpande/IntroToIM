# Create a Musical Instrument using digital and analog inputs

For this assignment, I was inspired by the example we had done in class where the buzzer would play a pre-programmed melody. So, I got a copy of the 'pitches' file that was used, and thought I could use it to program other songs. I thought this would be a great way to combine this assignment and my existing knowledge of arduino with my knowledge of musical theory. As I already knew how note lengths worked, and could read sheet music, I simply made two functions for two different tunes: happy birthday and twinkle twinkle little star. The circuit was almost the same as the circuit for last week. The schematic is attached below:


![IMG_0124](https://user-images.githubusercontent.com/89835162/143785098-8eb2ad62-8171-4a58-a07f-730af73789f5.jpg)


When the lights are bright, the button being pressed leads to happy birthday being played. This is the link to the video:

https://drive.google.com/file/d/171CvJqsWk4SqmMNnTfs88Y23JJDCk05-/view?usp=sharing

When the lights are dim, the button being pressed leads to twinkle twinkle little star being played. This is the link to the video:

https://drive.google.com/file/d/1r2TJes_2g4vtTgKzyYwGFWFOY2_U8LQX/view?usp=sharing

I really enjoyed this assignment, as it allowed me to toy around with music, and combine music with IM which was super fun and interesting. One problem that I would say I encountered was with the values of the LDR sensor again -- I realised that in order to figure out the range for bright and dim I should always use the serial.println function, as that always helps me figure out the cut off range for each function. 
