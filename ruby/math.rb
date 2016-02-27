def fact(n) (1..n).inject(1) {|r, i| r * i } end

# n elements
def multicomb(n, k) fact(n + k - 1) / (fact(k) * fact(n - 1)) end

# AKA: "Variations with repetition"
# m number of element, n length
def n_tuples_r(m, n) m ** n end

# AKA: "Variations without repetition"
# m number of elements, n length
def n_tuples(m, n) fact(m) / fact(m - n) end

# Approximated probability of collision (https://en.wikipedia.org/wiki/Birthday_problem#Approximations)
# n number of elements, e existent elements
def collision_probability(n, e) 1.0 - Math.exp( (-e * (e - 1.0)) / (2 * n) ) end
