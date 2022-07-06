d = read.csv("D:/coding/python/nylg/week1/DBS/DBS_SingDollar.csv")

model = lm(d$DBS ~ d$SGD, data=d)

pred = predict(model, newdata=d)

print(pred)

err = d$DBS - pred

print(err)

rmse = mean(err ^ 2) ^ 0.5

print(rmse)
