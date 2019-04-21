.class public Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "CustomerModule.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.mcdonalds.gma.hongkong.account"

.field private static final ASYNC_TOKEN_PREFIX:Ljava/lang/String;

.field public static final AUTHORITY:Ljava/lang/String; = "com.mcdonalds.gma.hongkong.provider"

.field private static final CACHE_EXP_INTERVAL:J = 0x15180L

.field public static final CACHE_KEY_CURRENT_PROFILE:Ljava/lang/String; = "CACHE_KEY_CURRENT_PROFILE"

.field public static final CACHE_KEY_CURRENT_STORE:Ljava/lang/String; = "CACHE_KEY_CURRENT_STORE"

.field private static final CLEAR_BASKET_ON_LOGOUT_KEY:Ljava/lang/String; = "interface.ordering.clearBasketOnLogout"

.field private static final CUSTOMER_CONNECTOR:Ljava/lang/String; = "modules.customer.connector"

.field private static final CUSTOMER_TYPE:Ljava/lang/reflect/Type;

.field private static final DISABLE_STORE_PREF_KEY:Ljava/lang/String; = "modules.storeLocator.disablePreferenceNotificationOnCurrentStoreUpdate"

.field public static final DUMMY_ACCOUNT_NAME:Ljava/lang/String; = "Synchronization"

.field private static final IGNORE_MAX_PAYMENT_CARDS:Ljava/lang/String; = "modules.customer.ignoreMaxPaymentCardsFromBackend"

.field private static final MAX_PAYMENT_CARDS_KEY:Ljava/lang/String; = "modules.customer.maxPaymentCards"

.field public static final MCD_LOGIN_STATE_CHANGED:Ljava/lang/String; = "MCD_LOGIN_STATE_CHANGED"

.field public static final MCD_SOCIAL_LOGIN_TOKEN_CHANGED:Ljava/lang/String; = "MCD_SOCIAL_LOGIN_TOKEN_CHANGED"

.field private static final MESSAGE_ID_PREFIX:Ljava/lang/String; = "h"

.field public static final NAME:Ljava/lang/String; = "customer"

.field public static final PREFERENCE_LOGGED_USERS:Ljava/lang/String; = "logged_users"

.field private static final STORE_TYPE:Ljava/lang/reflect/Type;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private final mConnectorImpl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private final mFavoriteStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggedIn:Z

.field private mNearByStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private final mRecentOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$1;-><init>()V

    .line 76
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->STORE_TYPE:Ljava/lang/reflect/Type;

    .line 77
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$2;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$2;-><init>()V

    .line 78
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->CUSTOMER_TYPE:Ljava/lang/reflect/Type;

    .line 80
    const-class v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mFavoriteStores:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mRecentOrders:Ljava/util/List;

    .line 121
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.customer.connector"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mTokenMap:Ljava/util/Map;

    .line 123
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mContext:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mAccountManager:Landroid/accounts/AccountManager;

    .line 125
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSyncAccount()Landroid/accounts/Account;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCurrentStoreInCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncToken;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->removeTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    return-void
.end method

