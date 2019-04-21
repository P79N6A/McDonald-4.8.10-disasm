.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
.super Ljava/lang/Object;
.source "MWRestaurant.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;
    }
.end annotation


# instance fields
.field public MWCatalogVersions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CatalogVersions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;",
            ">;"
        }
    .end annotation
.end field

.field public NPVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NPVersion"
    .end annotation
.end field

.field public TODCutoffTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TODCutoffTime"
    .end annotation
.end field

.field public advancedOrderMaximumTimeLimitMinutes:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AdvancedOrderMaximumTimeLimitMinutes"
    .end annotation
.end field

.field public advancedOrderMinimumTimeLimitMinutes:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AdvancedOrderMinimumTimeLimitMinutes"
    .end annotation
.end field

.field public autoBagSaleInformation:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AutoBagSaleInformation"
    .end annotation
.end field

.field public dayPart:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DayPart"
    .end annotation
.end field

.field public distance:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Distance"
    .end annotation
.end field

.field public estimatedDeliveryTimeInStoreLocalTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EstimatedDeliveryTimeInStoreLocalTime"
    .end annotation
.end field

.field public expectedDeliveryTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExpectedDeliveryTime"
    .end annotation
.end field

.field public externalStoreNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExternalStoreNumber"
    .end annotation
.end field

.field public facilities:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Facilities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public largeOrderAllowed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LargeOrderAllowed"
    .end annotation
.end field

.field public latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Latitude"
    .end annotation
.end field

.field public locations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Locations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;",
            ">;"
        }
    .end annotation
.end field

.field public longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Longitude"
    .end annotation
.end field

.field public minimumOrderValue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MinimumOrderValue"
    .end annotation
.end field

.field public nowInStoreLocalTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NowInStoreLocalTime"
    .end annotation
.end field

.field public openingHours:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OpeningHours"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;",
            ">;"
        }
    .end annotation
.end field

.field public orderMaxTimeMin:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderMaxTimeMIN"
    .end annotation
.end field

.field public orderMinTimeMin:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderMinTimeMIN"
    .end annotation
.end field

.field public outageProductCodes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OutageProductCodes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pointsOfDistribution:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PointsOfDistribution"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;",
            ">;"
        }
    .end annotation
.end field

.field public recipeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecipeVersion"
    .end annotation
.end field

.field public recipes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Recipes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;",
            ">;"
        }
    .end annotation
.end field

.field public restaurantInformation:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurantInformation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Information"
    .end annotation
.end field

.field public statusID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StatusID"
    .end annotation
.end field

.field public storeAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreAddress"
    .end annotation
.end field

.field public storeAddressCity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreAddressCity"
    .end annotation
.end field

.field public storeAddressCountry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreAddressCountry"
    .end annotation
.end field

.field public storeAddressState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreAddressState"
    .end annotation
.end field

.field public storeAddressZIP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreAddressZIP"
    .end annotation
.end field

.field public storeCutoffTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreCutoffTime"
    .end annotation
.end field

.field public storeMenuTypeCalendar:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreMenuTypeCalendar"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;",
            ">;"
        }
    .end annotation
.end field

.field public storeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreName"
    .end annotation
.end field

.field public storeNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreNumber"
    .end annotation
.end field

.field public storeStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreStatus"
    .end annotation
.end field

.field public suppressChoiceDiscount:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SuppressChoiceDiscount"
    .end annotation
.end field

.field public tableService:Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TableService"
    .end annotation
.end field

