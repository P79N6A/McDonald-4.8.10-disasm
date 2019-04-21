.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;
.super Ljava/lang/Object;
.source "MWOfferConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/OffersConnector;


# static fields
.field private static final ASYNC_TOKEN_PREFIX:Ljava/lang/String;

.field private static final CACHE_EXP_INTERVAL:J = 0x15180L

.field public static final CUSTOMER_OFFERS_CACHE_KEY:Ljava/lang/String; = "CUSTOMER_OFFERS_CACHE_KEY"


# instance fields
.field private mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

.field private mOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V
    .locals 0
    .param p1, "connectorShared"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mOffers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mOffers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerOffersResponse;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerOffersResponse;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->processCustomerOffers(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerOffersResponse;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->processAdvertisableResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->processAdvertisableEntitiesResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private processAdvertisableEntitiesResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;I)Ljava/util/List;
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    :cond_0
    const/4 v2, 0x0

    .line 371
    :cond_1
    return-object v2

    .line 365
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;

    .line 367
    .local v0, "advertisable":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;
    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->toAdvertisablePromotionEntity(I)Ljava/util/List;

    move-result-object v1

    .line 368
    .local v1, "advertisableDeals":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private processAdvertisableResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;)Ljava/util/List;
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    :cond_0
    const/4 v2, 0x0

    .line 335
    :cond_1
    return-object v2

    .line 329
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;

    .line 331
    .local v0, "advertisable":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    invoke-direct {v1, v0}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V

    .line 332
    .local v1, "advertisableDeal":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processCustomerOffers(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerOffersResponse;Ljava/util/List;)V
    .locals 36
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerOffersResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerOffersResponse;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-object/from16 v31, v0

    const-string v32, "staticDataBaseURL"

    invoke-virtual/range {v31 .. v32}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, "imageBasePath":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v31

    const-string v32, "modules.offers.imageHost"

    invoke-virtual/range {v31 .. v32}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 137
    .local v25, "offersOverrideHost":Ljava/lang/String;
    if-eqz v25, :cond_2

    .line 139
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 140
    .local v4, "basePathURL":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 141
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "JAC: new image basePath: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    .end local v4    # "basePathURL":Ljava/net/URL;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerOffersResponse;->getData()Ljava/lang/Object;

    move-result-object v31

    if-nez v31, :cond_3

    .line 300
    :cond_1
    return-void

    .line 145
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v31

    const-string v32, "interface.offers.imageHost"

    invoke-virtual/range {v31 .. v32}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "offersOverrideHost":Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 146
    .restart local v25    # "offersOverrideHost":Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 148
    :try_start_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v4    # "basePathURL":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 150
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "JAC: new image basePath: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    .end local v4    # "basePathURL":Ljava/net/URL;
    :catch_0
    move-exception v31

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerOffersResponse;->getData()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;

    .line 158
    .local v7, "ecpOffer":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;
    new-instance v19, Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-direct/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/Offer;-><init>()V

    .line 160
    .local v19, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v33, "\n"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 161
    .local v18, "nameComponents":[Ljava/lang/String;
    :goto_2
    const/16 v31, 0x0

    aget-object v20, v18, v31

    .line 162
    .local v20, "offerName":Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v31, v0

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-le v0, v1, :cond_9

    const/16 v31, 0x1

    aget-object v24, v18, v31

    .line 164
    .local v24, "offerSubtitle":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/sdk/modules/models/Offer;->setName(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setSubtitle(Ljava/lang/String;)V

    .line 166
    iget-boolean v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->archived:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setArchived(Ljava/lang/Boolean;)V

    .line 167
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->imageBaseName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, "imageBaseName":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/mcdonalds/sdk/modules/models/Offer;->setSmallImagePath(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/mcdonalds/sdk/modules/models/Offer;->setLargeImagePath(Ljava/lang/String;)V

    .line 170
    iget v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->currentPunch:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setCurrentPunch(Ljava/lang/Integer;)V

    .line 171
    iget v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->duration:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setDuration(Ljava/lang/Integer;)V

    .line 172
    iget-boolean v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->expirationChanged:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setExpirationChanged(Ljava/lang/Boolean;)V

    .line 173
    iget-boolean v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->expired:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setExpired(Ljava/lang/Boolean;)V

    .line 174
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->localValidFrom:Ljava/util/Date;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setLocalValidFrom(Ljava/util/Date;)V

    .line 175
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->localValidThru:Ljava/util/Date;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setLocalValidThrough(Ljava/util/Date;)V

    .line 176
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->longDescription:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setLongDescription(Ljava/lang/String;)V

    .line 177
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->shortDescription:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setShortDescription(Ljava/lang/String;)V

    .line 178
    iget-boolean v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->selected:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setSelected(Ljava/lang/Boolean;)V

    .line 179
    iget v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->id:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setOfferId(Ljava/lang/Integer;)V

    .line 180
    iget v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->offerType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setOfferType(Ljava/lang/Integer;)V

    .line 181
    iget-wide v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->orderDiscount:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setOrderDiscount(Ljava/lang/Double;)V

    .line 182
    iget v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->currentPunch:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setCurrentPunch(Ljava/lang/Integer;)V

    .line 183
    iget v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->totalPunch:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setTotalPunch(Ljava/lang/Integer;)V

    .line 185
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->podConditions:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->podConditions:Ljava/util/List;

    move-object/from16 v31, v0

    const-string v33, "DELIVERY"

    .line 187
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    :cond_4
    const/4 v13, 0x1

    .line 189
    .local v13, "isDeliveryOffer":Z
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/mcdonalds/sdk/modules/models/Offer;->setIsDeliveryOffer(Z)V

    .line 191
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->podConditions:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->podConditions:Ljava/util/List;

    move-object/from16 v31, v0

    const-string v33, "PICKUP"

    .line 193
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    :cond_5
    const/4 v15, 0x1

    .line 195
    .local v15, "isPickUpOffer":Z
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/mcdonalds/sdk/modules/models/Offer;->setIsPickUpOffer(Z)V

    .line 197
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    if-eqz v31, :cond_6

    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->podConditions:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_c

    :cond_6
    const/4 v14, 0x1

    .line 199
    .local v14, "isNoPod":Z
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/models/Offer;->setIsNoPod(Z)V

    .line 201
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->orderDiscountType:Ljava/lang/Integer;

    move-object/from16 v31, v0

    if-nez v31, :cond_d

    const/4 v6, 0x0

    .line 202
    .local v6, "discountTypeIndex":I
    :goto_7
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->values()[Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    move-result-object v31

    aget-object v31, v31, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setOrderDiscountType(Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;)V

    .line 204
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->productSets:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_10

    .line 205
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v23, "offerProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->productSets:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v29

    .local v29, "size":I
    :goto_8
    move/from16 v0, v29

    if-ge v10, v0, :cond_f

    .line 207
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->productSets:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;

    .line 209
    .local v8, "ecpProductSet":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;
    new-instance v21, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-direct/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;-><init>()V

    .line 211
    .local v21, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/OfferAction;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/OfferAction;-><init>()V

    .line 213
    .local v2, "action":Lcom/mcdonalds/sdk/modules/models/OfferAction;
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;

    move-object/from16 v31, v0

    if-eqz v31, :cond_7

    .line 214
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;->discountType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->setDiscountType(Ljava/lang/Integer;)V

    .line 215
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;->type:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->setOfferRedemptionType(Ljava/lang/Integer;)V

    .line 216
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;->priceFromCode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->setPriceFromCode(Ljava/lang/String;)V

    .line 217
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;->value:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->setValue(Ljava/lang/Double;)V

    .line 218
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setAction(Lcom/mcdonalds/sdk/modules/models/OfferAction;)V

    .line 221
    :cond_7
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v27, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->products:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    .line 223
    const/16 v16, 0x0

    .local v16, "j":I
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->products:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "ecpSize":I
    :goto_9
    move/from16 v0, v16

    if-ge v0, v9, :cond_e

    .line 224
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->products:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 226
    .local v26, "productCode":Ljava/lang/Integer;
    new-instance v22, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-direct/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;-><init>()V

    .line 227
    .local v22, "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->setProductCode(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 160
    .end local v2    # "action":Lcom/mcdonalds/sdk/modules/models/OfferAction;
    .end local v6    # "discountTypeIndex":I
    .end local v8    # "ecpProductSet":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;
    .end local v9    # "ecpSize":I
    .end local v10    # "i":I
    .end local v11    # "imageBaseName":Ljava/lang/String;
    .end local v13    # "isDeliveryOffer":Z
    .end local v14    # "isNoPod":Z
    .end local v15    # "isPickUpOffer":Z
    .end local v16    # "j":I
    .end local v18    # "nameComponents":[Ljava/lang/String;
    .end local v20    # "offerName":Ljava/lang/String;
    .end local v21    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .end local v22    # "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    .end local v23    # "offerProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    .end local v24    # "offerSubtitle":Ljava/lang/String;
    .end local v26    # "productCode":Ljava/lang/Integer;
    .end local v27    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    .end local v29    # "size":I
    :cond_8
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v31, 0x0

    const-string v33, ""

    aput-object v33, v18, v31

    const/16 v31, 0x1

    const-string v33, ""

    aput-object v33, v18, v31

    goto/16 :goto_2

    .line 162
    .restart local v18    # "nameComponents":[Ljava/lang/String;
    .restart local v20    # "offerName":Ljava/lang/String;
    :cond_9
    const-string v24, ""

    goto/16 :goto_3

    .line 187
    .restart local v11    # "imageBaseName":Ljava/lang/String;
    .restart local v24    # "offerSubtitle":Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 193
    .restart local v13    # "isDeliveryOffer":Z
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 197
    .restart local v15    # "isPickUpOffer":Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 201
    .restart local v14    # "isNoPod":Z
    :cond_d
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->orderDiscountType:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_7

    .line 231
    .restart local v2    # "action":Lcom/mcdonalds/sdk/modules/models/OfferAction;
    .restart local v6    # "discountTypeIndex":I
    .restart local v8    # "ecpProductSet":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;
    .restart local v10    # "i":I
    .restart local v21    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .restart local v23    # "offerProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    .restart local v27    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    .restart local v29    # "size":I
    :cond_e
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setProducts(Ljava/util/List;)V

    .line 233
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->alias:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setAlias(Ljava/lang/String;)V

    .line 234
    iget-boolean v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->anyProduct:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setAnyProduct(Ljava/lang/Boolean;)V

    .line 235
    iget-boolean v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->promoItem:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setPromoItem(Ljava/lang/Boolean;)V

    .line 236
    iget-wide v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->maxUnitPrice:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setMaxUnitPrice(Ljava/lang/Double;)V

    .line 237
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->maxUnitPriceAlias:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setMaxUnitPriceAlias(Ljava/lang/String;)V

    .line 238
    iget-wide v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->minUnitPrice:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setMinUnitPrice(Ljava/lang/Double;)V

    .line 239
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->minUnitPriceAlias:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setMinUnitPriceAlias(Ljava/lang/String;)V

    .line 240
    iget v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->quantity:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setQuantity(Ljava/lang/Integer;)V

    .line 241
    iget-boolean v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->expired:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setExpired(Ljava/lang/Boolean;)V

    .line 242
    iget-object v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;->codesFromAlias:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setCodesFromAlias(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 246
    .end local v2    # "action":Lcom/mcdonalds/sdk/modules/models/OfferAction;
    .end local v8    # "ecpProductSet":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;
    .end local v21    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .end local v27    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    :cond_f
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setProductSets(Ljava/util/List;)V

    .line 248
    .end local v10    # "i":I
    .end local v23    # "offerProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    .end local v29    # "size":I
    :cond_10
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->restaurants:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setRestaurants(Ljava/util/List;)V

    .line 251
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;>;"
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    if-eqz v31, :cond_14

    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, "andConditions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;>;"
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->orConditions:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    .line 255
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->orConditions:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWOrCondition;

    .line 256
    .local v5, "c":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWOrCondition;
    if-eqz v5, :cond_11

    .line 257
    iget-object v3, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWOrCondition;->andConditions:Ljava/util/List;

    .line 263
    .end local v5    # "c":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWOrCondition;
    :cond_11
    :goto_a
    if-eqz v3, :cond_14

    .line 264
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_12
    :goto_b
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_14

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;

    .line 265
    .local v5, "c":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;
    if-eqz v5, :cond_12

    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;->dayOfWeekConditions:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;->hourOfDayConditions:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 266
    new-instance v30, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;

    invoke-direct/range {v30 .. v30}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;-><init>()V

    .line 267
    .local v30, "toAdd":Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;
    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;->dayOfWeekConditions:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v34, 0x0

    .line 268
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 267
    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/utils/DateUtils;->dayFromStringToInt(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->setDayOfWeek(I)V

    .line 269
    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;->hourOfDayConditions:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v34, 0x0

    .line 270
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;->from:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v34, 0xb

    .line 269
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/utils/DateUtils;->getTimeField(Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->setHourOfDayFrom(I)V

    .line 271
    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;->hourOfDayConditions:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v34, 0x0

    .line 272
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;->from:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v34, 0xc

    .line 271
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/utils/DateUtils;->getTimeField(Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->setMinuteFrom(I)V

    .line 273
    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;->hourOfDayConditions:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v34, 0x0

    .line 274
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;->to:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v34, 0xb

    .line 273
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/utils/DateUtils;->getTimeField(Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->setHourOfDayTo(I)V

    .line 275
    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;->hourOfDayConditions:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v34, 0x0

    .line 276
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;->to:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v34, 0xc

    .line 275
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/utils/DateUtils;->getTimeField(Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->setMinuteTo(I)V

    .line 278
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 259
    .end local v5    # "c":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;
    .end local v30    # "toAdd":Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;
    :cond_13
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->andConditions:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_11

    .line 260
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->andConditions:Ljava/util/List;

    goto/16 :goto_a

    .line 283
    .end local v3    # "andConditions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;>;"
    :cond_14
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setAndConditions(Ljava/util/List;)V

    .line 286
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v28, "saleConds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;>;"
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    if-eqz v31, :cond_15

    .line 288
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->saleAmountConditions:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_15

    .line 289
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;->saleAmountConditions:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_c
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_15

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;

    .line 292
    .local v5, "c":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;->toSaleAmountCondition()Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;

    move-result-object v33

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 296
    .end local v5    # "c":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;
    :cond_15
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->setSaleAmountCondition(Ljava/util/List;)V

    .line 298
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 142
    .end local v6    # "discountTypeIndex":I
    .end local v7    # "ecpOffer":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;
    .end local v11    # "imageBaseName":Ljava/lang/String;
    .end local v13    # "isDeliveryOffer":Z
    .end local v14    # "isNoPod":Z
    .end local v15    # "isPickUpOffer":Z
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;>;"
    .end local v18    # "nameComponents":[Ljava/lang/String;
    .end local v19    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v20    # "offerName":Ljava/lang/String;
    .end local v24    # "offerSubtitle":Ljava/lang/String;
    .end local v28    # "saleConds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;>;"
    :catch_1
    move-exception v31

    goto/16 :goto_0
.end method


# virtual methods
.method public archiveOffer(Ljava/lang/Integer;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "offerId"    # Ljava/lang/Integer;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 448
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#archiveOffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWArchiveOfferRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWArchiveOfferRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWArchiveOfferRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$8;

    invoke-direct {v3, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$8;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 461
    return-object v0
.end method

.method public getAdvertisablePromotionEntities(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 340
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getAdvertisablePromotions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "token":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreAdvertisableRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreAdvertisableRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreAdvertisableRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;

    invoke-direct {v3, p0, p3, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;I)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 357
    return-object v1
.end method

.method public getAdvertisablePromotions(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getAdvertisablePromotions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "token":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreAdvertisableRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreAdvertisableRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreAdvertisableRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$3;

    invoke-direct {v3, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$3;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 321
    return-object v1
.end method

.method public getCustomerIdentificationCode(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 416
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "selectToRedeem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetIdentificationCodeRequest;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 419
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getBaseConnector()Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    move-result-object v2

    .line 420
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetIdentificationCodeRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetIdentificationCodeRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$7;

    invoke-direct {v3, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$7;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 443
    return-object v0
.end method

.method public getCustomerOffers(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "latitude"    # Ljava/lang/Double;
    .param p3, "longitude"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 106
    .local p4, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    new-instance v6, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getCustomerOffers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 108
    .local v6, "token":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerOffersRequest;

    .line 109
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerOffersRequest;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/lang/String;)V

    .line 111
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerOffersRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$2;

    invoke-direct {v2, p0, p5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 130
    return-object v6
.end method

.method public getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 68
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getOfferCategories"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "token":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetOfferCategoriesRequest;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getBaseConnector()Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    move-result-object v2

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetOfferCategoriesRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;)V

    .line 72
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetOfferCategoriesRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$1;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 101
    return-object v1
.end method

.method public selectOffersForPurchase(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "offerId"    # Ljava/lang/Integer;
    .param p3, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 376
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "selectOffersForPurchase"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSelectForNextPurchaseRequest;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getBaseConnector()Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    move-result-object v2

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSelectForNextPurchaseRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 378
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSelectForNextPurchaseRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$5;

    invoke-direct {v3, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$5;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 384
    const/4 v2, 0x0

    return-object v2
.end method

.method public selectToRedeem(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p3, "storeId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 389
    .local p2, "offerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSelectToRedeemRequest;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getBaseConnector()Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    move-result-object v1

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSelectToRedeemRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    .line 391
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSelectToRedeemRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$6;

    invoke-direct {v2, p0, p4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$6;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 411
    const/4 v1, 0x0

    return-object v1
.end method

.method public setOfferExpiration(Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "offerId"    # Ljava/lang/Integer;
    .param p2, "expStartDate"    # Ljava/util/Date;
    .param p3, "expEndDate"    # Ljava/util/Date;
    .param p4, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 483
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOfferExpirationRequest;

    .line 484
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOfferExpirationRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;)V

    .line 485
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWOfferExpirationRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->mConnectorShared:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$9;

    invoke-direct {v2, p0, p4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$9;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 491
    const/4 v1, 0x0

    return-object v1
.end method

.method public subscribe(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public unarchiveOffer(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "offerId"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 466
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 476
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method
