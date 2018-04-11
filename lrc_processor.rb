# Inspired by https://www.practicalai.io/implementing-classification-using-logistic-regression-in-ruby/
require_relative 'laura_dataset'
require 'pry'

puts 'what'
puts 'hm'

require 'csv'
require 'liblinear'

final_dataset = LAURA_DATASET.shuffle
x_data = final_dataset.map{|element| [element[0]]}
y_data = final_dataset.map{|element| element[1]}

# Divide data into a training set and test set
test_size_percentange = 20.0 # 20.0%
test_set_size = x_data.size * (test_size_percentange/100.to_f)
test_x_data = x_data[0 .. (test_set_size-1)]
test_y_data = y_data[0 .. (test_set_size-1)]
training_x_data = x_data[test_set_size .. x_data.size]
training_y_data = y_data[test_set_size .. y_data.size]

model = Liblinear.train(
  { solver_type: Liblinear::L2R_LR },   # Solver type: L2R_LR - L2-regularized logistic regression
  training_y_data,                      # Training data classification
  training_x_data,                      # Training data independent variables
  100                                   # Bias
)

predicted = []
test_x_data.each do |params|
  predicted.push( Liblinear.predict(model, params) )
end
correct = predicted.collect.with_index { |e,i| (e == test_y_data[i]) ? 1 : 0 }.inject{ |sum,e| sum+e }
puts "Accuracy: #{((correct.to_f / test_set_size) * 100).round(2)}% - test set of size #{test_size_percentange}%"

puts 'what'
