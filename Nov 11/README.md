# Creating a circuit using Analog and Digital

## Photograph
![IMG_5810](https://user-images.githubusercontent.com/89835162/141179170-26802d0a-7255-412b-a3a1-50dfb24d2d31.jpg)

## Schematic

![IMG_0123](https://user-images.githubusercontent.com/89835162/141179215-b2a8d0d6-6d42-4709-8a0e-18d2d7bd4b0c.jpg)

## Video of Circuit
![nov11compressed](https://user-images.githubusercontent.com/89835162/141180884-27924acc-de85-4259-9a94-f0c486637dc7.gif)


As seen in the video above, how the circuit works is as follows:

The LDR pin is used to turn the LED on and off -- it is on when there is enough brightness, and off when there isn't. During the condition when the LED is on, 
users can press on the switch to trigger the fade function (I got the code for this from the examples that we had done in class). 

## My Process

First, I started by just assembling the LED on the circuit with the LDR pin, and setting it up so that the LED pin would be turned on and off based on the brightness that
the LDR pin detected. I ran into a big problem here, as my LED would simply not turn on -- I had set the condition for it to turn off if the value that the LDR detected
was greater than 400. I was stuck on this for quite a while, but then I used the Serial.println function and saw that for some reason my LDR readings weren't going above 250-300, 
which is why my LED would not turn on. Because I couldn't figure out what was causing this, I decided to use a temporary fix and set my condition for the LED to be turned on if
the LDR reading was above 50. Once I did this, it started working perfectly. I still haven't been able to figure out why my LDR was giving these readings though.

Once I had set that up, I added the switch, which was fairly easy considering we have been working with switches for quite a long time now. Once this was done, I made my 
code on Arduino. While doing this I really understood the importance of the order of the code, since initially I had put the button ON command before the button OFF, and my
code did not work as intended. Once I switched their orders, it worked well.

Overall, I had a very fun time working on this!!
