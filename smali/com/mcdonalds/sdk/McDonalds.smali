.class public Lcom/mcdonalds/sdk/McDonalds;
.super Ljava/lang/Object;
.source "McDonalds.java"


# static fields
.field private static mServiceConnection:Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

.field static sContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static clean(Landroid/content/Context;Landroid/content/Intent;Lcom/mcdonalds/sdk/connectors/ConnectorManager;Lcom/mcdonalds/sdk/modules/ModuleManager;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reloadIntent"    # Landroid/content/Intent;
    .param p2, "connectorManager"    # Lcom/mcdonalds/sdk/connectors/ConnectorManager;
    .param p3, "moduleManager"    # Lcom/mcdonalds/sdk/modules/ModuleManager;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 127
    const-string v6, "mcd.db"

    invoke-virtual {p0, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 134
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->getInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/network/RequestManager;->clearRequestQueue()V

    .line 137
    const-string v6, "customer"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 139
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "prefSavedLogin":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLoginPass()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "prefSavedLoginPass":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v3

    .line 142
    .local v3, "prefSavedSocialID":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getTutorialLastShownVersionName()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "tutorialLastShownVersion":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    .line 144
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0, v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 145
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->clearCurrentStore()V

    .line 148
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->removeSyncAccount()V

    .line 151
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/network/SessionManager;->clearToken()V

    .line 154
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->clearConnectors()V

    .line 155
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->clearModules()V

    .line 158
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->clearCache()V

    .line 159
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->clear()V

    .line 160
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->clearMarketCache(Landroid/content/Context;)V

    .line 161
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->clearStoreCache(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 165
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedSocialNetworkId(I)V

    .line 168
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setTutorialLastShownVersionName(Ljava/lang/String;)V

    .line 171
    invoke-static {p0, v9}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->setFirstCatalogLoad(Landroid/content/Context;Z)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    const v6, 0x10008000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/mcdonalds/sdk/McDonalds;->sContext:Landroid/content/Context;

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "McDonalds SDK is not initialized. Please call McDonalds.initialize(Context context) to initialize this SDK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getService()Lcom/mcdonalds/sdk/services/RonaldServiceConnection;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/mcdonalds/sdk/McDonalds;->mServiceConnection:Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p0, v0, v0}, Lcom/mcdonalds/sdk/McDonalds;->initialize(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static initialize(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "reloadIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "configJson"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/McDonalds;->sContext:Landroid/content/Context;

    .line 74
    if-eqz p2, :cond_0

    .line 76
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->loadConfigurationWithJsonString(Ljava/lang/String;)V

    .line 78
    :cond_0
    if-eqz p1, :cond_1

    .line 79
    invoke-static {p1}, Lcom/mcdonalds/sdk/McDonalds;->initializeService(Landroid/content/Intent;)V

    .line 81
    :cond_1
    return-void
.end method

.method public static initializeService(Landroid/content/Intent;)V
    .locals 4
    .param p0, "reloadIntent"    # Landroid/content/Intent;

    .prologue
    .line 102
    sget-object v1, Lcom/mcdonalds/sdk/McDonalds;->mServiceConnection:Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

    if-nez v1, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mcdonalds/sdk/services/RonaldService;->getServiceConnection(Landroid/content/Context;Landroid/content/Intent;)Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

    move-result-object v1

    sput-object v1, Lcom/mcdonalds/sdk/McDonalds;->mServiceConnection:Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

    .line 105
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/McDonalds;->mServiceConnection:Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 107
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/mcdonalds/sdk/McDonalds;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
