# Exercise: PatternMatching-1
# Which of the following will match?
# a = [1, 2, 3]                         Will
# a = 4                                 Will
# 4 = a                                 Will
# [a, b] = [ 1, 2, 3 ]                  Won't
# a = [ [ 1, 2, 3 ] ]                   Will
# [a] = [ [ 1, 2, 3 ] ]                 Will
# [[a]] = [ [ 1, 2, 3 ] ]               Won't

# Exercise: PatternMatching-2
# Which of the following will match?
#
# [ a, b, a ] = [ 1, 2, 3 ]             Won't
# [ a, b, a ] = [ 1, 1, 2 ]             Won't
# [ a, b, a ] = [ 1, 2, 1 ]             Will
#
# Exercise: PatternMatching-3
# The variable a is bound to the value 2. Which of the following will match?
#
# [ a, b, a ] = [ 1, 2, 3 ]             Won't
# [ a, b, a ] = [ 1, 1, 2 ]             Won't
# a = 1                                 Will
# ^a = 2                                Will
# ^a = 1                                Won't
# ^a = 2 - a                            Won't