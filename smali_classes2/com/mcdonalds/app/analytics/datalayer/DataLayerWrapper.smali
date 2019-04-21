.class public Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;
.super Ljava/lang/Object;
.source "DataLayerWrapper.java"


# static fields
.field private static final EXCLUDED_PAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEVEL_PAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

.field private storeFilterToggled:Z

.field private storeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Terms"

    aput-object v1, v0, v3

    const-string v1, "FirstLoadTutorial"

    aput-object v1, v0, v4

    const-string v1, "Privacy"

    aput-object v1, v0, v5

    const-string v1, "FAQ"

    aput-object v1, v0, v6

    const-string v1, "Career"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ContactUs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RMHC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NutritionInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EULA"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->EXCLUDED_PAGES:Ljava/util/List;

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Dashboard"

    aput-object v1, v0, v3

    const-string v1, "RestaurantLocator"

    aput-object v1, v0, v4

    const-string v1, "Nutrition"

    aput-object v1, v0, v5

    const-string v1, "ProductMenu"

    aput-object v1, v0, v6

    const-string v1, "Registration"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AboutTheApp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LogIn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AccountSettings"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->TOP_LEVEL_PAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;)V
    .locals 1
    .param p1, "dataLayer"    # Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->storeFilterToggled:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->storeFilters:Ljava/util/List;

    .line 71
    return-void
.end method

