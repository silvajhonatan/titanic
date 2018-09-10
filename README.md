# Motivation
I recently started to study more serious topics like Machine Learning and Data Science. To
accomplish the objectives that I've settled in my mind, first I started with the Data Science series by HarvardX. 
I just finished the first course "R Basics", before moving on to the next course, Data visualization, I wanted to practice a little bit what I've learned. For a while I wanted to explore the kaggle datasets and now seems the perfect opportunity to make it so. 
# Disclaimer
As my knowledge on the topic, R and Machine Learning, is yet supperficial, I've found a great resource to follow and perhaps explore a little bit more, you can find it all here http://trevorstephens.com/ .

# Kaggle Titanic Dataset

#### First attempt -- They all died
The most basic guess you could make is that they all died, and that was my first attempt, and guess what, it scored 62.679%.

![alt text](https://raw.githubusercontent.com/silvajhonatan/titanic/master/img/first_attempt.png)

#### Second attempt -- Gender model
Now we can start to analyse more the data, something you could try to see the correlation is between the genders, we
have in our database the $Sex column, with this we can analyse and see that 74.20% of the women survived against just
18.89% of the men. So now we can update our last guess with this new information, we can set to survived
all the women in our test dataset. This is our new score!  
![alt text](https://raw.githubusercontent.com/silvajhonatan/titanic/master/img/gender_attempt.png)
After that we could try to see some correlation between the survived column and the age, we can
create a new column if the person was under 18 or not. But as we can see this seems to not 
matter in this case (see the code).