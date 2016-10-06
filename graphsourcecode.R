# import alcohol CSV file

alcoholconsump <- read.csv('drinks.csv', skip = 0, header = T, sep = ',',
                           fileEncoding = 'latin1', encoding = 'UTF-8',
                           stringsAsFactors = F)

# create top ten list for beer

BEERalcoholconsump <- alcoholconsump[order(-alcoholconsump$beer_servings),]
top10beer <- BEERalcoholconsump[c(1:10),]


# create top ten list for wine

WINEalcoholconsump <- alcoholconsump[order(-alcoholconsump$wine_servings),]
top10wine <- WINEalcoholconsump[c(1:10),]

# create top ten list for spirits

SPIRITalcoholconsump <- alcoholconsump[order(-alcoholconsump$spirit_servings),]
top10spirit <- SPIRITalcoholconsump[c(1:10),]

# create top ten list for pure alcohol

PUREalcoholconsump <- alcoholconsump[order(-alcoholconsump$total_litres_of_pure_alcohol),]
top10pure <- PUREalcoholconsump[c(1:10),]