.field public timeZone:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TimeZone"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected setStoreHours(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/content/Context;)V
    .locals 24
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v9, "listHours":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v10, "listHoursOnly":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v11, "menuTypeCalendarItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;>;"
    const-string v20, "enableMultipleMenuTypes"

    invoke-static/range {v20 .. v20}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v6

    .line 222
    .local v6, "enableMultipleMenuTypes":Z
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeMenuTypeCalendar:Ljava/util/List;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    :cond_0
    const/16 v19, 0x1

    .line 223
    .local v19, "useEcpOpeningHours":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->openingHours:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->openingHours:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;

    .line 226
    .local v5, "ecpOpeningHourItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    if-eqz v19, :cond_1

    .line 227
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toStoreMenuTypeCalendarItem()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    :cond_1
    iget-object v7, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->fromTime:Ljava/lang/String;

    .line 231
    .local v7, "fromTime":Ljava/lang/String;
    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 233
    .local v18, "toTime":Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 234
    .local v16, "openAndCloseTimes":[Ljava/lang/String;
    const/16 v21, 0x0

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTo12Hour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v21

    .line 235
    const/16 v21, 0x1

    invoke-static/range {v18 .. v18}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTo12Hour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v21

    .line 236
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static/range {v18 .. v18}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTo12Hour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 238
    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTo12Hour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 240
    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/mcdonalds/sdk/utils/DateUtils;->areTimesEqualOrWithinAMinute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 241
    sget v21, Lcom/mcdonalds/sdk/R$string;->label_open_all_day:I

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v5    # "ecpOpeningHourItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    .end local v7    # "fromTime":Ljava/lang/String;
    .end local v16    # "openAndCloseTimes":[Ljava/lang/String;
    .end local v18    # "toTime":Ljava/lang/String;
    .end local v19    # "useEcpOpeningHours":Z
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 243
    .restart local v5    # "ecpOpeningHourItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    .restart local v7    # "fromTime":Ljava/lang/String;
    .restart local v16    # "openAndCloseTimes":[Ljava/lang/String;
    .restart local v18    # "toTime":Ljava/lang/String;
    .restart local v19    # "useEcpOpeningHours":Z
    :cond_3
    sget v21, Lcom/mcdonalds/sdk/R$string;->store_opening_hours_range:I

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    const/16 v23, 0x1

    aput-object v18, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "hoursString":Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    .end local v5    # "ecpOpeningHourItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    .end local v7    # "fromTime":Ljava/lang/String;
    .end local v8    # "hoursString":Ljava/lang/String;
    .end local v16    # "openAndCloseTimes":[Ljava/lang/String;
    .end local v18    # "toTime":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreHours(Ljava/util/List;)V

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreOperatingHours(Ljava/util/List;)V

    .line 250
    if-nez v19, :cond_5

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeMenuTypeCalendar:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;

    .line 253
    .local v17, "storeMenuTypeCalendarItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;->toStoreMenuTypeCalendarItem()Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 256
    .end local v17    # "storeMenuTypeCalendarItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setMenuTypeCalendar(Ljava/util/List;)V

    .line 259
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->nowInStoreLocalTime:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 260
    .local v14, "nowInStore":J
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 261
    .local v12, "nowInLocal":J
    sub-long v20, v14, v12

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setTimeDifference(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v12    # "nowInLocal":J
    .end local v14    # "nowInStore":J
    :goto_3
    return-void

    .line 262
    :catch_0
    move-exception v4

    .line 263
    .local v4, "e":Ljava/text/ParseException;
    const-wide/16 v20, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setTimeDifference(J)V

    goto :goto_3
.end method

.method public toStore(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->toStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    return-object v0
.end method

.method public toStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance p2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .end local p2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-direct {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;-><init>()V

    .line 122
    .restart local p2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeNumber:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreId(I)V

    .line 123
    iget-wide v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->latitude:D

    invoke-virtual {p2, v8, v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLatitude(D)V

    .line 124
    iget-wide v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->longitude:D

    invoke-virtual {p2, v8, v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLongitude(D)V

    .line 125
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->distance:I

    int-to-double v8, v8

    invoke-virtual {p2, v8, v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setDistance(D)V

    .line 127
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeAddress:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress1(Ljava/lang/String;)V

    .line 128
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress2(Ljava/lang/String;)V

    .line 129
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeAddressCity:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCity(Ljava/lang/String;)V

    .line 130
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeAddressZIP:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPostalCode(Ljava/lang/String;)V

    .line 131
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeAddressState:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setState(Ljava/lang/String;)V

    .line 132
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeAddressCountry:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCountry(Ljava/lang/String;)V

    .line 133
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreType(Ljava/lang/String;)V

    .line 134
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreURL(Ljava/lang/String;)V

    .line 135
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPhoneNumber(Ljava/lang/String;)V

    .line 136
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->orderMaxTimeMin:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setMaxAdvanceOrderTime(I)V

    .line 137
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->orderMinTimeMin:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setMinAdvanceOrderTime(I)V

    .line 138
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->timeZone:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setTimeZone(I)V

    .line 140
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->advancedOrderMinimumTimeLimitMinutes:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAdvancedOrderMinimumTimeLimitMinutes(I)V

    .line 141
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->advancedOrderMaximumTimeLimitMinutes:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAdvancedOrderMaximumTimeLimitMinutes(I)V

    .line 145
    const-string v8, "storeLocator"

    invoke-static {v8}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 147
    .local v7, "storeLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getFacilityMap()Landroid/util/SparseArray;

    move-result-object v3

    .line 148
    .local v3, "facilityMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->facilities:Ljava/util/List;

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v4, "facilityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->facilities:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 151
    .local v2, "facilityID":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Facility;

    .line 152
    .local v1, "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Facility;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    .end local v1    # "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    .end local v2    # "facilityID":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {p2, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setFacilityNames(Ljava/util/List;)V

    .line 161
    .end local v4    # "facilityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->setStoreHours(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->pointsOfDistribution:Ljava/util/List;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->pointsOfDistribution:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 173
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->pointsOfDistribution:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;

    .line 174
    .local v6, "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
    iget-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->digitalServices:Ljava/util/List;

    if-eqz v8, :cond_4

    iget-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->digitalServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 175
    iget-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;->digitalServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;

    .line 176
    .local v0, "ds":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
    iget-object v8, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    const/4 v11, 0x0

    .line 177
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    const/4 v11, 0x0

    .line 178
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;->key:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;->technologies:Ljava/util/List;

    const/4 v11, 0x0

    .line 179
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;->key:Ljava/lang/String;

    const-string v11, "SCANNER"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 180
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOrdering(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 162
    .end local v0    # "ds":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
    .end local v6    # "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;
    :catch_0
    move-exception v5

    .line 163
    .local v5, "ignored":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v5    # "ignored":Ljava/lang/Exception;
    :cond_6
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->pointsOfDistribution:Ljava/util/List;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPODs(Ljava/util/List;)V

    .line 189
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->expectedDeliveryTime:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setExpectedDeliveryTime(Ljava/lang/String;)V

    .line 190
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->nowInStoreLocalTime:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setNowInStoreLocalTime(Ljava/lang/String;)V

    .line 191
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeStatus:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreOpen(Z)V

    .line 192
    iget v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->dayPart:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setDayPart(I)V

    .line 193
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->TODCutoffTime:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setTODCutoffTime(Ljava/lang/String;)V

    .line 194
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeCutoffTime:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreCutoffTime(Ljava/lang/String;)V

    .line 195
    iget-boolean v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->largeOrderAllowed:Z

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLargeOrderAllowed(Z)V

    .line 196
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->NPVersion:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setNPVersion(Ljava/lang/String;)V

    .line 197
    iget-wide v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->minimumOrderValue:D

    invoke-virtual {p2, v8, v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setMinimumOrderValue(D)V

    .line 198
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->externalStoreNumber:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setExternalStoreNumber(Ljava/lang/String;)V

    .line 199
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->locations:Ljava/util/List;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLocations(Ljava/util/List;)V

    .line 200
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->outageProductCodes:Ljava/util/List;

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setOutageProducts(Ljava/util/List;)V

    .line 202
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->autoBagSaleInformation:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;

    if-eqz v8, :cond_7

    .line 203
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->autoBagSaleInformation:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;

    iget-boolean v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;->enabled:Z

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setBagChargeEnabled(Z)V

    .line 204
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->autoBagSaleInformation:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;

    iget v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;->bagProductCode:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setBagProductCode(I)V

    .line 205
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->autoBagSaleInformation:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;

    iget v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;->noBagProductCode:I

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setNoBagProductCode(I)V

    .line 208
    :cond_7
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->tableService:Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;

    if-eqz v8, :cond_8

    .line 209
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->tableService:Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;

    invoke-virtual {v8, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->toTableService(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/TableService;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setTableService(Lcom/mcdonalds/sdk/modules/models/TableService;)V

    .line 212
    :cond_8
    return-object p2

    .line 191
    :cond_9
    const/4 v8, 0x0

    goto :goto_3
.end method
