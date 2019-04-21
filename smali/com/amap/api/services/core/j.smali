.class public Lcom/amap/api/services/core/j;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/Scenic;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lcom/amap/api/services/poisearch/Scenic;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/Scenic;-><init>()V

    .line 377
    const-string v1, "intro"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setIntro(Ljava/lang/String;)V

    .line 378
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setRating(Ljava/lang/String;)V

    .line 379
    const-string v1, "deepsrc"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setDeepsrc(Ljava/lang/String;)V

    .line 380
    const-string v1, "level"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setLevel(Ljava/lang/String;)V

    .line 381
    const-string v1, "price"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setPrice(Ljava/lang/String;)V

    .line 382
    const-string v1, "season"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setSeason(Ljava/lang/String;)V

    .line 383
    const-string v1, "recommend"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setRecommend(Ljava/lang/String;)V

    .line 384
    const-string v1, "theme"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setTheme(Ljava/lang/String;)V

    .line 385
    const-string v1, "ordering_wap_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setOrderWapUrl(Ljava/lang/String;)V

    .line 386
    const-string v1, "ordering_web_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setOrderWebUrl(Ljava/lang/String;)V

    .line 387
    const-string v1, "opentime_GDF"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setOpentimeGDF(Ljava/lang/String;)V

    .line 388
    const-string v1, "opentime"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setOpentime(Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Lcom/amap/api/services/core/j;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setPhotos(Ljava/util/List;)V

    .line 394
    sget-object v1, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->SCENIC:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDeepType(Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;)V

    .line 395
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setScenic(Lcom/amap/api/services/poisearch/Scenic;)V

    .line 396
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-string v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 87
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 71
    if-nez v2, :cond_1

    move-object v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 75
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 76
    if-nez v3, :cond_2

    .line 74
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    const-string v5, "citycode"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    const-string v6, "adcode"

    invoke-static {v3, v6}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 82
    const-string v7, "num"

    invoke-static {v3, v7}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/j;->i(Ljava/lang/String;)I

    move-result v3

    .line 83
    new-instance v7, Lcom/amap/api/services/core/SuggestionCity;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/amap/api/services/core/SuggestionCity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 87
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/BusPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 983
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 984
    if-nez p0, :cond_0

    move-object v0, v6

    .line 1026
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 987
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 990
    new-instance v7, Lcom/amap/api/services/route/BusPath;

    invoke-direct {v7}, Lcom/amap/api/services/route/BusPath;-><init>()V

    .line 991
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 992
    if-nez v2, :cond_2

    .line 987
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 995
    :cond_2
    const-string v3, "cost"

    invoke-static {v2, v3}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setCost(F)V

    .line 996
    const-string v3, "duration"

    invoke-static {v2, v3}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/j;->k(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amap/api/services/route/BusPath;->setDuration(J)V

    .line 997
    const-string v3, "nightflag"

    invoke-static {v2, v3}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/j;->l(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setNightBus(Z)V

    .line 998
    const-string/jumbo v3, "walking_distance"

    invoke-static {v2, v3}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    .line 1000
    const-string v3, "segments"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1001
    if-eqz v8, :cond_1

    .line 1004
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    move v3, v4

    move v5, v4

    .line 1005
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_6

    .line 1006
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1007
    if-nez v10, :cond_4

    .line 1005
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1010
    :cond_4
    invoke-static {v10}, Lcom/amap/api/services/core/j;->q(Lorg/json/JSONObject;)Lcom/amap/api/services/route/BusStep;

    move-result-object v10

    .line 1011
    if-eqz v10, :cond_3

    .line 1014
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-virtual {v10}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1016
    invoke-virtual {v10}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amap/api/services/route/RouteBusWalkItem;->getDistance()F

    move-result v11

    add-float/2addr v3, v11

    .line 1017
    :cond_5
    invoke-virtual {v10}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1018
    invoke-virtual {v10}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amap/api/services/route/RouteBusLineItem;->getDistance()F

    move-result v10

    add-float/2addr v5, v10

    goto :goto_4

    .line 1020
    :cond_6
    invoke-virtual {v7, v9}, Lcom/amap/api/services/route/BusPath;->setSteps(Ljava/util/List;)V

    .line 1021
    invoke-virtual {v7, v5}, Lcom/amap/api/services/route/BusPath;->setBusDistance(F)V

    .line 1022
    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    .line 1024
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    move-object v0, v6

    .line 1026
    goto/16 :goto_0
.end method

.method public static a(Lcom/amap/api/services/poisearch/Discount;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 618
    invoke-static {p1}, Lcom/amap/api/services/core/j;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 619
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/Discount;->initPhotos(Ljava/util/List;)V

    .line 620
    return-void
.end method

.method public static a(Lcom/amap/api/services/poisearch/Groupbuy;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-static {p1}, Lcom/amap/api/services/core/j;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/Groupbuy;->initPhotos(Ljava/util/List;)V

    .line 586
    return-void
.end method

.method public static a(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 529
    if-nez p1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->isGroupbuyInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    invoke-static {p0, p1}, Lcom/amap/api/services/core/j;->b(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->isDiscountInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-static {p0, p1}, Lcom/amap/api/services/core/j;->c(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 1290
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    const-string v0, "cities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1292
    if-nez v2, :cond_0

    .line 1313
    :goto_0
    return-void

    .line 1295
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1296
    new-instance v3, Lcom/amap/api/services/route/RouteSearchCity;

    invoke-direct {v3}, Lcom/amap/api/services/route/RouteSearchCity;-><init>()V

    .line 1297
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1298
    if-nez v4, :cond_1

    .line 1295
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1301
    :cond_1
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityName(Ljava/lang/String;)V

    .line 1302
    const-string v5, "citycode"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCitycode(Ljava/lang/String;)V

    .line 1304
    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityhAdCode(Ljava/lang/String;)V

    .line 1306
    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V

    .line 1307
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    const-string v1, "JSONHelper"

    const-string v2, "parseCrossCity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/DriveStep;->setRouteSearchCityList(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 1317
    const-string v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1321
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    const-string v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1323
    if-nez v2, :cond_1

    .line 1324
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    const-string v1, "JSONHelper"

    const-string v2, "parseCrossDistricts"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1328
    new-instance v3, Lcom/amap/api/services/route/District;

    invoke-direct {v3}, Lcom/amap/api/services/route/District;-><init>()V

    .line 1329
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1330
    if-nez v4, :cond_2

    .line 1327
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1333
    :cond_2
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/District;->setDistrictName(Ljava/lang/String;)V

    .line 1334
    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/District;->setDistrictAdcode(Ljava/lang/String;)V

    .line 1335
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1337
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 798
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 799
    new-instance v2, Lcom/amap/api/services/road/Crossroad;

    invoke-direct {v2}, Lcom/amap/api/services/road/Crossroad;-><init>()V

    .line 800
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 801
    if-nez v3, :cond_0

    .line 798
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setId(Ljava/lang/String;)V

    .line 805
    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDirection(Ljava/lang/String;)V

    .line 806
    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDistance(F)V

    .line 808
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 809
    const-string v4, "first_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadId(Ljava/lang/String;)V

    .line 810
    const-string v4, "first_name"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadName(Ljava/lang/String;)V

    .line 812
    const-string v4, "second_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadId(Ljava/lang/String;)V

    .line 813
    const-string v4, "second_name"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadName(Ljava/lang/String;)V

    .line 815
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 817
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCrossroads(Ljava/util/List;)V

    .line 818
    return-void
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;",
            "Lcom/amap/api/services/district/DistrictItem;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 678
    if-nez p0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 682
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 683
    if-nez v1, :cond_2

    .line 681
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 686
    :cond_2
    invoke-static {v1}, Lcom/amap/api/services/core/j;->m(Lorg/json/JSONObject;)Lcom/amap/api/services/district/DistrictItem;

    move-result-object v1

    .line 687
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 689
    :cond_3
    if-eqz p2, :cond_0

    .line 690
    invoke-virtual {p2, p1}, Lcom/amap/api/services/district/DistrictItem;->setSubDistrict(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 861
    const-string v0, "province"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setProvince(Ljava/lang/String;)V

    .line 862
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCity(Ljava/lang/String;)V

    .line 863
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCityCode(Ljava/lang/String;)V

    .line 864
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setAdCode(Ljava/lang/String;)V

    .line 865
    const-string v0, "district"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setDistrict(Ljava/lang/String;)V

    .line 866
    const-string/jumbo v0, "township"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setTownship(Ljava/lang/String;)V

    .line 868
    const-string v0, "neighborhood"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 870
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 872
    const-string v0, "building"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 873
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBuilding(Ljava/lang/String;)V

    .line 875
    new-instance v0, Lcom/amap/api/services/geocoder/StreetNumber;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/StreetNumber;-><init>()V

    .line 876
    const-string v1, "streetNumber"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 878
    const-string v2, "street"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setStreet(Ljava/lang/String;)V

    .line 879
    const-string v2, "number"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setNumber(Ljava/lang/String;)V

    .line 880
    const-string v2, "location"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 882
    const-string v2, "direction"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setDirection(Ljava/lang/String;)V

    .line 883
    const-string v2, "distance"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/StreetNumber;->setDistance(F)V

    .line 885
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setStreetNumber(Lcom/amap/api/services/geocoder/StreetNumber;)V

    .line 886
    invoke-static {p0}, Lcom/amap/api/services/core/j;->p(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBusinessAreas(Ljava/util/List;)V

    .line 887
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 498
    .line 500
    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 502
    if-nez v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    if-ne v2, v1, :cond_0

    move v0, v1

    .line 505
    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    const-string v2, "JSONHelper"

    const-string v3, "ordingStr2Boolean"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :catch_1
    move-exception v1

    .line 511
    const-string v2, "JSONHelper"

    const-string v3, "ordingStr2BooleanException"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 492
    const-string v0, "biz_ext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 493
    invoke-static {v0, p1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v0}, Lcom/amap/api/services/core/j;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 945
    const/4 v0, 0x0

    .line 947
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 948
    const-string v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-object v0

    .line 951
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/BusRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusRouteResult;-><init>()V

    .line 952
    const-string v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 953
    if-eqz v1, :cond_0

    .line 956
    const-string v2, "origin"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 957
    const-string v2, "destination"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 959
    const-string v2, "taxi_cost"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTaxiCost(F)V

    .line 960
    const-string/jumbo v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 963
    const-string/jumbo v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 964
    if-eqz v1, :cond_0

    .line 967
    invoke-static {v1}, Lcom/amap/api/services/core/j;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 968
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1413
    if-nez p0, :cond_1

    .line 1414
    const-string v0, ""

    .line 1420
    :cond_0
    :goto_0
    return-object v0

    .line 1416
    :cond_1
    const-string v0, ""

    .line 1417
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1418
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const-string v0, "keywords"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 101
    if-nez v2, :cond_0

    move-object v0, v1

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 105
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 107
    goto :goto_0
.end method

.method public static b(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 542
    if-nez p1, :cond_1

    .line 580
    :cond_0
    return-void

    .line 545
    :cond_1
    const-string v0, "groupbuys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_0

    .line 549
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 550
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 551
    if-nez v2, :cond_2

    .line 549
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_2
    new-instance v3, Lcom/amap/api/services/poisearch/Groupbuy;

    invoke-direct {v3}, Lcom/amap/api/services/poisearch/Groupbuy;-><init>()V

    .line 555
    const-string/jumbo v4, "typecode"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setTypeCode(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v4, "type"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setTypeDes(Ljava/lang/String;)V

    .line 557
    const-string v4, "detail"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setDetail(Ljava/lang/String;)V

    .line 558
    const-string v4, "start_time"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/d;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 560
    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setStartTime(Ljava/util/Date;)V

    .line 561
    const-string v4, "end_time"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/d;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 563
    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setEndTime(Ljava/util/Date;)V

    .line 565
    const-string v4, "num"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/j;->i(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setCount(I)V

    .line 566
    const-string v4, "sold_num"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/j;->i(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setSoldCount(I)V

    .line 567
    const-string v4, "original_price"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setOriginalPrice(F)V

    .line 569
    const-string v4, "groupbuy_price"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setGroupbuyPrice(F)V

    .line 571
    const-string v4, "discount"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setDiscount(F)V

    .line 572
    const-string v4, "ticket_address"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setTicketAddress(Ljava/lang/String;)V

    .line 573
    const-string v4, "ticket_tel"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setTicketTel(Ljava/lang/String;)V

    .line 574
    const-string/jumbo v4, "url"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setUrl(Ljava/lang/String;)V

    .line 575
    const-string v4, "provider"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setProvider(Ljava/lang/String;)V

    .line 576
    invoke-static {v3, v2}, Lcom/amap/api/services/core/j;->a(Lcom/amap/api/services/poisearch/Groupbuy;Lorg/json/JSONObject;)V

    .line 577
    invoke-virtual {p0, v3}, Lcom/amap/api/services/poisearch/PoiItemDetail;->addGroupbuy(Lcom/amap/api/services/poisearch/Groupbuy;)V

    goto/16 :goto_1
.end method

.method public static b(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/amap/api/services/poisearch/Cinema;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/Cinema;-><init>()V

    .line 402
    const-string v1, "intro"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setIntro(Ljava/lang/String;)V

    .line 403
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setRating(Ljava/lang/String;)V

    .line 404
    const-string v1, "deepsrc"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setDeepsrc(Ljava/lang/String;)V

    .line 405
    const-string v1, "parking"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setParking(Ljava/lang/String;)V

    .line 406
    const-string v1, "opentime_GDF"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setOpentimeGDF(Ljava/lang/String;)V

    .line 407
    const-string v1, "opentime"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setOpentime(Ljava/lang/String;)V

    .line 408
    invoke-static {p1}, Lcom/amap/api/services/core/j;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setPhotos(Ljava/util/List;)V

    .line 409
    invoke-static {p2}, Lcom/amap/api/services/core/j;->k(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "seat_ordering"

    invoke-static {p2, v1}, Lcom/amap/api/services/core/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 411
    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setSeatOrdering(Z)V

    .line 413
    :cond_0
    sget-object v1, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->CINEMA:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDeepType(Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;)V

    .line 415
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setCinema(Lcom/amap/api/services/poisearch/Cinema;)V

    .line 416
    return-void
.end method

.method public static b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 822
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 823
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 824
    new-instance v2, Lcom/amap/api/services/geocoder/RegeocodeRoad;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/RegeocodeRoad;-><init>()V

    .line 825
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 826
    if-nez v3, :cond_0

    .line 823
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    :cond_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setId(Ljava/lang/String;)V

    .line 830
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setName(Ljava/lang/String;)V

    .line 831
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setLatLngPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 833
    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDirection(Ljava/lang/String;)V

    .line 835
    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDistance(F)V

    .line 837
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 839
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setRoads(Ljava/util/List;)V

    .line 840
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1425
    if-nez p0, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-object v0

    .line 1428
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {v0}, Lcom/amap/api/services/core/j;->f(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1206
    const/4 v0, 0x0

    .line 1208
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1209
    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-object v0

    .line 1212
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/DriveRouteResult;-><init>()V

    .line 1213
    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1214
    if-eqz v1, :cond_0

    .line 1217
    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1218
    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1219
    const-string v3, "taxi_cost"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTaxiCost(F)V

    .line 1220
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1223
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1224
    if-eqz v4, :cond_0

    .line 1227
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1228
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1229
    new-instance v6, Lcom/amap/api/services/route/DrivePath;

    invoke-direct {v6}, Lcom/amap/api/services/route/DrivePath;-><init>()V

    .line 1230
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1231
    if-nez v1, :cond_3

    .line 1228
    :cond_2
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1234
    :cond_3
    const-string v7, "distance"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setDistance(F)V

    .line 1236
    const-string v7, "duration"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/j;->k(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/amap/api/services/route/DrivePath;->setDuration(J)V

    .line 1238
    const-string v7, "strategy"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setStrategy(Ljava/lang/String;)V

    .line 1239
    const-string/jumbo v7, "tolls"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setTolls(F)V

    .line 1240
    const-string/jumbo v7, "toll_distance"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setTollDistance(F)V

    .line 1242
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1243
    if-eqz v7, :cond_2

    .line 1246
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1247
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 1248
    new-instance v9, Lcom/amap/api/services/route/DriveStep;

    invoke-direct {v9}, Lcom/amap/api/services/route/DriveStep;-><init>()V

    .line 1249
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1250
    if-nez v10, :cond_4

    .line 1247
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1253
    :cond_4
    const-string v11, "instruction"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setInstruction(Ljava/lang/String;)V

    .line 1255
    const-string v11, "orientation"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setOrientation(Ljava/lang/String;)V

    .line 1257
    const-string v11, "road"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setRoad(Ljava/lang/String;)V

    .line 1258
    const-string v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setDistance(F)V

    .line 1260
    const-string/jumbo v11, "tolls"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTolls(F)V

    .line 1261
    const-string/jumbo v11, "toll_distance"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTollDistance(F)V

    .line 1263
    const-string/jumbo v11, "toll_road"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTollRoad(Ljava/lang/String;)V

    .line 1264
    const-string v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setDuration(F)V

    .line 1267
    const-string v11, "polyline"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setPolyline(Ljava/util/List;)V

    .line 1268
    const-string v11, "action"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setAction(Ljava/lang/String;)V

    .line 1269
    const-string v11, "assistant_action"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1271
    invoke-static {v9, v10}, Lcom/amap/api/services/core/j;->a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V

    .line 1272
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    const-string v1, "JSONHelper"

    const-string v2, "parseDriveRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_5
    :try_start_1
    invoke-virtual {v6, v8}, Lcom/amap/api/services/route/DrivePath;->setSteps(Ljava/util/List;)V

    .line 1275
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1281
    :catch_1
    move-exception v0

    .line 1282
    const-string v1, "JSONHelper"

    const-string v2, "parseDriveRouteThrowable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :cond_6
    :try_start_2
    invoke-virtual {v0, v5}, Lcom/amap/api/services/route/DriveRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public static c(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    if-nez p0, :cond_0

    move-object v0, v1

    .line 135
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const-string v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 128
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 129
    if-nez v3, :cond_3

    .line 127
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_3
    invoke-static {v3}, Lcom/amap/api/services/core/j;->d(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/PoiItemDetail;

    move-result-object v3

    .line 133
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 135
    goto :goto_0
.end method

.method public static c(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 590
    const-string v0, "discounts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 591
    if-nez v1, :cond_1

    .line 615
    :cond_0
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 595
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 596
    if-nez v2, :cond_2

    .line 594
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_2
    new-instance v3, Lcom/amap/api/services/poisearch/Discount;

    invoke-direct {v3}, Lcom/amap/api/services/poisearch/Discount;-><init>()V

    .line 600
    const-string v4, "title"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setTitle(Ljava/lang/String;)V

    .line 601
    const-string v4, "detail"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setDetail(Ljava/lang/String;)V

    .line 602
    const-string v4, "start_time"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/d;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 604
    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setStartTime(Ljava/util/Date;)V

    .line 605
    const-string v4, "end_time"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/d;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 607
    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setEndTime(Ljava/util/Date;)V

    .line 608
    const-string v4, "sold_num"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/j;->i(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setSoldCount(I)V

    .line 609
    const-string/jumbo v4, "url"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setUrl(Ljava/lang/String;)V

    .line 610
    const-string v4, "provider"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setProvider(Ljava/lang/String;)V

    .line 611
    invoke-static {v3, v2}, Lcom/amap/api/services/core/j;->a(Lcom/amap/api/services/poisearch/Discount;Lorg/json/JSONObject;)V

    .line 612
    invoke-virtual {p0, v3}, Lcom/amap/api/services/poisearch/PoiItemDetail;->addDiscount(Lcom/amap/api/services/poisearch/Discount;)V

    goto :goto_1
.end method

.method public static c(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Lcom/amap/api/services/poisearch/Hotel;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/Hotel;-><init>()V

    .line 421
    const-string v1, "star"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setStar(Ljava/lang/String;)V

    .line 422
    const-string v1, "intro"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setIntro(Ljava/lang/String;)V

    .line 423
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setRating(Ljava/lang/String;)V

    .line 424
    const-string v1, "lowest_price"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setLowestPrice(Ljava/lang/String;)V

    .line 425
    const-string v1, "deepsrc"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setDeepsrc(Ljava/lang/String;)V

    .line 426
    const-string v1, "faci_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setFaciRating(Ljava/lang/String;)V

    .line 427
    const-string v1, "health_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setHealthRating(Ljava/lang/String;)V

    .line 428
    const-string v1, "environment_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setEnvironmentRating(Ljava/lang/String;)V

    .line 429
    const-string v1, "service_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setServiceRating(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v1, "traffic"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setTraffic(Ljava/lang/String;)V

    .line 431
    const-string v1, "addition"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setAddition(Ljava/lang/String;)V

    .line 432
    invoke-static {p1}, Lcom/amap/api/services/core/j;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setPhotos(Ljava/util/List;)V

    .line 433
    sget-object v1, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->HOTEL:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDeepType(Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setHotel(Lcom/amap/api/services/poisearch/Hotel;)V

    .line 435
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/PoiItemDetail;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 148
    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    const-string v3, "address"

    invoke-static {p0, v3}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    new-instance v4, Lcom/amap/api/services/poisearch/PoiItemDetail;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/PoiItemDetail;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setAdCode(Ljava/lang/String;)V

    .line 152
    const-string v0, "pname"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setProvinceName(Ljava/lang/String;)V

    .line 153
    const-string v0, "cityname"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setCityName(Ljava/lang/String;)V

    .line 154
    const-string v0, "adname"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setAdName(Ljava/lang/String;)V

    .line 155
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setCityCode(Ljava/lang/String;)V

    .line 156
    const-string v0, "pcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setProvinceCode(Ljava/lang/String;)V

    .line 157
    const-string v0, "direction"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDirection(Ljava/lang/String;)V

    .line 158
    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/amap/api/services/core/j;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDistance(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :goto_0
    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiItemDetail;->getDistance()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDistance(I)V

    .line 173
    :cond_0
    const-string v0, "tel"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setTel(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setTypeDes(Ljava/lang/String;)V

    .line 184
    const-string v0, "entr_location"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setEnter(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 185
    const-string v0, "exit_location"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setExit(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 186
    const-string/jumbo v0, "website"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setWebsite(Ljava/lang/String;)V

    .line 187
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setPostcode(Ljava/lang/String;)V

    .line 188
    const-string v0, "email"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setEmail(Ljava/lang/String;)V

    .line 189
    const-string v0, "groupbuy_num"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/amap/api/services/core/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setGroupbuyInfo(Z)V

    .line 195
    :goto_1
    const-string v0, "discount_num"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/amap/api/services/core/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDiscountInfo(Z)V

    .line 201
    :goto_2
    const-string v0, "indoor_map"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/amap/api/services/core/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setIndoorMap(Z)V

    .line 207
    :goto_3
    return-object v4

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "JSONHelper"

    const-string v2, "parseBasePoi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    const-string v1, "JSONHelper"

    const-string v2, "parseBasePoi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_1
    invoke-virtual {v4, v6}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setGroupbuyInfo(Z)V

    goto :goto_1

    .line 199
    :cond_2
    invoke-virtual {v4, v6}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDiscountInfo(Z)V

    goto :goto_2

    .line 205
    :cond_3
    invoke-virtual {v4, v6}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setIndoorMap(Z)V

    goto :goto_3
.end method

.method public static d(Ljava/lang/String;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 1344
    const/4 v1, 0x0

    .line 1346
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1347
    const-string v0, "route"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1408
    :cond_0
    :goto_0
    return-object v0

    .line 1350
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkRouteResult;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1351
    :try_start_1
    const-string v1, "route"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1352
    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1353
    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1354
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1357
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1359
    if-nez v5, :cond_2

    .line 1360
    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1405
    :catch_0
    move-exception v1

    .line 1406
    :goto_1
    const-string v2, "JSONHelper"

    const-string v3, "parseWalkRoute"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1363
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 1364
    new-instance v6, Lcom/amap/api/services/route/WalkPath;

    invoke-direct {v6}, Lcom/amap/api/services/route/WalkPath;-><init>()V

    .line 1365
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1366
    if-nez v1, :cond_4

    .line 1363
    :cond_3
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 1369
    :cond_4
    const-string v7, "distance"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/WalkPath;->setDistance(F)V

    .line 1370
    const-string v7, "duration"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/j;->k(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/amap/api/services/route/WalkPath;->setDuration(J)V

    .line 1371
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1372
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1373
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    if-eqz v7, :cond_3

    move v1, v2

    .line 1378
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 1379
    new-instance v9, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v9}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    .line 1380
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1381
    if-nez v10, :cond_5

    .line 1378
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1384
    :cond_5
    const-string v11, "instruction"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    .line 1386
    const-string v11, "orientation"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    .line 1388
    const-string v11, "road"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    .line 1389
    const-string v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    .line 1391
    const-string v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    .line 1393
    const-string v11, "polyline"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    .line 1394
    const-string v11, "action"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    .line 1395
    const-string v11, "assistant_action"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1397
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1399
    :cond_6
    invoke-virtual {v6, v8}, Lcom/amap/api/services/route/WalkPath;->setSteps(Ljava/util/List;)V

    .line 1401
    :cond_7
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1403
    :cond_8
    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1405
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1
.end method

.method public static d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/j;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1440
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lcom/amap/api/services/poisearch/Dining;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/Dining;-><init>()V

    .line 440
    const-string v1, "cuisines"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setCuisines(Ljava/lang/String;)V

    .line 441
    const-string v1, "tag"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setTag(Ljava/lang/String;)V

    .line 442
    const-string v1, "intro"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setIntro(Ljava/lang/String;)V

    .line 443
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setRating(Ljava/lang/String;)V

    .line 444
    const-string v1, "cp_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setCpRating(Ljava/lang/String;)V

    .line 445
    const-string v1, "deepsrc"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setDeepsrc(Ljava/lang/String;)V

    .line 446
    const-string v1, "taste_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setTasteRating(Ljava/lang/String;)V

    .line 447
    const-string v1, "environment_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setEnvironmentRating(Ljava/lang/String;)V

    .line 448
    const-string v1, "service_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setServiceRating(Ljava/lang/String;)V

    .line 449
    const-string v1, "cost"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setCost(Ljava/lang/String;)V

    .line 450
    const-string v1, "recommend"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setRecommend(Ljava/lang/String;)V

    .line 451
    const-string v1, "atmosphere"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setAtmosphere(Ljava/lang/String;)V

    .line 452
    const-string v1, "ordering_wap_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOrderingWapUrl(Ljava/lang/String;)V

    .line 453
    const-string v1, "ordering_web_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOrderingWebUrl(Ljava/lang/String;)V

    .line 454
    const-string v1, "ordering_app_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOrderinAppUrl(Ljava/lang/String;)V

    .line 455
    const-string v1, "opentime_GDF"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOpentimeGDF(Ljava/lang/String;)V

    .line 456
    const-string v1, "opentime"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOpentime(Ljava/lang/String;)V

    .line 457
    const-string v1, "addition"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setAddition(Ljava/lang/String;)V

    .line 458
    invoke-static {p1}, Lcom/amap/api/services/core/j;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setPhotos(Ljava/util/List;)V

    .line 459
    invoke-static {p2}, Lcom/amap/api/services/core/j;->k(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const-string v1, "meal_ordering"

    invoke-static {p2, v1}, Lcom/amap/api/services/core/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setMealOrdering(Z)V

    .line 463
    :cond_0
    sget-object v1, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->DINING:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDeepType(Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;)V

    .line 464
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDining(Lcom/amap/api/services/poisearch/Dining;)V

    .line 466
    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1446
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1447
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/amap/api/services/core/j;->f(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1449
    :cond_0
    return-object v1
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    if-nez p0, :cond_0

    move-object v0, v1

    .line 234
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const-string v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 228
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 229
    if-nez v3, :cond_3

    .line 227
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_3
    invoke-static {v3}, Lcom/amap/api/services/core/j;->f(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 234
    goto :goto_0
.end method

.method public static e(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 470
    if-nez p1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    const-string v1, "hotel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/core/j;->c(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 477
    :cond_2
    const-string v1, "dining"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/core/j;->d(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 480
    :cond_3
    const-string v1, "cinema"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 481
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/core/j;->b(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 484
    :cond_4
    const-string v1, "scenic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/core/j;->a(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/Scenic;

    goto :goto_0
.end method

.method public static f(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {p0}, Lcom/amap/api/services/core/j;->g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 247
    if-nez v1, :cond_0

    move-object v0, v1

    .line 267
    :goto_0
    return-object v0

    .line 250
    :cond_0
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setAdCode(Ljava/lang/String;)V

    .line 251
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setCityCode(Ljava/lang/String;)V

    .line 252
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    if-nez v2, :cond_1

    .line 255
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    move-object v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 259
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 260
    if-nez v4, :cond_2

    .line 258
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_2
    invoke-static {v4}, Lcom/amap/api/services/core/j;->h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v4

    .line 264
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    :cond_3
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    move-object v0, v1

    .line 267
    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1453
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-object v0

    .line 1458
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1459
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1462
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1463
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1464
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    goto :goto_0
.end method

.method public static g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    .line 280
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    .line 281
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 282
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    .line 283
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1468
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1469
    :cond_0
    const/4 v0, 0x1

    .line 1471
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lcom/amap/api/services/busline/BusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusLineItem;-><init>()V

    .line 296
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineId(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineType(Ljava/lang/String;)V

    .line 298
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineName(Ljava/lang/String;)V

    .line 299
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setDirectionsCoordinates(Ljava/util/List;)V

    .line 300
    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setCityCode(Ljava/lang/String;)V

    .line 301
    const-string v1, "start_stop"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setOriginatingStation(Ljava/lang/String;)V

    .line 302
    const-string v1, "end_stop"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setTerminalStation(Ljava/lang/String;)V

    .line 303
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1475
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1476
    :cond_0
    const/4 v0, 0x1

    .line 1478
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1483
    const/4 v0, 0x0

    .line 1484
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return v0

    .line 1488
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1489
    :catch_0
    move-exception v1

    .line 1490
    const-string v2, "JSONHelper"

    const-string v3, "str2int"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 317
    if-nez v2, :cond_0

    move-object v0, v1

    .line 331
    :goto_0
    return-object v0

    .line 320
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 321
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 322
    if-nez v3, :cond_1

    .line 320
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_1
    invoke-static {v3}, Lcom/amap/api/services/core/j;->j(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 331
    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)F
    .locals 4

    .prologue
    .line 1496
    const/4 v0, 0x0

    .line 1497
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return v0

    .line 1501
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1502
    :catch_0
    move-exception v1

    .line 1503
    const-string v2, "JSONHelper"

    const-string v3, "str2float"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {p0}, Lcom/amap/api/services/core/j;->h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v1

    .line 344
    if-nez v1, :cond_0

    move-object v0, v1

    .line 371
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const-string v0, "start_time"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/d;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    .line 349
    const-string v0, "end_time"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/d;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setLastBusTime(Ljava/util/Date;)V

    .line 351
    const-string v0, "company"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBusCompany(Ljava/lang/String;)V

    .line 352
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setDistance(F)V

    .line 353
    const-string v0, "basic_price"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBasicPrice(F)V

    .line 354
    const-string/jumbo v0, "total_price"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setTotalPrice(F)V

    .line 355
    const-string v0, "bounds"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBounds(Ljava/util/List;)V

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    const-string v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 358
    if-nez v3, :cond_1

    .line 359
    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    move-object v0, v1

    .line 360
    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 363
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 364
    if-nez v4, :cond_2

    .line 362
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    :cond_2
    invoke-static {v4}, Lcom/amap/api/services/core/j;->g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v4

    .line 368
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 370
    :cond_3
    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    move-object v0, v1

    .line 371
    goto/16 :goto_0
.end method

.method public static k(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 1509
    const-wide/16 v0, 0x0

    .line 1510
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-wide v0

    .line 1514
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1515
    :catch_0
    move-exception v2

    .line 1516
    const-string v3, "JSONHelper"

    const-string v4, "str2long"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static k(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 517
    if-nez p0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v0

    .line 520
    :cond_1
    const-string v1, "biz_ext"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static l(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    if-nez p0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-object v0

    .line 627
    :cond_1
    const-string v1, "photos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    :try_start_0
    const-string v1, "photos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 632
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 633
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 634
    new-instance v4, Lcom/amap/api/services/poisearch/Photo;

    invoke-direct {v4}, Lcom/amap/api/services/poisearch/Photo;-><init>()V

    .line 635
    const-string v5, "title"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/Photo;->setTitle(Ljava/lang/String;)V

    .line 636
    const-string/jumbo v5, "url"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/poisearch/Photo;->setUrl(Ljava/lang/String;)V

    .line 637
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 639
    :catch_0
    move-exception v1

    .line 640
    const-string v2, "JSONHelper"

    const-string v3, "getPhotoList"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1522
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return v0

    .line 1526
    :cond_1
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static m(Lorg/json/JSONObject;)Lcom/amap/api/services/district/DistrictItem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 654
    new-instance v0, Lcom/amap/api/services/district/DistrictItem;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictItem;-><init>()V

    .line 655
    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setCitycode(Ljava/lang/String;)V

    .line 656
    const-string v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setAdcode(Ljava/lang/String;)V

    .line 657
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setName(Ljava/lang/String;)V

    .line 658
    const-string v1, "level"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setLevel(Ljava/lang/String;)V

    .line 659
    const-string v1, "center"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setCenter(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 661
    const-string v1, "districts"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 662
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 663
    invoke-static {v1, v2, v0}, Lcom/amap/api/services/core/j;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V

    .line 664
    return-object v0
.end method

.method public static n(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 703
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    if-nez p0, :cond_0

    move-object v0, v1

    .line 733
    :goto_0
    return-object v0

    .line 707
    :cond_0
    const-string v0, "geocodes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 708
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 709
    goto :goto_0

    .line 711
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 712
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 713
    if-nez v3, :cond_3

    .line 711
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 716
    :cond_3
    new-instance v4, Lcom/amap/api/services/geocoder/GeocodeAddress;

    invoke-direct {v4}, Lcom/amap/api/services/geocoder/GeocodeAddress;-><init>()V

    .line 717
    const-string v5, "formatted_address"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setFormatAddress(Ljava/lang/String;)V

    .line 718
    const-string v5, "province"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setProvince(Ljava/lang/String;)V

    .line 719
    const-string v5, "city"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setCity(Ljava/lang/String;)V

    .line 720
    const-string v5, "district"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setDistrict(Ljava/lang/String;)V

    .line 721
    const-string/jumbo v5, "township"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setTownship(Ljava/lang/String;)V

    .line 723
    const-string v5, "neighborhood"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 724
    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 725
    const-string v5, "building"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 726
    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setBuilding(Ljava/lang/String;)V

    .line 728
    const-string v5, "adcode"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setAdcode(Ljava/lang/String;)V

    .line 729
    const-string v5, "location"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 730
    const-string v5, "level"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLevel(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 733
    goto/16 :goto_0
.end method

.method public static o(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    const-string v0, "tips"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 778
    if-nez v2, :cond_0

    move-object v0, v1

    .line 792
    :goto_0
    return-object v0

    .line 781
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 782
    new-instance v3, Lcom/amap/api/services/help/Tip;

    invoke-direct {v3}, Lcom/amap/api/services/help/Tip;-><init>()V

    .line 783
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 784
    if-nez v4, :cond_1

    .line 781
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 787
    :cond_1
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/help/Tip;->setName(Ljava/lang/String;)V

    .line 788
    const-string v5, "district"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/help/Tip;->setDistrict(Ljava/lang/String;)V

    .line 789
    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/help/Tip;->setAdcode(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 792
    goto :goto_0
.end method

.method public static p(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/BusinessArea;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 891
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 892
    const-string v0, "businessAreas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 893
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 906
    :goto_0
    return-object v0

    .line 896
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 897
    new-instance v3, Lcom/amap/api/services/geocoder/BusinessArea;

    invoke-direct {v3}, Lcom/amap/api/services/geocoder/BusinessArea;-><init>()V

    .line 898
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 899
    if-nez v4, :cond_2

    .line 896
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 902
    :cond_2
    const-string v5, "location"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/geocoder/BusinessArea;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 903
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/geocoder/BusinessArea;->setName(Ljava/lang/String;)V

    .line 904
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 906
    goto :goto_0
.end method

.method public static q(Lorg/json/JSONObject;)Lcom/amap/api/services/route/BusStep;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1034
    if-nez p0, :cond_1

    .line 1035
    const/4 v0, 0x0

    .line 1054
    :cond_0
    :goto_0
    return-object v0

    .line 1037
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/BusStep;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusStep;-><init>()V

    .line 1038
    const-string/jumbo v1, "walking"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1039
    if-eqz v1, :cond_2

    .line 1040
    invoke-static {v1}, Lcom/amap/api/services/core/j;->r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusStep;->setWalk(Lcom/amap/api/services/route/RouteBusWalkItem;)V

    .line 1042
    :cond_2
    const-string v1, "bus"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1043
    if-eqz v1, :cond_3

    .line 1044
    invoke-static {v1}, Lcom/amap/api/services/core/j;->s(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusStep;->setBusLines(Ljava/util/List;)V

    .line 1046
    :cond_3
    const-string v1, "entrance"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1047
    if-eqz v1, :cond_4

    .line 1048
    invoke-static {v1}, Lcom/amap/api/services/core/j;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusStep;->setEntrance(Lcom/amap/api/services/route/Doorway;)V

    .line 1050
    :cond_4
    const-string v1, "exit"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1051
    if-eqz v1, :cond_0

    .line 1052
    invoke-static {v1}, Lcom/amap/api/services/core/j;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusStep;->setExit(Lcom/amap/api/services/route/Doorway;)V

    goto :goto_0
.end method

.method public static r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1059
    if-nez p0, :cond_0

    .line 1060
    const/4 v0, 0x0

    .line 1084
    :goto_0
    return-object v0

    .line 1062
    :cond_0
    new-instance v1, Lcom/amap/api/services/route/RouteBusWalkItem;

    invoke-direct {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;-><init>()V

    .line 1063
    const-string v0, "origin"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1064
    const-string v0, "destination"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1065
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDistance(F)V

    .line 1066
    const-string v0, "duration"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/j;->k(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDuration(J)V

    .line 1067
    const-string v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1068
    goto :goto_0

    .line 1070
    :cond_1
    const-string v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1071
    if-nez v2, :cond_2

    move-object v0, v1

    .line 1072
    goto :goto_0

    .line 1074
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1076
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1077
    if-nez v4, :cond_3

    .line 1075
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    :cond_3
    invoke-static {v4}, Lcom/amap/api/services/core/j;->u(Lorg/json/JSONObject;)Lcom/amap/api/services/route/WalkStep;

    move-result-object v4

    .line 1081
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1083
    :cond_4
    invoke-virtual {v1, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setSteps(Ljava/util/List;)V

    move-object v0, v1

    .line 1084
    goto :goto_0
.end method

.method public static s(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1105
    :goto_0
    return-object v0

    .line 1093
    :cond_0
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1094
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1095
    goto :goto_0

    .line 1097
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1098
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1099
    if-nez v3, :cond_2

    .line 1097
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1102
    :cond_2
    invoke-static {v3}, Lcom/amap/api/services/core/j;->v(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v3

    .line 1103
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1105
    goto :goto_0
.end method

.method public static t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1109
    new-instance v0, Lcom/amap/api/services/route/Doorway;

    invoke-direct {v0}, Lcom/amap/api/services/route/Doorway;-><init>()V

    .line 1110
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setName(Ljava/lang/String;)V

    .line 1111
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1112
    return-object v0
.end method

.method public static u(Lorg/json/JSONObject;)Lcom/amap/api/services/route/WalkStep;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1116
    new-instance v0, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    .line 1117
    const-string v1, "instruction"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    .line 1118
    const-string v1, "orientation"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    .line 1119
    const-string v1, "road"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    .line 1120
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    .line 1121
    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    .line 1122
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    .line 1123
    const-string v1, "action"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    .line 1124
    const-string v1, "assistant_action"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1125
    return-object v0
.end method

.method public static v(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1130
    if-nez p0, :cond_0

    .line 1131
    const/4 v0, 0x0

    .line 1164
    :goto_0
    return-object v0

    .line 1133
    :cond_0
    new-instance v0, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteBusLineItem;-><init>()V

    .line 1134
    const-string v1, "departure_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1135
    invoke-static {v1}, Lcom/amap/api/services/core/j;->x(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 1136
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDepartureBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    .line 1138
    const-string v1, "arrival_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1139
    invoke-static {v1}, Lcom/amap/api/services/core/j;->x(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 1140
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setArrivalBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    .line 1142
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineName(Ljava/lang/String;)V

    .line 1143
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineId(Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineType(Ljava/lang/String;)V

    .line 1146
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1147
    invoke-static {v1}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v1

    .line 1148
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDistance(F)V

    .line 1150
    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1151
    invoke-static {v1}, Lcom/amap/api/services/core/j;->j(Ljava/lang/String;)F

    move-result v1

    .line 1152
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDuration(F)V

    .line 1154
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPolyline(Ljava/util/List;)V

    .line 1155
    const-string v1, "start_time"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/d;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    .line 1157
    const-string v1, "end_time"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/d;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setLastBusTime(Ljava/util/Date;)V

    .line 1159
    const-string/jumbo v1, "via_num"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-static {v1}, Lcom/amap/api/services/core/j;->i(Ljava/lang/String;)I

    move-result v1

    .line 1161
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStationNum(I)V

    .line 1162
    invoke-static {p0}, Lcom/amap/api/services/core/j;->w(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1163
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStations(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static w(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1185
    :goto_0
    return-object v0

    .line 1173
    :cond_0
    const-string/jumbo v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1174
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1175
    goto :goto_0

    .line 1177
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1178
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1179
    if-nez v3, :cond_2

    .line 1177
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1182
    :cond_2
    invoke-static {v3}, Lcom/amap/api/services/core/j;->x(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    .line 1183
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1185
    goto :goto_0
.end method

.method public static x(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1190
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    .line 1191
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    .line 1192
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    .line 1193
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1194
    return-object v0
.end method
