.class public Lcom/mcdonalds/sdk/services/network/SessionManager;
.super Ljava/util/Observable;
.source "SessionManager.java"


# static fields
.field private static final CACHE_KEY_REFRESH_TOKEN:Ljava/lang/String; = "cache_refresh_token"

.field private static final CACHE_KEY_TOKEN:Ljava/lang/String; = "cache_token"

.field private static final CACHE_KEY_TOKEN_AUTHENTICATED:Ljava/lang/String; = "cache_token_authenticated"

.field private static final KEY_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final KEY_TOKEN:Ljava/lang/String; = "Token"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "userName"

.field private static sInstance:Lcom/mcdonalds/sdk/services/network/SessionManager;


# instance fields
.field private mIsTokenAuthenticated:Z

.field private mRefreshToken:Ljava/lang/String;

.field private mRefreshing:Z

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 37
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    .line 39
    .local v0, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    const-string v1, "cache_token"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mToken:Ljava/lang/String;

    .line 40
    const-string v1, "cache_refresh_token"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mRefreshToken:Ljava/lang/String;

    .line 41
    const-string v1, "cache_token_authenticated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mIsTokenAuthenticated:Z

    .line 43
    return-void
.end method

.method private containsHeader(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .param p1, "headers"    # Ljava/util/Map;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/mcdonalds/sdk/services/network/SessionManager;->sInstance:Lcom/mcdonalds/sdk/services/network/SessionManager;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/mcdonalds/sdk/services/network/SessionManager;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/network/SessionManager;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/SessionManager;->sInstance:Lcom/mcdonalds/sdk/services/network/SessionManager;

    .line 168
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/network/SessionManager;->sInstance:Lcom/mcdonalds/sdk/services/network/SessionManager;

    return-object v0
.end method

.method public static setInstance(Lcom/mcdonalds/sdk/services/network/SessionManager;)V
    .locals 0
    .param p0, "sessionManager"    # Lcom/mcdonalds/sdk/services/network/SessionManager;

    .prologue
    .line 173
    sput-object p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->sInstance:Lcom/mcdonalds/sdk/services/network/SessionManager;

    .line 174
    return-void
.end method


# virtual methods
.method public applyCurrentToken(Lcom/mcdonalds/sdk/services/network/RequestProvider;)V
    .locals 6
    .param p1, "request"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isTokenNeeded(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "tokenKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 50
    .local v2, "tokenValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 52
    .local v0, "newToken":Ljava/lang/String;
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Token"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const-string v1, "Token"

    .line 55
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Token"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tokenValue":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 56
    .restart local v2    # "tokenValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 73
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v0    # "newToken":Ljava/lang/String;
    .end local v1    # "tokenKey":Ljava/lang/String;
    .end local v2    # "tokenValue":Ljava/lang/String;
    :cond_1
    return-void

    .line 57
    .restart local v0    # "newToken":Ljava/lang/String;
    .restart local v1    # "tokenKey":Ljava/lang/String;
    .restart local v2    # "tokenValue":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Authorization"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v1, "Authorization"

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Authorization"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public clearToken()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 130
    iput-object v1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mToken:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mRefreshToken:Ljava/lang/String;

    .line 132
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mIsTokenAuthenticated:Z

    .line 133
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mRefreshing:Z

    .line 135
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_token"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_refresh_token"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_token_authenticated"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mToken:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isAuthenticationNeeded(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z
    .locals 2
    .param p1, "request"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "userName"

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->containsHeader(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userName"

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->containsParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getURLString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userName"

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->containsParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResetPasswordRequest;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetStoreAdvertisableRequest;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mRefreshing:Z

    return v0
.end method

.method public isTokenAuthenticated()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mIsTokenAuthenticated:Z

    return v0
.end method

.method public isTokenNeeded(Lcom/mcdonalds/sdk/services/network/RequestProvider;)Z
    .locals 2
    .param p1, "request"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Token"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyTokenRefreshed()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mRefreshing:Z

    .line 159
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setChanged()V

    .line 160
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->notifyObservers()V

    .line 161
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mRefreshToken:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_refresh_token"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 0
    .param p1, "refreshing"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mRefreshing:Z

    .line 187
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mIsTokenAuthenticated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mToken:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_token"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    return-void
.end method

.method public setTokenAuthenticated(Z)V
    .locals 2
    .param p1, "tokenAuthenticated"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/services/network/SessionManager;->mIsTokenAuthenticated:Z

    .line 182
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_token_authenticated"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public updateRequestToken(Ljava/lang/String;Lcom/mcdonalds/sdk/services/network/RequestProvider;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/mcdonalds/sdk/services/network/RequestProvider;

    .prologue
    .line 107
    invoke-interface {p2}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 108
    .local v0, "headers":Ljava/util/Map;
    if-eqz v0, :cond_0

    .line 109
    const-string v1, "Token"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string v1, "Token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v1, "Authorization"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
