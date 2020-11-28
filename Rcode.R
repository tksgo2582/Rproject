summary(cars)
.libPaths("C:/R_TMP") 
library(ggmap)
register_google(key="AIzaSyBFBClRlQoDEKLzZBzg1-6v2019xggaVxg")

gc <- geocode(enc2utf8("설악산"))
cen <- as.numeric(gc)
map<- get_googlemap(center=cen,zoom = 9,
                    size = c(640,640),
                    maptype="roadmap")
ggmap(map)


cen2 <- c(-118.233248, 34.08015)
map2 <- get_googlemap(center=cen2)
ggmap(map2)

names <- c("용두암", "성산일출봉", "정방폭포", "중문관광단지","한라산1100고지", "차귀도")
addr 