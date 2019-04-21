.class public Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "GoogleConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/NotificationConnector;
.implements Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;


# static fields
.field private static final CONFIG_INFO_MISSING_MSG:Ljava/lang/String; = "Configuration missing data needed for Store Locator"

.field static final GCM_SENDER_ID:Ljava/lang/String; = "connectors.Google.gcmSenderId"

.field static final GOOGLE:Ljava/lang/String; = "connectors.Google.storeLocator"

.field static final GOOGLE_API_KEY:Ljava/lang/String; = "connectors.Google.storeLocator.apiKey"

.field static final GOOGLE_API_METHOD:Ljava/lang/String; = "connectors.Google.storeLocator.apiMethod"

.field static final GOOGLE_BASE_URL:Ljava/lang/String; = "connectors.Google.storeLocator.baseURL"

.field static final GOOGLE_MAPS_ENGINE_ENDPOINT:Ljava/lang/String; = "connectors.Google.storeLocator.endPoint"

.field static final GOOGLE_TABLES_ID:Ljava/lang/String; = "connectors.Google.storeLocator.tables"

.field public static final NAME:Ljava/lang/String; = "google"


# instance fields
.field private mFiltersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->setContext(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mHandler:Landroid/os/Handler;

    .line 62
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->setConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 64
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->refreshFilters()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->refreshFilters()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    return-object v0
.end method

.method public static googleStoreToStore(Lcom/mcdonalds/sdk/connectors/google/GoogleStore;Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 7
    .param p0, "googleStore"    # Lcom/mcdonalds/sdk/connectors/google/GoogleStore;
    .param p1, "resourceContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 247
    new-instance v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;-><init>()V

    .line 249
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->getProperties()Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;

    move-result-object v1

    .line 250
    .local v1, "props":Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getNatlStrNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreId(I)V

    .line 251
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->getGeometry()Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLatitude(D)V

    .line 252
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->getGeometry()Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLongitude(D)V

    .line 253
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getDistance()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setDistance(D)V

    .line 255
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getAddressLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress1(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCity(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getSubdivision()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setState(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPostalCode(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getCountryRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCountry(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getStoreType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreType(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getStoreURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreURL(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPhoneNumber(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "facilityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getWifi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->isTrueValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    sget v3, Lcom/mcdonalds/sdk/R$string;->sl_feature_wifi:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getPlayLand()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->isTrueValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    sget v3, Lcom/mcdonalds/sdk/R$string;->sl_feature_playland:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getDriveThru()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->isTrueValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    sget v3, Lcom/mcdonalds/sdk/R$string;->sl_feature_drivethru:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_2
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getGiftCards()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->isTrueValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 275
    sget v3, Lcom/mcdonalds/sdk/R$string;->sl_feature_giftcards:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_3
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getMobileOffers()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->isTrueValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    sget v3, Lcom/mcdonalds/sdk/R$string;->facility_mobile_offers:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOffers(Ljava/lang/Boolean;)V

    .line 281
    :cond_4
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->getMobileOrdering()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->isTrueValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    sget v3, Lcom/mcdonalds/sdk/R$string;->facility_mobile_ordering:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOrdering(Ljava/lang/Boolean;)V

    .line 286
    :cond_5
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setFacilityNames(Ljava/util/List;)V

    .line 288
    return-object v2
.end method

.method private isInvalidConfig()Z
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 298
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v1, "connectors.Google.storeLocator"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "connectors.Google.storeLocator.baseURL"

    .line 299
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "connectors.Google.storeLocator.endPoint"

    .line 300
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "connectors.Google.storeLocator.tables"

    .line 301
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "connectors.Google.storeLocator.apiMethod"

    .line 302
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "connectors.Google.storeLocator.apiKey"

    .line 303
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 298
    :goto_0
    return v1

    .line 303
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTrueValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "Y"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshFilters()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    .line 69
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mcdonalds/sdk/R$string;->sl_feature_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->WiFi:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mcdonalds/sdk/R$string;->sl_feature_giftcards:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->GiftCards:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mcdonalds/sdk/R$string;->sl_feature_playland:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->PlayLand:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mcdonalds/sdk/R$string;->sl_feature_drivethru:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->DriveThru:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mcdonalds/sdk/R$string;->facility_mobile_offers:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->MobileOffers:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mcdonalds/sdk/R$string;->facility_mobile_ordering:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->MobileOrdering:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "deliveryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 236
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "getDeliveryStore not supported by Google Connector"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "deliveryTime"    # Ljava/util/Date;
    .param p4, "isNormalOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 243
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "getDeliveryStore not supported by Google Connector"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public register()Ljava/lang/String;
    .locals 5

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v2

    .line 309
    .local v2, "instanceID":Lcom/google/android/gms/iid/InstanceID;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "connectors.Google.gcmSenderId"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "gcmSenderId":Ljava/lang/String;
    :try_start_0
    const-string v3, "GCM"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 316
    :goto_0
    return-object v3

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/IOException;
    const-string v3, ""

    goto :goto_0
.end method

.method public requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "GoogleConnector.requestFilters"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "token":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;

    invoke-direct {v0, p0, p1, v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$6;-><init>(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 230
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-object v1
.end method

.method public requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "storeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "requestStores"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->isInvalidConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$4;

    invoke-direct {v3, p0, p2, v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$4;-><init>(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :goto_0
    return-object v1

    .line 170
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;-><init>()V

    .line 171
    .local v0, "parameters":Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setStoreIds(Ljava/util/List;)V

    .line 174
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    invoke-direct {v3, v0, v4}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;-><init>(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Ljava/util/Map;)V

    new-instance v4, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;

    .line 176
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1, p2}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 174
    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "requestStores"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->isInvalidConfig()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$1;

    invoke-direct {v4, p0, p2, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$1;-><init>(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :goto_0
    return-object v2

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getSearchString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mFiltersMap:Ljava/util/Map;

    invoke-direct {v4, p1, v5}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorRequestProvider;-><init>(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Ljava/util/Map;)V

    new-instance v5, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;

    .line 100
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v2, p2}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 98
    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$2;

    invoke-direct {v4, p0, p2, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$2;-><init>(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getMockLocation()Landroid/location/Location;

    move-result-object v1

    .line 120
    .local v1, "mockLocation":Landroid/location/Location;
    if-nez v1, :cond_4

    .line 121
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;-><init>()V

    .line 122
    .local v0, "asyncTask":Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getSearchString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$3;

    invoke-direct {v5, p0, p1, p2, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$3;-><init>(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/os/AsyncTask;

    if-nez v4, :cond_3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "asyncTask":Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;
    invoke-static {v0, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 139
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setSearchString(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLatitude(Ljava/lang/Double;)V

    .line 141
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLongitude(Ljava/lang/Double;)V

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public requestStoresWithIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "storeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "requestListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v4, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".requestStoresWithIds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 192
    .local v4, "token":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5, p2}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 195
    .local v0, "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    .local v3, "storeId":Ljava/lang/String;
    new-instance v5, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$5;

    invoke-direct {v5, p0, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector$5;-><init>(Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;Lcom/mcdonalds/sdk/AsyncCounter;)V

    invoke-virtual {p0, v3, v5}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v3    # "storeId":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public unregister()V
    .locals 5

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v2

    .line 323
    .local v2, "instanceID":Lcom/google/android/gms/iid/InstanceID;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "connectors.Google.gcmSenderId"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "gcmSenderId":Ljava/lang/String;
    :try_start_0
    const-string v3, "GCM"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/iid/InstanceID;->deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
