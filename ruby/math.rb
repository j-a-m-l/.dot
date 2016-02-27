def fact(n) (1..n).inject(1) {|r, i| r * i } end
def multicomb(n, k) fact(n + k - 1) / (fact(k) * fact(n - 1)) end
