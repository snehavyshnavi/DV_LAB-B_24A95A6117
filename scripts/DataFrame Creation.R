#create a dataframe
emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c('Divya', 'Niha', 'Lucky', 'Sree', 'Nandu'),
  salary = c(1000, 700, 956, 832, 659),
  start_date = as.Date(c("2021-10-15", "2022-03-24", "2021-09-11", "2022-05-08","2022-08-16")),
  stringAsFactors = FALSE
) 
print(summary(emp.data))