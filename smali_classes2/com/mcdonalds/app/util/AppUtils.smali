.class public Lcom/mcdonalds/app/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field public static final RATE_KJ_KCAL:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-wide v0, 0x4010bc6a7ef9db23L    # 4.184

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/AppUtils;->RATE_KJ_KCAL:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v7, "com.mcdonalds.app.util.AppUtils"

    const-string v8, "getCurrentMenuType"

    invoke-static {v9, v7, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    .line 308
    .local v6, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const/4 v0, 0x0

    .line 310
    .local v0, "currentDayPart":Lcom/mcdonalds/sdk/modules/models/MenuType;
    if-eqz v6, :cond_1

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isOrderingAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 311
    const-string v7, "ordering"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 312
    .local v5, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    .line 314
    .local v2, "isDelivery":Z
    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v1

    .line 315
    .local v1, "currentDayPartId":I
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMenuTypes()Ljava/util/List;

    move-result-object v4

    .line 317
    .local v4, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    if-eqz v4, :cond_1

    .line 318
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 319
    .local v3, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v8

    if-ne v8, v1, :cond_0

    .line 320
    move-object v0, v3

    goto :goto_0

    .line 326
    .end local v1    # "currentDayPartId":I
    .end local v2    # "isDelivery":Z
    .end local v3    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    .end local v4    # "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    .end local v5    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    :cond_1
    return-object v0
.end method

.method public static getDayPartInitialTime(ILcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    .locals 12
    .param p0, "dayPart"    # I
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.util.AppUtils"

    const-string v7, "getDayPartInitialTime"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    aput-object p1, v8, v11

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    if-nez p1, :cond_1

    .line 277
    const-string v0, ""

    .line 295
    :cond_0
    :goto_0
    return-object v0

    .line 280
    :cond_1
    const-string v0, "5:00"

    .line 281
    .local v0, "breakfastTime":Ljava/lang/String;
    const-string v3, "10:30"

    .line 282
    .local v3, "lunchTime":Ljava/lang/String;
    const-string v1, "23:00"

    .line 284
    .local v1, "dinnerTime":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    .line 285
    .local v2, "isDelivery":Z
    invoke-virtual {p1, p0, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendarItem(IZ)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v4

    .line 286
    .local v4, "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    if-eqz v4, :cond_2

    .line 287
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_2
    if-eqz p0, :cond_0

    .line 293
    if-ne p0, v11, :cond_3

    move-object v0, v3

    .line 294
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 295
    goto :goto_0
.end method

.method private static getEnergyText(DDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "totalEnergy"    # D
    .param p2, "secondaryEnergy"    # D
    .param p4, "energyUnit"    # Ljava/lang/String;
    .param p5, "secondaryEnergyUnit"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const-string v8, "com.mcdonalds.app.util.AppUtils"

    const-string v9, "getEnergyText"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/Double;

    invoke-direct {v12, p0, p1}, Ljava/lang/Double;-><init>(D)V

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/Double;

    move-wide/from16 v0, p2

    invoke-direct {v12, v0, v1}, Ljava/lang/Double;-><init>(D)V

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object p4, v10, v11

    const/4 v11, 0x3

    aput-object p5, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 254
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 256
    .local v4, "energyKJ":J
    const-wide/16 v8, 0x0

    cmpl-double v7, p2, v8

    if-nez v7, :cond_0

    .line 257
    long-to-double v8, v4

    sget-object v7, Lcom/mcdonalds/app/util/AppUtils;->RATE_KJ_KCAL:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 262
    .local v2, "energyKCAL":J
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 263
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "interface.nutritionalInfo.energyUnit"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    .end local v2    # "energyKCAL":J
    .end local v4    # "energyKJ":J
    .local v6, "result":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 259
    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "energyKJ":J
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .restart local v2    # "energyKCAL":J
    goto :goto_0

    .line 268
    .end local v2    # "energyKCAL":J
    .end local v4    # "energyKJ":J
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getEnergyTextForOrder(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p1, "energyUnit"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v6, "com.mcdonalds.app.util.AppUtils"

    const-string v7, "getEnergyTextForOrder"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalEnergy()D

    move-result-wide v0

    .line 244
    .local v0, "totalEnergy":D
    const-wide/16 v2, 0x0

    .line 245
    .local v2, "secondaryEnergy":D
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v6, "interface.nutritionalInfo.secondaryEnergyUnit"

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "secondaryEnergyUnit":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalSecondaryEnergy()D

    move-result-wide v2

    :cond_0
    move-object v4, p1

    .line 249
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyText(DDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getEnergyTextForOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .param p1, "energyUnit"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v6, "com.mcdonalds.app.util.AppUtils"

    const-string v7, "getEnergyTextForOrderOffer"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getTotalEnergy()D

    move-result-wide v0

    .line 234
    .local v0, "totalEnergy":D
    const-wide/16 v2, 0x0

    .line 235
    .local v2, "secondaryEnergy":D
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v6, "interface.nutritionalInfo.secondaryEnergyUnit"

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "secondaryEnergyUnit":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getTotalSecondaryEnergy()D

    move-result-wide v2

    :cond_0
    move-object v4, p1

    .line 239
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyText(DDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getEnergyTextForOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "energyUnit"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v6, "com.mcdonalds.app.util.AppUtils"

    const-string v7, "getEnergyTextForOrderProduct"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalEnergy()D

    move-result-wide v0

    .line 224
    .local v0, "totalEnergy":D
    const-wide/16 v2, 0x0

    .line 225
    .local v2, "secondaryEnergy":D
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v6, "interface.nutritionalInfo.secondaryEnergyUnit"

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "secondaryEnergyUnit":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalSecondaryEnergy()D

    move-result-wide v2

    :cond_0
    move-object v4, p1

    .line 229
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyText(DDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.AppUtils"

    const-string v2, "getLocalisedLegalUrl"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const-string v0, "interface.legalCopyLocalized.{0}.{1}"

    const-string v1, "interface.legalCopy.{0}"

    invoke-static {p0, v0, v1}, Lcom/mcdonalds/app/util/AppUtils;->getLocalizedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalizedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "localizedBaseKey"    # Ljava/lang/String;
    .param p2, "defaultBaseKey"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.util.AppUtils"

    const-string v6, "getLocalizedUrl"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    aput-object p1, v7, v9

    aput-object p2, v7, v10

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "locale":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_0
    new-array v4, v10, [Ljava/lang/Object;

    aput-object p0, v4, v8

    aput-object v1, v4, v9

    invoke-static {p1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "localizedKey":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    .local v3, "localizedUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    .end local v3    # "localizedUrl":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 213
    .restart local v3    # "localizedUrl":Ljava/lang/String;
    :cond_1
    new-array v4, v9, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-static {p2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "defaultKey":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    goto :goto_0
.end method

.method public static getLocationFromString(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 11
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-string v6, "com.mcdonalds.app.util.AppUtils"

    const-string v8, "getLocationFromString"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v10

    invoke-static {v7, v6, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    if-eqz p0, :cond_0

    .line 121
    const-string v6, "\\s"

    const-string v8, ""

    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "values":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 126
    .local v2, "latitude":D
    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 128
    .local v4, "longitude":D
    new-instance v6, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "values":[Ljava/lang/String;
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :goto_0
    return-object v6

    .line 130
    .restart local v1    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v6, v7

    .line 131
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "values":[Ljava/lang/String;
    :cond_0
    move-object v6, v7

    .line 134
    goto :goto_0
.end method

.method public static getLocationFromString(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 8
    .param p0, "latitude"    # Ljava/lang/String;
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v1, "com.mcdonalds.app.util.AppUtils"

    const-string v3, "getLocationFromString"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    :try_start_0
    new-instance v1, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v1, v2

    .line 104
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move-object v1, v2

    .line 107
    goto :goto_0
.end method

.method public static getUserLocation()Landroid/location/Location;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "com.mcdonalds.app.util.AppUtils"

    const-string v2, "getUserLocation"

    invoke-static {v3, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v0

    .line 113
    .local v0, "location":Landroid/location/Location;
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setLocation(Landroid/location/Location;)V

    .line 115
    return-object v0
.end method

.method public static hideNutritionIconOnOrderingPages()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.AppUtils"

    const-string v1, "hideNutritionIconOnOrderingPages"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    const-string v0, "nutritionInfo"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.ordering.hideNutritionInfo"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideNutritionOnOrderingPages()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.AppUtils"

    const-string v1, "hideNutritionOnOrderingPages"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    const-string v0, "nutritionInfo"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.nutritionalInfo.hideOnOrderingPages"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideTermsAndConditionsView()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.AppUtils"

    const-string v1, "hideTermsAndConditionsView"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.register.hideTermsAndConditionsScreen"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.util.AppUtils"

    const-string v6, "isNetworkConnected"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p0, v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 162
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .locals 5
    .param p0, "unsafeBoolean"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.AppUtils"

    const-string v2, "isTrue"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static showLargeOrderAlert(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 5
    .param p0, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.AppUtils"

    const-string v2, "showLargeOrderAlert"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.confirmationNeededOrders.callCenterCallsUser"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-class v0, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v1, "large_order_alert"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    const-class v0, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v1, "large_order_call_alert"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stringByAddingPercentEscapesUsingEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.util.AppUtils"

    const-string v6, "stringByAddingPercentEscapesUsingEncoding"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    aput-object p1, v7, v9

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 141
    .local v2, "inputBytes":[B
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 142
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 143
    aget-byte v4, v2, v1

    if-gez v4, :cond_1

    aget-byte v4, v2, v1

    add-int/lit16 v0, v4, 0x100

    .line 144
    .local v0, "charByte":I
    :goto_1
    if-le v0, v10, :cond_0

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x25

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    if-eq v0, v10, :cond_0

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x60

    if-eq v0, v4, :cond_0

    const/16 v4, 0x7b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x7c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x7d

    if-ne v0, v4, :cond_2

    .line 150
    :cond_0
    const-string v4, "%%%02X"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "charByte":I
    :cond_1
    aget-byte v0, v2, v1

    goto :goto_1

    .line 152
    .restart local v0    # "charByte":I
    :cond_2
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 155
    .end local v0    # "charByte":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
