# Arrayの計算

a1 = [1,2,3]
a2 = [4,2,3]

p a1 + a2
p a1 - a2
p a1 & a2
p a1 | a2
p a1 * a2
p a1 / a2
p a1 % a2


# => [1, 2, 3, 4, 2, 3]
# => [1]
# => [2, 3]
# => [1, 2, 3, 4]
# => no implicit conversion of Array into Integer (TypeError)
# => undefined method `/' for [1, 2, 3]:Array (NoMethodError)
# => undefined method `%' for [1, 2, 3]:Array (NoMethodError)