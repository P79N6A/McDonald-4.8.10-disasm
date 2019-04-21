.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;
.super Ljava/lang/Object;
.source "MWConnectorShared.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;
    }
.end annotation


# instance fields
.field private mAppParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseConnector:Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

.field private mCatalogManager:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

.field private storeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mBaseConnector:Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;)V
    .locals 1
    .param p1, "connector"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mBaseConnector:Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mBaseConnector:Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mCatalogManager:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .line 47
    return-void
.end method

.method public static getFullImagePath(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;)Ljava/lang/String;
    .locals 7
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "imageSize"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    .prologue
    const/4 v6, 0x0

    .line 50
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 51
    .local v2, "extensionIndex":I
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "base":Ljava/lang/String;
    sget-object v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->LARGE:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    if-ne p1, v4, :cond_0

    const-string v3, "_270"

    .line 53
    .local v3, "size":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "extension":Ljava/lang/String;
    const-string v4, "%s%s%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 52
    .end local v1    # "extension":Ljava/lang/String;
    .end local v3    # "size":Ljava/lang/String;
    :cond_0
    const-string v3, "_180"

    goto :goto_0
.end method

.method private toAppParameters()V
    .locals 6

    .prologue
    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "appParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 192
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;

    .line 193
    .local v2, "mwAppParameter":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;
    iget-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;->value:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    .end local v2    # "mwAppParameter":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;
    .end local v3    # "size":I
    :cond_0
    invoke-static {v0}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->setAppParameters(Ljava/util/Map;)V

    .line 198
    return-void
.end method


# virtual methods
.method public cacheStores(Ljava/util/List;)V
    .locals 4
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
    .line 173
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 175
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getStoreCache()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 178
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    return-void
.end method

.method public getAppParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;

    .line 69
    .local v0, "appParam":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;->value:Ljava/lang/String;

    .line 75
    .end local v0    # "appParam":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    return-object v0
.end method

.method public getBaseConnector()Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mBaseConnector:Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    return-object v0
.end method

.method public getCatalogManager()Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mCatalogManager:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mBaseConnector:Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mBaseConnector:Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public getStoreCache()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->storeCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->storeCache:Landroid/util/SparseArray;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->storeCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method public retrieveAppParameters(Ljava/lang/String;)V
    .locals 3
    .param p1, "guestToken"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetAppParametersRequest;

    invoke-direct {v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetAppParametersRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$3;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 170
    return-void
.end method

.method public setAppParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "appParams":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWAppParameter;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mAppParams:Ljava/util/List;

    .line 81
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->toAppParameters()V

    .line 82
    return-void
.end method

.method public setBaseConnector(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;)V
    .locals 0
    .param p1, "baseConnector"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->mBaseConnector:Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    .line 95
    return-void
.end method

.method public signIn(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->signIn(Lcom/mcdonalds/sdk/AsyncListener;Z)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public signIn(Lcom/mcdonalds/sdk/AsyncListener;Z)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p2, "useDCS"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;",
            ">;Z)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "signIn"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    if-nez p2, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;-><init>()V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 158
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSApplicationSecurityRequest;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSApplicationSecurityRequest;-><init>()V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method
