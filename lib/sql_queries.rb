# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"SELECT Projects.title, SUM(Pledges.amount) FROM Pledges INNER JOIN Projects ON Pledges.project_id = Projects.id GROUP BY Pledges.project_id ORDER BY Projects.title ASC;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT Users.name, Users.age, SUM(Pledges.amount) FROM Pledges INNER JOIN Users ON Pledges.user_id = Users.id GROUP BY Pledges.user_id ORDER BY Users.name ASC;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT Projects.title, (SUM(Pledges.amount) - Projects.funding_goal) FROM Pledges INNER JOIN Projects ON Pledges.project_id = Projects.id GROUP BY Pledges.project_id HAVING (SUM(Pledges.amount) - Projects.funding_goal >= 0) ORDER BY Projects.title ASC;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT Users.name, SUM(Pledges.amount) FROM Pledges INNER JOIN Users ON Pledges.user_id = Users.id GROUP BY Pledges.user_id ORDER BY SUM(Pledges.amount), Users.name;"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT Projects.category, Pledges.amount FROM Pledges INNER JOIN Projects ON Pledges.project_id = Projects.id WHERE Projects.category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"SELECT Projects.category, SUM(Pledges.amount) FROM Pledges INNER JOIN Projects ON Pledges.project_id = Projects.id GROUP BY Projects.category HAVING Projects.category = 'books';"
end