.method private addPageSection(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p2, "newSection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "pageSections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const-string v6, "addPageSection"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    aput-object p2, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    sget-object v6, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->EXCLUDED_PAGES:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    const/4 v4, 0x0

    .line 268
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v4

    .line 242
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v6, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->TOP_LEVEL_PAGES:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    invoke-direct {p0, v9, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->formatPageSection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "firstLevel":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 246
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 247
    .end local v0    # "firstLevel":Ljava/lang/String;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->containsPage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    const/4 v1, 0x0

    .local v1, "jj":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 252
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 253
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "jj":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 262
    .local v3, "nextLevelIndex":I
    invoke-direct {p0, v3, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->formatPageSection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "nextLevel":Ljava/lang/String;
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private containsPage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .param p2, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "currentBreadcrumbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "containsPage"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-static {p1}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "individualCrumb":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    .end local v0    # "individualCrumb":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private createOfferBasketItems(Ljava/util/Collection;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Ljava/util/List;
    .locals 8
    .param p2, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/Order$PriceType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, "orderOffers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    const-string v3, "createOfferBasketItems"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 368
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 370
    .local v0, "offerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 371
    const-string v4, "id"

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_0
    const-string v4, "availability"

    const-string v5, "YES"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v4, "units"

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v4, "revenue"

    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    .end local v0    # "offerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    return-object v2
.end method

.method private createOfferItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .local p2, "qrCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "createOfferItems"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 321
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 322
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 324
    .local v2, "offerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 325
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 327
    .local v1, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    const-string v5, "id"

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    const-string v5, "name"

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    const-string v5, "expiration"

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    .end local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 333
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    .local v3, "qrCode":Ljava/lang/String;
    const-string v5, "qrCode"

    invoke-static {v2, v5, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    .end local v3    # "qrCode":Ljava/lang/String;
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "ii":I
    .end local v2    # "offerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    return-object v4
.end method

.method private createProductBasketItems(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, "orderProducts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const-string v3, "createProductBasketItems"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 349
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 351
    .local v1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 352
    const-string v3, "id"

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_0
    const-string v5, "availability"

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "NO"

    :goto_1
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v3, "units"

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v3, "revenue"

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_1
    const-string v3, "YES"

    goto :goto_1

    .line 361
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-object v2
.end method

.method private formatPageSection(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "level"    # I
    .param p2, "sectionName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "formatPageSection"

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    const-string v0, "%s %s: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Level"

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilters(ZLjava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "storeFilterToggled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "storeFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "getFilters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 387
    const-string v1, "Exclude Non-Mobile Ordering Stores"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_0
    if-eqz p2, :cond_1

    .line 391
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    :cond_1
    return-object v0
.end method

.method private sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const-string v7, "sha256"

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    :try_start_0
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 412
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 413
    .local v2, "hash":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v4, "hexString":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_1

    .line 416
    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v10, :cond_0

    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 421
    .end local v3    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 425
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hash":[B
    .end local v4    # "hexString":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    :goto_1
    return-object v7

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Unable to hash text."

    .line 424
    .local v6, "message":Ljava/lang/String;
    invoke-static {v6}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->reportWarning(Ljava/lang/String;)V

    .line 425
    const-string v7, ""

    goto :goto_1
.end method


# virtual methods
.method public logButtonClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const-string v0, "logButtonClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->recordEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->log()V

    .line 298
    return-void
.end method

.method public logLifecycleEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const-string v0, "logLifecycleEvent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->recordEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->log()V

    .line 278
    return-void
.end method

.method public logListItemClick(Ljava/lang/String;I)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "positionTag"    # I

    .prologue
    const-string v0, "logListItemClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->log()V

    .line 303
    return-void
.end method

.method public logPageLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    const-string v1, "logPageLoad"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    if-nez p1, :cond_0

    .line 282
    const-string v1, "Page name is not set for tracking"

    invoke-static {v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->reportWarning(Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 288
    .local v0, "pageLoadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "page.name"

    invoke-static {v0, v1, p1}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    const-string v1, "event.name"

    invoke-static {v0, v1, p2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->log()V

    goto :goto_0
.end method

.method public recordError(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "recordError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v1, "error.message"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    move-result-object v0

    const-string v1, "Error"

    .line 307
    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->recordEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->log()V

    .line 310
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v1, "error.message"

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 311
    return-void
.end method

.method public setFormName(Ljava/lang/String;)V
    .locals 3
    .param p1, "formName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setFormName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v1, "content.formName"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 222
    return-void
.end method

.method public setListener(Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setListener(Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;)V

    .line 315
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "setLocation"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 212
    .local v0, "locationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 213
    const-string v1, "location.latitude"

    const-string v2, "%.8f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    const-string v1, "location.longitude"

    const-string v2, "%.8f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 218
    return-void
.end method

.method public setOffers(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .local p2, "qrCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "setOffers"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v1, "offers"

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->createOfferItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 154
    return-void
.end method

.method public setPageSection(Ljava/lang/String;)V
    .locals 4
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    const-string v1, "setPageSection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, "page.section"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->getState(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 227
    .local v0, "currentPageSections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentPageSections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .restart local v0    # "currentPageSections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->addPageSection(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, "page.section"

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 234
    return-void
.end method

.method public setProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "setProduct"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    .local v0, "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "product.category"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getCategoryId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v1, "product.name"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v1, "product.id"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v2, "product.availability"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NO"

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v1, "product.units"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const-string v1, "product.revenue"

    invoke-static {p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 149
    return-void

    .line 143
    :cond_1
    const-string v1, "YES"

    goto :goto_0
.end method

.method public setRecipe(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 4
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    const-string v1, "setRecipe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    .local v0, "recipeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 127
    const-string v1, "product.category"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getCategoryId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v1, "product.name"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v1, "product.id"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getExternalId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v1, "product.units"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 134
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 5
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;
    .param p4, "numResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "setSearchTerm"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iput-object p2, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->storeFilters:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 161
    .local v0, "searchMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "search.term"

    invoke-static {v0, v1, p1}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v1, "search.filter"

    iget-boolean v2, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->storeFilterToggled:Z

    invoke-direct {p0, v2, p2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->getFilters(ZLjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v1, "search.type"

    invoke-static {v0, v1, p3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v1, "search.numResults"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 167
    return-void
.end method

.method public setSite(Lcom/mcdonalds/sdk/services/configuration/Configuration;)V
    .locals 9
    .param p1, "config"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "setSite"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const-string v2, "analytics.DataLayer.country"

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    .local v1, "siteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "site.platform"

    const-string v3, "Android"

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v2, "site.marketId"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v2, "site.property"

    const-string v3, "%s %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v5, "GMA"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v2, "site.appId"

    const-string v3, "%s %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "GMA"

    aput-object v5, v4, v6

    const-string v5, "4.8.10"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 88
    return-void
.end method

.method public setState(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "setState"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 75
    return-void
.end method

.method public setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v1, "setStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 92
    .local v0, "storeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 93
    const-string v1, "restaurant.ID"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v1, "restaurant.city"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v1, "restaurant.state"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v1, "restaurant.postalCode"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 99
    return-void
.end method

.method public setStoreFilterToggled(Z)V
    .locals 5
    .param p1, "storeFilterToggled"    # Z

    .prologue
    const-string v1, "setStoreFilterToggled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iput-boolean p1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->storeFilterToggled:Z

    .line 172
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 173
    .local v0, "filterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "search.filter"

    iget-object v2, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->storeFilters:Ljava/util/List;

    invoke-direct {p0, p1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->getFilters(ZLjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 175
    return-void
.end method

.method public setTransaction(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/MenuType;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 5
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;
    .param p3, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v2, "setTransaction"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    .local v1, "orderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_5

    .line 181
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    const-string v2, "transaction.fulfillment"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    :cond_0
    const-string v2, "transaction.calories"

    invoke-static {p1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrder(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v2, "transaction.price.tax"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalTax()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    if-eqz p2, :cond_1

    .line 187
    const-string v2, "transaction.daypart"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    :cond_1
    const-string v2, "transaction.orderId"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const-string v2, "transaction.paymentMethod"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    if-eqz p3, :cond_2

    .line 192
    const-string v2, "transaction.state"

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v2, "transaction.zip"

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "basketItems":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 198
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->createProductBasketItems(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 201
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->createOfferBasketItems(Ljava/util/Collection;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_4
    const-string v2, "transaction.basketItems"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    .end local v0    # "basketItems":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 207
    return-void
.end method

.method public setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V
    .locals 5
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "authStatus"    # Ljava/lang/String;
    .param p3, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;

    .prologue
    const/4 v4, 0x0

    const-string v1, "setUser"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    .local v0, "customerProfileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 105
    const-string v1, "user.emailAddressEncrypted"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v1, "user.ecpId"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v1, "user.postalCode"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :goto_0
    const-string v1, "user.authStatus"

    invoke-static {v0, v1, p2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    if-eqz p3, :cond_0

    .line 117
    const-string v1, "user.daypart"

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/DataLayerWrapper;->dataLayer:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 121
    return-void

    .line 109
    :cond_1
    const-string v1, "user.emailAddressEncrypted"

    invoke-static {v0, v1, v4}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v1, "user.ecpId"

    invoke-static {v0, v1, v4}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v1, "user.postalCode"

    invoke-static {v0, v1, v4}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