.method static synthetic access$402(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mLoggedIn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logNotificationTracked(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCurrentProfileInCache()V

    return-void
.end method

.method static synthetic access$800(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mFavoriteStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mRecentOrders:Ljava/util/List;

    return-object v0
.end method

.method private addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 1
    .param p1, "moduleToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p2, "connectorToken"    # Lcom/mcdonalds/sdk/AsyncToken;

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    return-void
.end method

.method private logNotificationTracked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "deliveryId"    # Ljava/lang/String;
    .param p3, "tagId"    # I

    .prologue
    .line 814
    const-string v1, "Notification Tracking sent.\n Message ID: %s,\n Delivery ID: %s,\n Tag ID: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 816
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 815
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->info(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method private removeTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 2
    .param p1, "moduleToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p2, "connectorToken"    # Lcom/mcdonalds/sdk/AsyncToken;

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/AsyncToken;

    .line 1642
    .local v0, "foundToken":Lcom/mcdonalds/sdk/AsyncToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1643
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    :cond_0
    return-void
.end method

.method private setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Z)V
    .locals 2
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "loggedIn"    # Z

    .prologue
    .line 240
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 242
    iput-boolean p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mLoggedIn:Z

    .line 243
    return-void
.end method

.method private updateCurrentProfileInCache()V
    .locals 6

    .prologue
    .line 184
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "CACHE_KEY_CURRENT_PROFILE"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const-wide/16 v4, -0x1

    .line 185
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 186
    return-void
.end method

.method private updateCurrentStoreInCache()V
    .locals 6

    .prologue
    .line 379
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "CACHE_KEY_CURRENT_STORE"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 381
    return-void
.end method


# virtual methods
.method public addAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 1579
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1580
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1600
    :goto_0
    return-object v2

    .line 1583
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "addAddress"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1586
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$39;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$39;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->addAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1599
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public addFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3, "favoriteName"    # Ljava/lang/String;
    .param p4, "isProduct"    # Z
    .param p5    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 981
    .local p2, "favoriteProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$22;

    invoke-direct {v5, p0, p5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$22;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addFavoriteProductsReturningItems(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public addFavoriteProductsReturningItems(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3, "favoriteName"    # Ljava/lang/String;
    .param p4, "isProduct"    # Z
    .param p5    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1001
    .local p2, "favoriteProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    new-instance v6, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#addFavoriteProducts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v6, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1004
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$23;

    invoke-direct {v5, p0, p5, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$23;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    move-object v2, p3

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->addFavoriteProducts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1018
    return-object v6
.end method

.method public addFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
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
    .local p1, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v2, 0x0

    .line 1061
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1062
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1105
    :goto_0
    return-object v2

    .line 1066
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "addFavoriteStores"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1069
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;

    invoke-direct {v4, p0, p1, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, v3, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->addFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1104
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public addLoginMethod(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "addLoginMethod"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 665
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 666
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$13;

    invoke-direct {v3, p0, p2, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$13;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->addLoginMethod(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 674
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 676
    return-object v2
.end method

.method public addSyncListener(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "listener"    # Landroid/database/ContentObserver;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    return-void
.end method

.method public associateDevice(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "deviceToken"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 1723
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#associateDevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1724
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1726
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$42;

    invoke-direct {v3, p0, p2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$42;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->associateDevice(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1745
    return-object v0
.end method

.method public authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "authenticateWithParameters"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 527
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 528
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;

    invoke-direct {v3, p0, v2, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 552
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 553
    return-object v2
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v7, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-nez v1, :cond_0

    .line 596
    invoke-interface {p3, v7, v7, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 615
    :goto_0
    return-object v7

    .line 600
    :cond_0
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "changePassword"

    invoke-direct {v7, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 601
    .local v7, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 603
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$10;

    invoke-direct {v5, p0, v7, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$10;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v6

    .line 614
    .local v6, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v7, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public clearCurrentStore()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 335
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "CACHE_KEY_CURRENT_STORE"

    .line 336
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 337
    return-void
.end method

.method public createSyncAccount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1699
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "Synchronization"

    const-string v2, "com.mcdonalds.gma.hongkong.account"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, v3, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1701
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->requestSync()V

    .line 1702
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->requestSocialNetworkSync()V

    .line 1703
    return-void
.end method

.method public deleteFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1031
    .local p2, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#deleteFavoriteProducts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v2, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1034
    .local v6, "connector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    invoke-interface {v6, v7, p2, v0}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->deleteFavoriteProducts(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1049
    return-object v2
.end method

.method public deleteFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
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
    .local p1, "favoriteStoresIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v2, 0x0

    .line 1215
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1216
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1263
    :goto_0
    return-object v2

    .line 1220
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "addFavoriteStores"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1223
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$28;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$28;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, v3, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->deleteFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1262
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public deregister(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 566
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "deregister"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 567
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 570
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$9;

    invoke-direct {v4, p0, v2, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$9;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->deregister(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 581
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 582
    return-object v2
.end method

.method public getAddressBook(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;>;"
    const/4 v2, 0x0

    .line 1474
    if-nez p1, :cond_0

    .line 1475
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1494
    :goto_0
    return-object v2

    .line 1478
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "getAddressBook"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1479
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1481
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$36;

    invoke-direct {v4, p0, p2, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$36;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getAddressBook(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1493
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public getAddressElements(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;>;"
    const/4 v2, 0x0

    .line 1442
    if-nez p1, :cond_0

    .line 1443
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1463
    :goto_0
    return-object v2

    .line 1447
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "getAddressElements"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1450
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$35;

    invoke-direct {v4, p0, p2, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$35;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getAddressElements(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1462
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public getCatalogUpdated(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<*>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<*>;"
    const/4 v2, 0x0

    .line 847
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isSyncActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->requestSync()V

    .line 851
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$19;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$19;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Landroid/os/Handler;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 866
    .local v0, "observer":Landroid/database/ContentObserver;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isSyncActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addSyncListener(Landroid/database/ContentObserver;)V

    .line 873
    :goto_0
    return-object v2

    .line 869
    :cond_1
    invoke-interface {p2, v2, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "CACHE_KEY_CURRENT_PROFILE"

    sget-object v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->CUSTOMER_TYPE:Ljava/lang/reflect/Type;

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method public getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "CACHE_KEY_CURRENT_STORE"

    sget-object v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->STORE_TYPE:Ljava/lang/reflect/Type;

    .line 300
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method public getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 883
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v3, "updateCustomerProfile"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 884
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 885
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$20;

    invoke-direct {v3, p0, v2, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$20;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 899
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 900
    return-object v2
.end method

.method public getDefaultAddress(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    const/4 v2, 0x0

    .line 1514
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    .line 1515
    .local v3, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-nez v3, :cond_0

    .line 1516
    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    const-string v5, "Illegal Arguments"

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2, v2, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1535
    :goto_0
    return-object v2

    .line 1519
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "getDefaultAddress"

    invoke-direct {v2, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1520
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1522
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;

    invoke-direct {v5, p0, p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$37;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v4, v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1534
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public getDefaultAddress(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1505
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v1, 0x0

    .line 956
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteProducts()Ljava/util/List;

    move-result-object v0

    .line 957
    .local v0, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    invoke-interface {p2, v0, v1, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 958
    return-object v1
.end method

.method public getFavoriteProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavoriteStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mFavoriteStores:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mFavoriteStores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFeedBackTypeForRating()Lcom/mcdonalds/sdk/modules/models/FeedBackType;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/repository/FeedBackTypeRepository;->getForSendRating(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/FeedBackType;

    move-result-object v0

    return-object v0
.end method

.method public getGcmSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAllowedCards()I
    .locals 4

    .prologue
    .line 1950
    const/16 v1, 0xa

    .line 1951
    .local v1, "retValue":I
    const-string v2, "maxPaymentCards"

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, "appParameterMaxAllowedCard":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1953
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1957
    :cond_0
    :goto_0
    return v1

    .line 1954
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.customer.maxPaymentCards"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.customer.maxPaymentCards"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getMaxItemQuantity()I
    .locals 2

    .prologue
    .line 1711
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1712
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getMaxItemQuantity()I

    move-result v1

    return v1
.end method

.method public getNearByStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mNearByStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method public getPaymentData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 2
    .param p1, "paymentData"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1363
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1364
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getPaymentData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v1

    return-object v1
.end method

.method public getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "paymentID"    # I
    .param p2, "oneTimePayment"    # Ljava/lang/Boolean;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1272
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "getPaymentTypeRegistrationURL"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1275
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$29;

    invoke-direct {v4, p0, v2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$29;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, p1, p2, v3, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1282
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1283
    return-object v2
.end method

.method public getRecentOrders(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "numRecents"    # Ljava/lang/Integer;
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
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;>;"
    const/4 v2, 0x0

    .line 1376
    if-eqz p1, :cond_0

    const-string v3, "ordering"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1377
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1398
    :goto_0
    return-object v2

    .line 1380
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "recentOrders"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1383
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$33;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$33;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, p2, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getRecentOrders(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1397
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public getRecentOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mRecentOrders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mRecentOrders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSocialLoginCatalog(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "getSocialLoginCatalog"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 830
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 831
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$18;

    invoke-direct {v3, p0, v2, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$18;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 832
    invoke-interface {v1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getSocialLoginCatalogUpdate(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 840
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 842
    return-object v2
.end method

.method public getSocialNetworkAccessToken(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "socialId"    # I
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 680
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "addLoginMethod"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 681
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 682
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;

    invoke-direct {v3, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$14;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, p2, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getSocialNetworkAccessToken(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 694
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 695
    return-object v2
.end method

.method public getSocialNetworkById(I)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/services/data/repository/SocialNetworkRepository;->getById(Landroid/content/Context;I)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 1682
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.mcdonalds.gma.hongkong.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1683
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1684
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 1687
    :goto_0
    return-object v1

    .line 1686
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->createSyncAccount()V

    .line 1687
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSyncAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0
.end method

.method public hasRecentOrders()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mRecentOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstTimeLoginOnDevice(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Z
    .locals 10
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 209
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    .line 210
    .local v1, "manager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "current":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getFirstLogin()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "usersString":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 216
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setFirstLogin(Ljava/lang/String;)V

    .line 230
    :goto_0
    return v5

    .line 220
    :cond_0
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "users":[Ljava/lang/String;
    array-length v8, v3

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v2, v3, v7

    .line 222
    .local v2, "user":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v5, v6

    .line 223
    goto :goto_0

    .line 221
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 227
    .end local v2    # "user":Ljava/lang/String;
    :cond_2
    const-string v7, "%s,%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    aput-object v0, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setFirstLogin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mLoggedIn:Z

    return v0
.end method

.method public isSyncActive()Z
    .locals 1

    .prologue
    .line 384
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getSyncStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1653
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1654
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.ordering.clearBasketOnLogout"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 1655
    .local v1, "shouldClearBasketOnLogout":Z
    new-instance v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;

    invoke-direct {v2, p0, v1, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;ZLcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v0, v2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->signOut(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1679
    return-void
.end method

.method public needsFavoriteProductsRefresh()Z
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->needsFavoriteItemsRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public paymentTypePostRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
    .param p1, "paymentID"    # I
    .param p2, "oneTimePayment"    # Ljava/lang/Boolean;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentURLPostInfo;>;"
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "PaymentTypePostRegistrationURL"

    invoke-direct {v7, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1296
    .local v7, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1297
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    .line 1299
    .local v3, "storeId":I
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$30;

    invoke-direct {v5, p0, v7, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$30;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    move v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->paymentTypePostRegistrationURL(ILjava/lang/Boolean;ILcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v6

    .line 1306
    .local v6, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v7, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1307
    return-object v7

    .line 1297
    .end local v3    # "storeId":I
    .end local v6    # "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    goto :goto_0
.end method

.method public refreshCustomerData(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "refreshCustomerData"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 627
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 629
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$11;

    invoke-direct {v4, p0, p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$11;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 641
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 643
    return-object v2
.end method

.method public register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 495
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v3

    if-nez v3, :cond_0

    .line 496
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->fromConfig()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)V

    .line 501
    :goto_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "register"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 503
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$7;

    invoke-direct {v3, p0, v2, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$7;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 514
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 515
    return-object v2

    .line 498
    .end local v0    # "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    .end local v1    # "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    .end local v2    # "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->updateWithConfig()V

    goto :goto_0
.end method

.method public registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "customerId"    # Ljava/lang/String;
    .param p4, "isOneTimePayment"    # Z
    .param p5    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1902
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "registerCard"

    invoke-direct {v7, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1903
    .local v7, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1904
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$48;

    invoke-direct {v5, p0, p5, v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$48;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v6

    .line 1923
    .local v6, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v7, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1924
    return-object v7
.end method

.method public registerExtSocialNetworkForced(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 648
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "registerExtSocialNetworkForced"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 649
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 650
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$12;

    invoke-direct {v3, p0, p2, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$12;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->registerExtSocialNetworkForced(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 658
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 660
    return-object v2
.end method

.method public removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 1612
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1613
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1633
    :goto_0
    return-object v2

    .line 1616
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "removeAddress"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1619
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$40;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$40;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->removeAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1632
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public removeSyncAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1691
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.mcdonalds.gma.hongkong.account"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1692
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1693
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1694
    .local v0, "account":Landroid/accounts/Account;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2, v0, v4, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1696
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method public removeSyncListener(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "listener"    # Landroid/database/ContentObserver;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 393
    return-void
.end method

.method public renameFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
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
    .local p1, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v2, 0x0

    .line 1163
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1164
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1203
    :goto_0
    return-object v2

    .line 1168
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "addFavoriteStores"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1171
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, v3, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->renameFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1202
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public requestSocialNetworkSync()V
    .locals 0

    .prologue
    .line 400
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->requestSocialNetworkSync()V

    .line 401
    return-void
.end method

.method public requestSync()V
    .locals 0

    .prologue
    .line 396
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->requestSync()V

    .line 397
    return-void
.end method

.method public resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#resendActivation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 468
    .local v1, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 469
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 471
    return-object v1
.end method

.method public resendActivationCode(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 476
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#resendActivationCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 479
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->resendActivationCode(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 481
    return-object v1
.end method

.method public resetPassword(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 411
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "resetPassword"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 413
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$5;

    invoke-direct {v3, p0, p2, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$5;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->resetPassword(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 425
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 426
    return-object v2
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "mobilePhone"    # Ljava/lang/String;
    .param p4    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 439
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "resetPassword"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 440
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 441
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$6;

    invoke-direct {v3, p0, p4, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$6;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p1, p2, p3, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 453
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 454
    return-object v2
.end method

.method public retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;>;"
    const/4 v2, 0x0

    .line 1116
    if-nez p1, :cond_0

    .line 1117
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1151
    :goto_0
    return-object v2

    .line 1121
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "retrieveFavoriteStores"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1124
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;

    invoke-direct {v4, p0, p2, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->retrieveFavoriteStores(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1150
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public sendRating(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "rating"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1757
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#rating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1758
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1760
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$43;

    invoke-direct {v3, p0, p3, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$43;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, p2, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1767
    return-object v0
.end method

.method public sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1786
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "sendSMSCode"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1787
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1788
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$44;

    invoke-direct {v3, p0, v2, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$44;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, p1, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1796
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1797
    return-object v2
.end method

.method public setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 6
    .param p1, "currentProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v2, :cond_6

    const/4 v1, 0x0

    .line 152
    .local v1, "previousPassword":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v2, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    :goto_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 155
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 157
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 163
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFavoriteItems(Ljava/util/List;)V

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v2, :cond_3

    .line 173
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    const-string v3, "CACHE_KEY_CURRENT_PROFILE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;Z)V

    .line 176
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCurrentProfileInCache()V

    .line 178
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 179
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 181
    :cond_5
    return-void

    .line 151
    .end local v0    # "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .end local v1    # "previousPassword":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 152
    .restart local v1    # "previousPassword":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteItems()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "currentStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 313
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 316
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCurrentStoreInCache()V

    .line 317
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->requestSync()V

    .line 320
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.storeLocator.disablePreferenceNotificationOnCurrentStoreUpdate"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 322
    .local v0, "shouldUpdateCustomerNotificationPreferenceOnStoreChange":Z
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$3;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 331
    .end local v0    # "shouldUpdateCustomerNotificationPreferenceOnStoreChange":Z
    :cond_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 1853
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1854
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1873
    :goto_0
    return-object v2

    .line 1857
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "setDefaultAddress"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1858
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1860
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$47;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$47;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->setDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1872
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public setFavoriteStores(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    return-void
.end method

.method public setLoggedInState(Z)V
    .locals 0
    .param p1, "isLoggedIn"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mLoggedIn:Z

    .line 199
    return-void
.end method

.method public setNearByStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 0
    .param p1, "mNearByStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mNearByStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 117
    return-void
.end method

.method public setNotificationPreferences(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "notifications"    # Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;>;"
    invoke-virtual {p0, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
    .param p1, "notifications"    # Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 764
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v5, "setPreferencesMap"

    invoke-direct {v2, v5}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 765
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 767
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    const-string v5, "notification"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;

    .line 768
    .local v3, "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    if-eqz v3, :cond_0

    .line 769
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->getRegistrationId()Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, "registrationId":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 772
    const/4 v5, 0x0

    new-instance v6, Lcom/mcdonalds/sdk/AsyncException;

    const-string v7, "No registration id"

    invoke-direct {v6, v7}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5, v2, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 776
    .end local v4    # "registrationId":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v6, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$16;

    invoke-direct {v6, p0, v2, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$16;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 777
    invoke-interface {v1, v5, p1, v6}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 789
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 790
    return-object v2
.end method

.method public shouldSaveCard()Z
    .locals 7

    .prologue
    .line 1928
    const/4 v3, 0x0

    .line 1931
    .local v3, "retValue":Z
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1932
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    .line 1933
    .local v2, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "modules.customer.ignoreMaxPaymentCardsFromBackend"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1934
    if-eqz v2, :cond_0

    .line 1935
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1936
    .local v4, "savedCards":I
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getMaxAllowedCards()I

    move-result v1

    .line 1938
    .local v1, "maxAllowedCard":I
    if-ge v4, v1, :cond_0

    .line 1939
    const/4 v3, 0x1

    .line 1945
    .end local v1    # "maxAllowedCard":I
    .end local v4    # "savedCards":I
    :cond_0
    :goto_0
    return v3

    .line 1943
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public trackNotification(ILjava/lang/String;I)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
    .param p1, "messageId"    # I
    .param p2, "deliveryId"    # Ljava/lang/String;
    .param p3, "tagId"    # I

    .prologue
    .line 795
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v1, "trackNotification"

    invoke-direct {v7, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 796
    .local v7, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 798
    .local v0, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "hexMessageId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;

    invoke-direct {v5, p0, v2, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->trackNotification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v6

    .line 808
    .local v6, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v7, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 810
    return-object v7
.end method

.method public updateAddressBook(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 1547
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1548
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1567
    :goto_0
    return-object v2

    .line 1551
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v3, "updateAddressBook"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1554
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$38;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$38;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updateAddressBook(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1566
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public updateCurrentStoreInfo()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCurrentStoreInfo(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 344
    return-void
.end method

.method public updateCurrentStoreInfo(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 354
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    .line 356
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 357
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    if-eqz v0, :cond_0

    .line 358
    new-instance v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$4;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getStoreInformation(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 376
    .end local v0    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    :cond_0
    return-void
.end method

.method public updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 706
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v0, "updateCustomerProfile"

    invoke-direct {v2, v0}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 707
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 708
    .local v4, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/connectors/CustomerConnector;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 709
    invoke-interface {v4, p1, v0}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updateProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v6

    .line 736
    .local v6, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 738
    return-object v2
.end method

.method public updateFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v0, 0x0

    .line 914
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-eqz v2, :cond_0

    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 915
    :cond_0
    const-string v2, "Illegal Arguments"

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    .line 916
    if-eqz p1, :cond_1

    .line 917
    invoke-interface {p1, v0, v0, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 944
    :cond_1
    :goto_0
    return-object v0

    .line 922
    :cond_2
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->ASYNC_TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#getFavoriteProducts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 923
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 924
    .local v1, "connector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;

    invoke-direct {v3, p0, p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getFavoriteProducts(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public updatePayment(Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "paymentProviderData"    # Ljava/lang/String;
    .param p2, "isPreferred"    # Z
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1317
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v3, "updatePayment"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1318
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1320
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$31;

    invoke-direct {v4, p0, v2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$31;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, v3, p1, p2, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updatePayment(Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1330
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1331
    return-object v2
.end method

.method public updatePayments(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p1, "paymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v2, 0x0

    .line 1342
    if-nez p1, :cond_0

    .line 1343
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1359
    :goto_0
    return-object v2

    .line 1347
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v3, "updatePayment"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1350
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$32;

    invoke-direct {v4, p0, v2, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$32;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v1, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->updatePayments(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1358
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public validateAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;>;"
    const/4 v2, 0x0

    .line 1412
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1413
    :cond_0
    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    const-string v4, "Illegal Arguments"

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1432
    :goto_0
    return-object v2

    .line 1417
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v3, "validateAddress"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1420
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$34;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$34;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->validateAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1431
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    goto :goto_0
.end method

.method public verifyEmail(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "emailVerificationCode"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1830
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v3, "verifyAccount"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1832
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->EMAIL:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$46;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$46;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p2, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->verifyAccount(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1840
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1841
    return-object v2
.end method

.method public verifySMS(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "smsCode"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 1808
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string/jumbo v3, "verifyAccount"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v2, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 1810
    .local v1, "customerConnector":Lcom/mcdonalds/sdk/connectors/CustomerConnector;
    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$45;

    invoke-direct {v4, p0, p3, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$45;-><init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, p2, v3, p1, v4}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->verifyAccount(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 1818
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addTokenMapping(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1819
    return-object v2
.end method
