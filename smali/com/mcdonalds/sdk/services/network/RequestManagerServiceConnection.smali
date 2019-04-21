.class public Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
.super Ljava/lang/Object;
.source "RequestManagerServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;,
        Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;,
        Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;
    }
.end annotation


# static fields
.field private static final CONNECTOR_KEY_MIDDLEWARE:Ljava/lang/String; = "Middleware"

.field private static final ERROR_DCS_EXPIRED_TOKEN:I = 0x2726

.field private static final ERROR_DCS_INVALID_TOKEN:I = 0x2722

.field private static final ERROR_INVALID_TOKEN:I = -0x40d

.field private static final MAX_TOKEN_RETRIES:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAuthenticateListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompleteListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<**>;",
            "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mImageRequestQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

.field private mReceivedInvalidTokenResponse:Z

.field private mRetryListener:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

.field private mRetryRequest:Lcom/mcdonalds/sdk/services/network/RequestProvider;

.field private final mSignInListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenErrorRetryCount:I

.field private mTokenRequestQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<**>;",
            "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/mcdonalds/sdk/services/network/RequestManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenRequestQueue:Ljava/util/LinkedHashMap;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mImageRequestQueue:Ljava/util/LinkedHashMap;

    .line 66
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mReceivedInvalidTokenResponse:Z

    .line 69
    iput-object v2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryRequest:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 70
    iput-object v2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryListener:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    .line 71
    iput v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenErrorRetryCount:I

    .line 393
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$2;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mSignInListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 408
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$3;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mAuthenticateListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 423
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$4;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mCompleteListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 79
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)Lcom/mcdonalds/sdk/services/network/RequestManager;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processTokenQueue()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->failAllQueuedRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processResponseForRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private createTokenFailureResponse(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    .locals 5
    .param p1, "request"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .prologue
    .line 255
    const/4 v2, 0x0

    .line 257
    .local v2, "response":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    :try_start_0
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getResponseClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    move-object v2, v0

    .line 258
    const/16 v3, -0x40d

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->setResultCode(I)V

    .line 259
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 268
    :goto_0
    return-object v2

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "ignore":Ljava/lang/InstantiationException;
    sget-object v3, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->TAG:Ljava/lang/String;

    const-string v4, "Token createTokenFailureResponse failure."

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v1    # "ignore":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 263
    .local v1, "ignore":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->TAG:Ljava/lang/String;

    const-string v4, "Token createTokenFailureResponse failure."

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v1    # "ignore":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 265
    .local v1, "ignore":Ljava/lang/ClassCastException;
    sget-object v3, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->TAG:Ljava/lang/String;

    const-string v4, "Token createTokenFailureResponse failure."

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private failAllQueuedRequests()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 224
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryRequest:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    if-eqz v5, :cond_0

    .line 225
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryRequest:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    invoke-direct {p0, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->createTokenFailureResponse(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    move-result-object v0

    .line 226
    .local v0, "failureResponse":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryListener:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->getOrigin()Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v5

    invoke-interface {v5, v0, v7, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 230
    .end local v0    # "failureResponse":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;

    .line 231
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    .line 233
    .local v4, "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 234
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 236
    .local v2, "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    .line 237
    .local v1, "listener":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->createTokenFailureResponse(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    move-result-object v3

    .line 239
    .local v3, "response":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->getOrigin()Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v6

    invoke-interface {v6, v3, v7, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 243
    .end local v1    # "listener":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    .end local v2    # "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .end local v3    # "response":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 244
    .restart local v4    # "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 245
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 247
    .restart local v2    # "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    .line 248
    .restart local v1    # "listener":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->createTokenFailureResponse(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    move-result-object v3

    .line 250
    .restart local v3    # "response":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->getOrigin()Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v6

    invoke-interface {v6, v3, v7, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1

    .line 252
    .end local v1    # "listener":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    .end local v2    # "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .end local v3    # "response":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
    :cond_2
    return-void
.end method

.method private static getResultCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "response"    # Ljava/lang/Object;

    .prologue
    .line 281
    instance-of v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    if-eqz v0, :cond_0

    .line 282
    check-cast p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    .end local p0    # "response":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getResultCode()I

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 285
    .restart local p0    # "response":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;

    if-eqz v0, :cond_1

    .line 286
    check-cast p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;

    .end local p0    # "response":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->getStatusCode()I

    move-result v0

    goto :goto_0

    .line 289
    .restart local p0    # "response":Ljava/lang/Object;
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isCustomerLoggedIn()Z
    .locals 2

    .prologue
    .line 363
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 364
    .local v0, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized processResponseForRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "provider"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .param p2, "listener"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    .param p3, "response"    # Ljava/lang/Object;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isTokenNeeded(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    invoke-static {p3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->getResultCode(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, -0x40d

    if-eq v1, v2, :cond_0

    .line 161
    invoke-static {p3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->getResultCode(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x2722

    if-eq v1, v2, :cond_0

    .line 162
    invoke-static {p3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->getResultCode(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x2726

    if-ne v1, v2, :cond_5

    .line 163
    :cond_0
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mReceivedInvalidTokenResponse:Z

    if-nez v1, :cond_2

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mReceivedInvalidTokenResponse:Z

    .line 168
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryRequest:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 169
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryListener:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    .line 170
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->updateToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    const/4 v0, 0x0

    .line 207
    .local v0, "requestSuccessful":Z
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    .line 176
    .end local v0    # "requestSuccessful":Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryRequest:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    if-ne p1, v1, :cond_4

    .line 177
    iget v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenErrorRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenErrorRetryCount:I

    .line 178
    iget v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenErrorRetryCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->failAllQueuedRequests()V

    .line 182
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->resetRetryState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 185
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->updateToken()V

    goto :goto_0

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_5
    const/4 v0, 0x1

    .line 201
    .restart local v0    # "requestSuccessful":Z
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mReceivedInvalidTokenResponse:Z

    if-eqz v1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->resetRetryState()V

    .line 203
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processTokenQueue()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized processTokenQueue()V
    .locals 12

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v3

    .line 86
    .local v3, "manager":Lcom/mcdonalds/sdk/services/network/SessionManager;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "sessionToken":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isRefreshing()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 90
    iget-boolean v9, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mReceivedInvalidTokenResponse:Z

    if-eqz v9, :cond_1

    .line 91
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    iget-object v10, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryRequest:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    iget-object v11, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryListener:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/network/RequestManager;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isTokenAuthenticated()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->isUsingECP3()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v6, 0x1

    .line 99
    .local v6, "shouldDeleteSessionOnComplete":Z
    :goto_1
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I

    move-result v9

    iget-object v10, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    add-int v1, v9, v10

    .line 100
    .local v1, "batchSize":I
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    new-instance v9, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;

    invoke-direct {v9, p0, v6, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;ZLjava/lang/String;)V

    invoke-direct {v0, v1, v9}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 114
    .local v0, "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;

    .line 115
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedHashMap;

    .line 118
    .local v7, "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clear()V

    .line 119
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 121
    .local v4, "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v10

    invoke-virtual {v10, v5, v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->updateRequestToken(Ljava/lang/String;Lcom/mcdonalds/sdk/services/network/RequestProvider;)V

    .line 124
    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    .line 125
    .local v2, "listener":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    new-instance v8, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->getOrigin()Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v10

    invoke-direct {v8, p0, v10, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncCounter;)V

    .line 127
    .local v8, "wrapper":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper<*>;"
    invoke-virtual {p0, v4, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 85
    .end local v0    # "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    .end local v1    # "batchSize":I
    .end local v2    # "listener":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    .end local v3    # "manager":Lcom/mcdonalds/sdk/services/network/SessionManager;
    .end local v4    # "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .end local v5    # "sessionToken":Ljava/lang/String;
    .end local v6    # "shouldDeleteSessionOnComplete":Z
    .end local v7    # "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    .end local v8    # "wrapper":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper<*>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 97
    .restart local v3    # "manager":Lcom/mcdonalds/sdk/services/network/SessionManager;
    .restart local v5    # "sessionToken":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 131
    .restart local v0    # "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    .restart local v1    # "batchSize":I
    .restart local v6    # "shouldDeleteSessionOnComplete":Z
    .restart local v7    # "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    :cond_3
    :try_start_2
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    check-cast v7, Ljava/util/LinkedHashMap;

    .line 132
    .restart local v7    # "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clear()V

    .line 133
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 135
    .restart local v4    # "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v10

    invoke-virtual {v10, v5, v4}, Lcom/mcdonalds/sdk/services/network/SessionManager;->updateRequestToken(Ljava/lang/String;Lcom/mcdonalds/sdk/services/network/RequestProvider;)V

    .line 137
    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    .line 138
    .restart local v2    # "listener":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    new-instance v8, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;->getOrigin()Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v10

    invoke-direct {v8, p0, v10, v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncCounter;)V

    .line 140
    .restart local v8    # "wrapper":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper<*>;"
    invoke-virtual {p0, v4, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_3

    .line 143
    .end local v2    # "listener":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    .end local v4    # "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .end local v8    # "wrapper":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$AsyncListenerWrapper<*>;"
    :cond_4
    if-eqz v6, :cond_0

    .line 146
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/network/SessionManager;->clearToken()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    .end local v1    # "batchSize":I
    .end local v6    # "shouldDeleteSessionOnComplete":Z
    .end local v7    # "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;>;"
    :cond_5
    sget-object v9, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->TAG:Ljava/lang/String;

    const-string v10, "Refreshing token error during token queue flush."

    invoke-static {v9, v10}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private resetRetryState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mReceivedInvalidTokenResponse:Z

    .line 274
    iput-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryRequest:Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .line 275
    iput-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mRetryListener:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    .line 276
    iput v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenErrorRetryCount:I

    .line 277
    return-void
.end method

.method private tokenRefreshRequired(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z
    .locals 3
    .param p1, "provider"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isAuthenticationNeeded(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isTokenAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 357
    goto :goto_0
.end method

.method private updateToken()V
    .locals 6

    .prologue
    .line 369
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    .line 370
    .local v1, "manager":Lcom/mcdonalds/sdk/services/network/SessionManager;
    const-string v5, "Middleware"

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    .line 371
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->clearToken()V

    .line 375
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setRefreshing(Z)V

    .line 377
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->isCustomerLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 380
    .local v2, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    .line 381
    .local v4, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v4, :cond_0

    .line 383
    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->fromProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    move-result-object v3

    .line 384
    .local v3, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mAuthenticateListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v3, v5}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 391
    .end local v2    # "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v3    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .end local v4    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mSignInListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->signIn(Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addRequestToQueue(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p1, "provider"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .param p2, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 213
    .local v0, "wrapper":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mReceivedInvalidTokenResponse:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mErrorRetryRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_0
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mTokenRequestQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    .end local v0    # "wrapper":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p1, "provider"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;
    .param p2, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    const/4 v4, 0x0

    .line 302
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "log.network"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "log.logsToConsole"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-static {v1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isTokenNeeded(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z

    move-result v0

    .line 308
    .local v0, "isTokenNeeded":Z
    if-eqz v0, :cond_2

    .line 309
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isAuthenticationNeeded(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isTokenAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 315
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/mcdonalds/sdk/R$string;->auto_login_fail_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v4, v4, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 349
    :goto_1
    return-void

    .line 304
    .end local v0    # "isTokenNeeded":Z
    :cond_1
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 317
    .restart local v0    # "isTokenNeeded":Z
    :cond_2
    if-eqz v0, :cond_3

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSAuthenticationRequest;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSApplicationSecurityRequest;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSResetPasswordRequest;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignOutRequest;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionRequest;

    if-eqz v1, :cond_4

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    invoke-virtual {v1, p1, p2}, Lcom/mcdonalds/sdk/services/network/RequestManager;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_1

    .line 332
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->addRequestToQueue(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_1

    .line 336
    :cond_5
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->tokenRefreshRequired(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 339
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->updateToken()V

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->addRequestToQueue(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_1

    .line 346
    :cond_6
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    new-instance v2, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;

    invoke-direct {v2, p0, p1, p2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ErrorCheckListenerWrapper;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, p1, v2}, Lcom/mcdonalds/sdk/services/network/RequestManager;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_1
.end method

.method public processUrlIntoNetworkImageView(Ljava/lang/String;Lcom/android/volley/toolbox/NetworkImageView;II)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "networkImageView"    # Lcom/android/volley/toolbox/NetworkImageView;
    .param p3, "defaultImageResId"    # I
    .param p4, "errorImageResId"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    if-eqz v0, :cond_0

    .line 450
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/services/network/RequestManager;->processUrlIntoNetworkImageView(Ljava/lang/String;Lcom/android/volley/toolbox/NetworkImageView;II)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->mImageRequestQueue:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;-><init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Ljava/lang/String;Lcom/android/volley/toolbox/NetworkImageView;II)V

    invoke-virtual {v6, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
