.class public Lcom/mcdonalds/app/social/OAuth2Helper;
.super Ljava/lang/Object;
.source "OAuth2Helper.java"


# static fields
.field private static DATA_STORE_FACTORY:Lcom/google/api/client/util/store/FileDataStoreFactory;

.field private static final HTTP_TRANSPORT:Lcom/google/api/client/http/HttpTransport;

.field private static final JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;


# instance fields
.field private flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

.field private oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/social/OAuth2Helper;->HTTP_TRANSPORT:Lcom/google/api/client/http/HttpTransport;

    .line 44
    invoke-static {}, Lcom/mcdonalds/app/social/OAuth2Helper;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/social/OAuth2Helper;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/app/social/OAuth2Helper;->DATA_STORE_FACTORY:Lcom/google/api/client/util/store/FileDataStoreFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socialNetworkType"    # I

    .prologue
    .line 62
    invoke-static {p2}, Lcom/mcdonalds/app/social/Oauth2Params;->getOauthParamsForSocialNetworkType(I)Lcom/mcdonalds/app/social/Oauth2Params;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mcdonalds/app/social/OAuth2Helper;-><init>(Landroid/content/Context;ILcom/mcdonalds/app/social/Oauth2Params;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mcdonalds/app/social/Oauth2Params;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socialNetworkType"    # I
    .param p3, "oauth2Params"    # Lcom/mcdonalds/app/social/Oauth2Params;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    .line 69
    :try_start_0
    iput-object p3, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    .line 70
    invoke-static {p1}, Lcom/mcdonalds/app/social/OAuth2Helper;->getDataStoreFactory(Landroid/content/Context;)Lcom/google/api/client/util/store/FileDataStoreFactory;

    move-result-object v0

    invoke-static {p2}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getNameForType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/store/FileDataStoreFactory;->getDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;

    move-result-object v8

    .line 71
    .local v8, "dataStore":Lcom/google/api/client/util/store/DataStore;, "Lcom/google/api/client/util/store/DataStore<Lcom/google/api/client/auth/oauth2/StoredCredential;>;"
    new-instance v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    invoke-virtual {p3}, Lcom/mcdonalds/app/social/Oauth2Params;->getAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/social/OAuth2Helper;->HTTP_TRANSPORT:Lcom/google/api/client/http/HttpTransport;

    sget-object v3, Lcom/mcdonalds/app/social/OAuth2Helper;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    new-instance v4, Lcom/google/api/client/http/GenericUrl;

    .line 74
    invoke-virtual {p3}, Lcom/mcdonalds/app/social/Oauth2Params;->getTokenServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;

    .line 75
    invoke-virtual {p3}, Lcom/mcdonalds/app/social/Oauth2Params;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {p3}, Lcom/mcdonalds/app/social/Oauth2Params;->getClientSecret()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Lcom/mcdonalds/app/social/Oauth2Params;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-virtual {p3}, Lcom/mcdonalds/app/social/Oauth2Params;->getAuthorizationServerEncodedUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v8}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setCredentialDataStore(Lcom/google/api/client/util/store/DataStore;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->build()Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v8    # "dataStore":Lcom/google/api/client/util/store/DataStore;, "Lcom/google/api/client/util/store/DataStore<Lcom/google/api/client/auth/oauth2/StoredCredential;>;"
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v9

    .line 82
    .local v9, "ioe":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertScopesToString(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p1, "scopesConcat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "convertScopesToString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "scopes":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 157
    return-object v0
.end method

.method private static getDataStoreFactory(Landroid/content/Context;)Lcom/google/api/client/util/store/FileDataStoreFactory;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.social.OAuth2Helper"

    const-string v2, "getDataStoreFactory"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/mcdonalds/app/social/OAuth2Helper;->DATA_STORE_FACTORY:Lcom/google/api/client/util/store/FileDataStoreFactory;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/google/api/client/util/store/FileDataStoreFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CREDENTIALS_CACHE_NAME"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/util/store/FileDataStoreFactory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/mcdonalds/app/social/OAuth2Helper;->DATA_STORE_FACTORY:Lcom/google/api/client/util/store/FileDataStoreFactory;

    .line 57
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/social/OAuth2Helper;->DATA_STORE_FACTORY:Lcom/google/api/client/util/store/FileDataStoreFactory;

    return-object v0
.end method

.method private static getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.social.OAuth2Helper"

    const-string v1, "getJsonFactory"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    new-instance v0, Lcom/mcdonalds/app/social/OAuth2Helper$1;

    invoke-direct {v0}, Lcom/mcdonalds/app/social/OAuth2Helper$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAuthorizationUrl()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "getAuthorizationUrl"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newAuthorizationUrl()Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    .line 104
    invoke-virtual {v2}, Lcom/mcdonalds/app/social/Oauth2Params;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    .line 105
    invoke-virtual {v2}, Lcom/mcdonalds/app/social/Oauth2Params;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/social/OAuth2Helper;->convertScopesToString(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->build()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "authorizationUrl":Ljava/lang/String;
    return-object v0
.end method

.method public getOauth2Params()Lcom/mcdonalds/app/social/Oauth2Params;
    .locals 2

    .prologue
    const-string v0, "getOauth2Params"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    return-object v0
.end method

.method public retrieveAndStoreAccessToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "authorizationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "retrieveAndStoreAccessToken"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveAndStoreAccessToken for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v2, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    .line 113
    invoke-virtual {v3}, Lcom/mcdonalds/app/social/Oauth2Params;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/social/OAuth2Helper;->convertScopesToString(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    .line 114
    invoke-virtual {v3}, Lcom/mcdonalds/app/social/Oauth2Params;->getRedirectUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v2

    .line 112
    invoke-static {v2}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->execute(Lcom/google/api/client/auth/oauth2/TokenRequest;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    .line 119
    .local v0, "tokenResponse":Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    invoke-virtual {v0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->parseIdToken()Lcom/google/api/client/auth/openidconnect/IdToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/auth/openidconnect/IdToken;->getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/social/Oauth2Params;->setUserId(Ljava/lang/String;)V

    .line 122
    const-string v2, "Found tokenResponse :"

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access Token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh Token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    iget-object v3, p0, Lcom/mcdonalds/app/social/OAuth2Helper;->oauth2Params:Lcom/mcdonalds/app/social/Oauth2Params;

    invoke-virtual {v3}, Lcom/mcdonalds/app/social/Oauth2Params;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->createAndStoreCredential(Lcom/google/api/client/auth/oauth2/TokenResponse;Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 126
    return-void
.end method
