.class public Lcom/mcdonalds/sdk/modules/offers/OffersModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "OffersModule.java"


# static fields
.field public static final CONNECTOR_KEY:Ljava/lang/String; = "connector"

.field public static final NAME:Ljava/lang/String; = "offers"

.field public static final TOKEN_PREFIX:Ljava/lang/String;


# instance fields
.field private final ADVERTISABLE_PROMOTIONS_ENABLED:Ljava/lang/String;

.field private final mConnectorImpl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->TOKEN_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 38
    const-string v0, "modules.ordering.advertisablePromotionsEnabled"

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->ADVERTISABLE_PROMOTIONS_ENABLED:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.offers.connector"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;-><init>()V

    .line 44
    return-void
.end method

.method private shouldShowOffers()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.supportedModules.offers"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.supportedModules.all"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 52
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public archiveOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#archiveOffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 179
    .local v1, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/offers/OffersModule$8;

    invoke-direct {v4, p0, p3, v0}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$8;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->archiveOffer(Ljava/lang/Integer;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 185
    return-object v0
.end method

.method public getAdvertisablePromotionEntities(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
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
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;>;>;"
    const/4 v5, 0x0

    .line 105
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "getAdvertisablePromotions"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.ordering.advertisablePromotionsEnabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 111
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    new-instance v2, Lcom/mcdonalds/sdk/modules/offers/OffersModule$4;

    invoke-direct {v2, p0, p3}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$4;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v0, p1, p2, v2}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getAdvertisablePromotionEntities(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 121
    .end local v0    # "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    :goto_0
    return-object v1

    .line 118
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "No config param: \"modules.ordering.advertisablePromotionsEnabled\""

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v5, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public getAdvertisablePromotions(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;>;"
    const/4 v5, 0x0

    .line 85
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "getAdvertisablePromotions"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.ordering.advertisablePromotionsEnabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 91
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    new-instance v2, Lcom/mcdonalds/sdk/modules/offers/OffersModule$3;

    invoke-direct {v2, p0, p3}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$3;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v0, p1, p2, v2}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getAdvertisablePromotions(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 101
    .end local v0    # "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    :goto_0
    return-object v1

    .line 98
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "No config param: \"modules.ordering.advertisablePromotionsEnabled\""

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v5, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public getCustomerIdentificationCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "storeId"    # Ljava/lang/Integer;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getCustomerIdentificationCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 165
    .local v1, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/offers/OffersModule$7;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$7;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, p2, v3}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getCustomerIdentificationCode(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 172
    return-object v0
.end method

.method public getCustomerOffers(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "latitude"    # Ljava/lang/Double;
    .param p3, "longitude"    # Ljava/lang/Double;
    .param p5    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 71
    .local p4, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    new-instance v6, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getCustomerOffers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 74
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    new-instance v5, Lcom/mcdonalds/sdk/modules/offers/OffersModule$2;

    invoke-direct {v5, p0, p5, v6}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$2;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getCustomerOffers(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 80
    return-object v6
.end method

.method public getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferCategory;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferCategory;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getOfferCategories"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 60
    .local v1, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    new-instance v2, Lcom/mcdonalds/sdk/modules/offers/OffersModule$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$1;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 67
    return-object v0
.end method

.method public getProductOptions(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "offerProduct"    # Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OfferProduct;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProductOption;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectOffersForPurchase(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "offerId"    # Ljava/lang/Integer;
    .param p3, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "selectOffersForPurchase"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 134
    .local v1, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    new-instance v2, Lcom/mcdonalds/sdk/modules/offers/OffersModule$5;

    invoke-direct {v2, p0, p3}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$5;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->selectOffersForPurchase(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 140
    return-object v0
.end method

.method public selectToRedeem(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3, "storeId"    # Ljava/lang/Integer;
    .param p4    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
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
    .line 144
    .local p2, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "selectToRedeem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 146
    .local v1, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v3, "offerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 148
    .local v2, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v2    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/modules/offers/OffersModule$6;

    invoke-direct {v5, p0, p4, v0}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$6;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v4, v3, p3, v5}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->selectToRedeem(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 158
    return-object v0
.end method

.method public setOfferExpiration(Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "offerId"    # Ljava/lang/Integer;
    .param p2, "expStartDate"    # Ljava/util/Date;
    .param p3, "expEndDate"    # Ljava/util/Date;
    .param p4, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "setOfferExpiration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/OffersConnector;

    .line 206
    .local v1, "connector":Lcom/mcdonalds/sdk/connectors/OffersConnector;
    new-instance v2, Lcom/mcdonalds/sdk/modules/offers/OffersModule$9;

    invoke-direct {v2, p0, p4}, Lcom/mcdonalds/sdk/modules/offers/OffersModule$9;-><init>(Lcom/mcdonalds/sdk/modules/offers/OffersModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/mcdonalds/sdk/connectors/OffersConnector;->setOfferExpiration(Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 212
    return-object v0
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
    .line 193
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
    .line 189
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
    .line 197
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method
