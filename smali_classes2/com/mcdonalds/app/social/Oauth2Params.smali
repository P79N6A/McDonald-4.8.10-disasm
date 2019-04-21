.class public Lcom/mcdonalds/app/social/Oauth2Params;
.super Ljava/lang/Object;
.source "Oauth2Params.java"


# instance fields
.field private accessMethod:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field private apiUrl:Ljava/lang/String;

.field private authorizationServerEncodedUrl:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private clientSecret:Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private tokenServerUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "tokenServerUrl"    # Ljava/lang/String;
    .param p4, "authorizationServerEncodedUrl"    # Ljava/lang/String;
    .param p5, "accessMethod"    # Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .param p6, "scope"    # Ljava/lang/String;
    .param p7, "redirectUri"    # Ljava/lang/String;
    .param p8, "userId"    # Ljava/lang/String;
    .param p9, "apiUrl"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/mcdonalds/app/social/Oauth2Params;->clientId:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/mcdonalds/app/social/Oauth2Params;->clientSecret:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/mcdonalds/app/social/Oauth2Params;->tokenServerUrl:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/mcdonalds/app/social/Oauth2Params;->authorizationServerEncodedUrl:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/mcdonalds/app/social/Oauth2Params;->accessMethod:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 97
    iput-object p6, p0, Lcom/mcdonalds/app/social/Oauth2Params;->scope:Ljava/lang/String;

    .line 98
    iput-object p7, p0, Lcom/mcdonalds/app/social/Oauth2Params;->redirectUri:Ljava/lang/String;

    .line 99
    iput-object p8, p0, Lcom/mcdonalds/app/social/Oauth2Params;->userId:Ljava/lang/String;

    .line 100
    iput-object p9, p0, Lcom/mcdonalds/app/social/Oauth2Params;->apiUrl:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static getOauthParamsForSocialNetworkType(I)Lcom/mcdonalds/app/social/Oauth2Params;
    .locals 12
    .param p0, "socialNetworkType"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.social.Oauth2Params"

    const-string v4, "getOauthParamsForSocialNetworkType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "params":Lcom/mcdonalds/app/social/Oauth2Params;
    packed-switch p0, :pswitch_data_0

    .line 80
    :goto_0
    :pswitch_0
    return-object v0

    .line 39
    :pswitch_1
    const-string v1, "92692804416-omhvm18ngfa8406lmnuab0n5eefaao8u.apps.googleusercontent.com"

    .line 44
    .local v1, "clientId":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/app/social/Oauth2Params;

    .end local v0    # "params":Lcom/mcdonalds/app/social/Oauth2Params;
    const-string v2, "GgOOCSAOCWHtB9WgeVcdFeMU"

    const-string v3, "https://www.googleapis.com/oauth2/v3/token"

    const-string v4, "https://accounts.google.com/o/oauth2/auth"

    .line 48
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v5

    const-string v6, "profile"

    const-string v7, "https://localhost/oauth2callback"

    const-string v8, "plus"

    const-string v9, "https://www.googleapis.com/plus/v1/people/me/activities/public"

    invoke-direct/range {v0 .. v9}, Lcom/mcdonalds/app/social/Oauth2Params;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .restart local v0    # "params":Lcom/mcdonalds/app/social/Oauth2Params;
    goto :goto_0

    .line 56
    .end local v1    # "clientId":Ljava/lang/String;
    :pswitch_2
    new-instance v0, Lcom/mcdonalds/app/social/Oauth2Params;

    .end local v0    # "params":Lcom/mcdonalds/app/social/Oauth2Params;
    const-string v3, "925309634186488"

    const-string v4, "ca9dd29a9eaeab3727a744609a88e9b0"

    const-string v5, "https://graph.facebook.com/oauth/access_token"

    const-string v6, "https://graph.facebook.com/oauth/authorize"

    .line 60
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v7

    const-string v8, "public_profile email"

    const-string v9, "https://www.facebook.com/connect/login_success.html"

    const-string v10, "facebook"

    const-string v11, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/mcdonalds/app/social/Oauth2Params;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .restart local v0    # "params":Lcom/mcdonalds/app/social/Oauth2Params;
    goto :goto_0

    .line 68
    :pswitch_3
    new-instance v0, Lcom/mcdonalds/app/social/Oauth2Params;

    .end local v0    # "params":Lcom/mcdonalds/app/social/Oauth2Params;
    const-string v3, "q9n46zFXsgIxgBwt8P5KB6MVt"

    const-string v4, "aaHK4qXcm6JZ1PGvU99BjZFNQDezb4iii2aztRA3PUT4QaJFT5"

    const-string v5, "https://api.twitter.com/oauth/access_token"

    const-string v6, "https://api.twitter.com/oauth/authorize"

    .line 72
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v7

    const-string v8, "https://api.twitter.com/"

    const-string v9, "http://www.mcdonalds.com"

    const-string v10, "twitter"

    const-string v11, "https://api.twitter.com/oauth/request_token"

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/mcdonalds/app/social/Oauth2Params;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "params":Lcom/mcdonalds/app/social/Oauth2Params;
    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 2

    .prologue
    const-string v0, "getAccessMethod"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/mcdonalds/app/social/Oauth2Params;->accessMethod:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    return-object v0
.end method

.method public getAuthorizationServerEncodedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAuthorizationServerEncodedUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/mcdonalds/app/social/Oauth2Params;->authorizationServerEncodedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getClientId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/mcdonalds/app/social/Oauth2Params;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getClientSecret"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/mcdonalds/app/social/Oauth2Params;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getRedirectUri"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/social/Oauth2Params;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getScope"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/mcdonalds/app/social/Oauth2Params;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTokenServerUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/mcdonalds/app/social/Oauth2Params;->tokenServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getUserId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/social/Oauth2Params;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const-string v0, "setUserId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iput-object p1, p0, Lcom/mcdonalds/app/social/Oauth2Params;->userId:Ljava/lang/String;

    .line 141
    return-void
.end method
