
# Analyzing Kickstarter Projects


The aim of the project is to understand what might influence the success of a campaign on Kickstarter 
[Data source source on Kaggle](https://www.kaggle.com/datasets/kemical/kickstarter-projects/data)

The SQL code suggests that the projects are failing due to a lack of funding, rather than a lack of backers. This can be inferred from the SELECT statement in line 34, which includes a CASE statement to determine the funding status of each project. The CASE statement checks the ratio of pledged amount to the goal amount, and assigns a funding status based on that ratio.

If the ratio is greater than or equal to 1, the project is considered "Fully funded". If the ratio is between 0.75 and 1, the project is considered "Nearly funded". Otherwise, if the ratio is less than 0.75, the project is considered "Not nearly funded".

By examining the funding status of failed projects, the code is able to determine that the main reason for project failure is a lack of funding, as opposed to a lack of backers.
[Table results.html](results.html)
