# Assignment 4: Data Visualisation


For this assignment, I decided to create my own data set of movies and their ratings. I got the information for the movies I had watched from my Letterboxd account, as I have a record of all the movies I watch, and then I got their ratings off of rottentomatoes.com. Using this dataset, I created the following data visualisation:

![assignment4](https://user-images.githubusercontent.com/89835162/135317306-881a9e2e-e982-471c-8676-df9e97f83777.png)

Here, each circle represents a movie. The circles are either green or red -- they are green if their RT rating is 70 or above, and are red if the rating is below 70. Moreover, each circle differs in size based on the rating. When the circle is green, it will be bigger if the rating is closer to 100 -- so the more positive the rating, the bigger the circle. Similarly, for the red circles, it will be bigger if the rating is closer to 0, so it will be bigger when the rating is more negative. 

Initially instead of circles I had decided to display the names of the movies in either green or red, but then I realised it looked really messy and circles looked much neater and easier to visualise. I wanted to add a mouseClicked() function that would display the names of the movies, but I found it hard to implement that, so if I had to build more on this I think I would add that function. 
