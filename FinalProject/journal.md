# Day 1

Today I started building my base switches for the piano. After looking through a lot of materials, I realised the best. one to use was the cardboard box that the 
arduino materials came in because it had a flap that would move up and down. I spent all of today just making my circuit on the cardboard and on the breadboard. I realised
it would be better if I used longer wires to connect the breadboard to the arduino, so I went and got that. I stuck aluminium foil at the bottom of each key, and had two 
thin strips on the bottom that were connected to the wires that connected to the breadboard to make a switch. Finally, I connected a piezo buzzer for the time being to 
make sure the switches were working. All of this was fairly simple, as its stuff we have already done before. After this was done, I had a rough piano that would play sounds
from the piezo buzzer each time a key was pressed.

![29216757-7CA9-4C71-983C-D9FC2A803545](https://user-images.githubusercontent.com/89835162/146586582-ab818f52-8a3a-4cb9-b835-f33550d5a9a6.JPG)


https://user-images.githubusercontent.com/89835162/146586657-6d38ad26-a234-4ab2-a40d-962fcfe9e55a.MP4


# Day 2

Today I started working on the processing part of my project. I first wrote the code on arduino that would send serial output to processing. I did it so that each key would send its
letter (for example C would send 'C') to processing. Then, I created a random program that would just change the background of the screen everytime the key was pressed, as I did not want
to start working with sound until I was sure my switches worked. However, for the longest time the keys did not work. I thought the circuit might've been loose, so I tried to fix that, but when
I looked at the Serial.println() command on arduino, I could see that the letters were printing everytime I pressed a key. This meant that the problem was with my processing code, and not with 
my circuit or arduino code. I realised I could use the println() command to see just what I was receiving from arduino, and when I did that I saw that everytime I pressed the C button, processing was
receiving 67. This was when I realised that the output it was receiving was actually in ASCII. So I changed my if statements to ASCII (so for the C button it was if val == 67, for D it was if val == 68, and 
so on), and the code started working! The background would change everytime I pressed a key and the sounds would still come from the piezo buzzer. 

# Day 3

Today I decided to introduce the sound. I spent about an hour looking for sound files for each key. I couldn't find anything that was clear or short enough, but then I remembered I had a keyboard in my room,
so I could just record the sounds myself! Today I spent all of my alloted time just making the recordings for my keys. I recorded two whole octaves, even though I'm not fully sure if I'm going to use two octaves in
my piano.

# Day 4

Today I started by making an array of the sounds for my piano. This was similar to a code I had written in class way back when we were learning about sound files in Fall 1, so this was fairly easy to make. Then, along with the changing background I added a soundfile.play() command in each of my If loops so that the button being pressed would trigger a sound file. However, there was a problem with the sounds as they would all play simultaneously and very quickly one after the other. I realised that this was because the information was being sent to processing too quickly, and so in my arduino code I added a delay() function so that the output was not received too fast. When I did this, the sound for the key I was pressing started playing fine. So far, I had only programmed the C key. 

# Day 5

Today, I decided to add the sounds for the other keys. This worked well, but the only issue was that there was a slight overlap between the two sounds when one was released and the other was pressed down. To fix this, I went to the reference page for Sound on the processing website, and found out about the soundIsPlaying() function. Doing this, I made a function that would check if another sound was playing when a key was pressed, and if it was then stop the previous sound so the next sound could play. By doing so, I made it possible for me to play chords too. Once this was done, my piano was done. After this all I had to do was the visualisation part.

# Day 6

Today I worked on the visualisation part. It was easy, as it was simply generative art and we had already done this multiple times in Fall 1. I assigned a colour to each key, and then coded the processing code. This was very simple, but once this was done I realised I did not like the shades of my shapes very much so I changed it to make them more pastel. I thought it would also look nicer if opacity was randomised, and so I randomised that between 50 and 225 too, and this made it look much cleaner. Finally, it began to work well together. 

# Day 7

After presenting it in class, I realised it would look nicer if the screen with the art was full screen. So I changed the dimensions of the screen from size(600,600) to fullScreen(). I also added a keyPressed function so that the screen would be cleared if a key on the laptop was pressed incase anyone wanted to restart their art piece.

Overall, I had a lot of fun making this as I got to combine what I had learnt with music, which I am genuinely interested in!
