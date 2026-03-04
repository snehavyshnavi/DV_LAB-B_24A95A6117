exam_data = data.frame(
  name = c('Divya', 'Sree', 'Lucky', 'Nandu', 'Sam', 'Dhanya', 'Prasanna', 'Niha', 'Tulasi'),
  score = c(9.0, 8, 8.5, 7.5, 7.6, 8.7, 8.8, 7.23, 9.9),
  attempts = c(1, 2, 1, 3, 4, 1, 2, 3, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
print("Extract 3rd and 5th rows with 1st and 3rd columns:")
result = exam_data[c(3, 5), c(1, 3)]
print(result)