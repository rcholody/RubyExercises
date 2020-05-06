#sum to the n terms of the series.
def sum_terms(n)
    (1..n).reduce(0) {|sum, val| sum += (val*val +1)}
end
