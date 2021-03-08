inputScores = [60, 90, 50, 40, 40, 100, 40, 60, 70, 50]
personNum = inputScores.count

def standardize(scr, pn) #scores, pesonNum
  avr = scr.sum / scr.count #平均値
  #特典と平均値の差を算出
  gaps = scr.map { |x| x - avr}

  #差を二乗した合計を人数で割ったものの平方根を求める
  standardDev = Math.sqrt(gaps.map { |x| x ** 2}.sum / pn) #標準偏差
  #偏差値=(得点-平均点)÷標準偏差×10+50
  deviation = gaps.map { |x| (x / standardDev * 10) + 50}
  return deviation #偏差値
end

p result = standardize(inputScores, personNum) #偏差値を配列で格納