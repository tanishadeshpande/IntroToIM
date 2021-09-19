# Assignment 3: 

## Creating Generative Art using Object Oriented Programming

For this assignment, I created the following piece of art:

<img width="496" alt="Screenshot 2021-09-19 at 11 29 55 PM" src="https://user-images.githubusercontent.com/89835162/133941084-1165966c-2f0f-4f17-9c1d-365aae3861bb.png">

I made it generative in the sense that the stars above the garden are placed randomly. Moreover, the garden is also randomised -- the position of the flower is randomised, so is the height of the flower stems is randomised, within a specific window, and the image that is placed on each stem is also randomly chosen.

Thus, I have 2 classes in this program: flowers and stars. 

I started by making the flowers class. Initially, before I uploaded the images, I just made the flowers as circles on top of the lines so the general outline for the flower could be created. Thus, I first focused on the random placement of the flowers, which at the moment were just colored circles on top of green colouired lines.

Once I was done creating the flower class, I decided to create the stars class. I found this easier to do than the flowers, as the process was fairly similar. I created the stars as two triangles on top of each other.

The hardest part for me was adding the images and randomising them. I thought I would use a similar technique as I had for my introduction to CS final project to randomise images, so I saved the images as img0, img1 and img2, intending to just use the command loadImage("img"+random(0,3)+".png"). However, I didn't know how to use the PImage function, and so I went to processing.org to figure out how to do that. I also used the following stack overflow website: https://stackoverflow.com/questions/49971209/show-random-image-on-processing, which helped me figure out how to make an array of images. Following this, the process to add random images was fairly intuitive. 

I really enjoyed this assignment, even though it took me some time to figure out what I wanted to make and how to make it.
