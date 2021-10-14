# Journal for my Midterm Project: Campus Cat Chase

## Idea:

The basic idea that I started with was an endless runner game, with the player playing as a cat, avoiding obstacles and catching rats. I sketched out my basic idea on paper
as I've shown below, with my three objects being the cat, the rats, and the obstacles.

![IMG_0122](https://user-images.githubusercontent.com/89835162/137334329-b6210497-6e21-4c37-80b0-6e4d961c9190.jpg)

As shown in the sketch above, I decided that my cat would move from left to right, whilst my obstacles and rats would move downwards so that it could somewhat mimic the
effect of a cat moving forward.

However, when I pitched my idea to Professor Michael in class, he suggested that it might become too complicated as my idea had too many working parts (3 objects in
total), and so I should consider simplifying it a bit.

## Day 1:

When I started working on my project, I decided to stick with my initial idea of having 3 objects -- however, I also kept what Michael had said in mind and so 
told myself that if I felt like I had overcomplicated things for myself I would simplify my game. I started by making my Cat class -- as the starting stage, I simply 
made a red circle that would have its starting position at the center of the screen, and then would move left and right when I pressed the keys. Then I added the image of the
cat, and in this way I made my cat that could move around the screen.

## Day 2:

Today I decided to make my obstacles class. I started off with creating my obstacles as black rectangles that would be placed randomly. Creating the class was fairly 
straightforward, but I had a lot of trouble figuring out how to randomly place the obstacles so that I could have three per row, and so that they wouldn't intersect so 
my cat could pass through them. I used the knowledge I had of sequences from math to create the for loop that randomly placed these obstacles. I created a nested loop, so three 
obstacles could be placed per row and then the loop would move onto the next row, and to slightly randomise their placements within what I deemed as a 'row', the loop would randomly 
add to the x and y co-ordinate of the previous obstacle (and in this way I could ensure they weren't too far apart). Once the inner for loop had iterated thrice, it would
move to the next row and so on. 

This is my code: 
<img width="433" alt="Screenshot 2021-10-14 at 6 32 15 PM" src="https://user-images.githubusercontent.com/89835162/137338650-9e71b7fc-9de9-4a0d-89eb-28649bf5e295.png">

I realised that I could also use the same code for placing my rats. 

## Day 3:

Today I decided to start with my collision detection. First I started with making a collision function to detect the collision between the cat and the obstacles. This
is where I encountered a lot of difficulties, as it was very hard to calculate the collision between a circle and a rectangle. I was stuck on this for a really long time
and so I decided to try again the next day. Instead, I made my boolean variables (startgame and gameover) to plan out how I would end and restart my game.

## Day 4:

I tried to work on the collision detection between the obstacles and cat once again, but it didn't end up working again and it was very glitchy. Just to test something out,
I changed my obstacles from rectangles to squares and realised that it was much easier to use the dist() function when I was trying to figure out how to detect
collisions between two circles. I remembered what Michael had said about my project having too many moving parts, and so I decided to modify my project a little bit.
Instead of having the cat avoid obstacles and catch mice, I decided to change it to the game being the cat just catching the mice and it would be won if the cat caught 30 rats. Changing my idea didn't need much work, since the rat class would be the exact same as the obstacle class, except the rats would be circles rather than rectangles. I did this and made a collision() function, using println to count the number of collisions to make sure that the collisions were in fact being detected, and realised that my code was finally working!! Then I added the image of the rat, and added a sound that would come when a collision occured. I also made a scoring mechanism where the score would keep increasing by 1 every time a collision occured.

## Day 5:

After figuring out the collision detection, the other aspects were fairly smooth sailing. I made my screen functions to help the program determine which stage of the game it currently was at (game starting or game ending). 

## Sources:

To figure out how to make my obstacles appear as if they were moving downwards, I used Dan Shiffman's purple rain tutorial (https://www.youtube.com/watch?v=KkyIDI6rQJI). I also used the Coding Train's snake tutorial to figure out how to move my cat sideways without it leaving the screen.
