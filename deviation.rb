input_scores = [60, 90, 50, 40, 40, 100, 40, 60, 70, 50]
personNum = input_scores.count
#average
def average(sc)
  sum = 0
  sc.each do |s|
    sum += s
  end

  avrg = sum / sc.count
  return avrg
end

avr = average(input_scores)

def standardize(sc, av, pn) #scores, average, pesonNum
  gaps = []

  sc.each do |score|
    gaps << score.to_i - av.to_i
  end

  #gap を二乗
  squared = []
  gaps.each do |gap|
    squared << gap ** 2
  end
  squared2 = squared.sum / pn
  standardDev = Math.sqrt(squared2.to_i) #標準偏差

  deviation = []
  gaps.each do |gap|
    tmp = gap / standardDev * 10
    deviation << tmp.to_i + 50
  end
  return deviation
end

result = standardize(input_scores, avr, personNum) #偏差値を配列で格納