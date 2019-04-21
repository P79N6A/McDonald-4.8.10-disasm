.class public Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
.super Ljava/lang/Object;
.source "AuthorizationCodeFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field authorizationServerEncodedUrl:Ljava/lang/String;

.field clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field clientId:Ljava/lang/String;

.field clock:Lcom/google/api/client/util/Clock;

.field credentialCreatedListener:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;

.field credentialDataStore:Lcom/google/api/client/util/store/DataStore;
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/client/util/store/DataStore",
            "<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;"
        }
    .end annotation
.end field

.field credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field refreshListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field scopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

.field transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .param p2, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p3, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p4, "tokenServerUrl"    # Lcom/google/api/client/http/GenericUrl;
    .param p5, "clientAuthentication"    # Lcom/google/api/client/http/HttpExecuteInterceptor;
    .param p6, "clientId"    # Ljava/lang/String;
    .param p7, "authorizationServerEncodedUrl"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    invoke-static {}, Lcom/google/api/client/util/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->scopes:Ljava/util/Collection;

    .line 459
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clock:Lcom/google/api/client/util/Clock;

    .line 465
    invoke-static {}, Lcom/google/api/client/util/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->refreshListeners:Ljava/util/Collection;

    .line 485
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setMethod(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    .line 486
    invoke-virtual {p0, p2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    .line 487
    invoke-virtual {p0, p3}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    .line 488
    invoke-virtual {p0, p4}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    .line 489
    invoke-virtual {p0, p5}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    .line 490
    invoke-virtual {p0, p6}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    .line 491
    invoke-virtual {p0, p7}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setAuthorizationServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    .line 492
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
    .locals 1

    .prologue
    .line 496
    new-instance v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-direct {v0, p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;-><init>(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;)V

    return-object v0
.end method

.method public setAuthorizationServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .param p1, "authorizationServerEncodedUrl"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->authorizationServerEncodedUrl:Ljava/lang/String;

    .line 638
    return-object p0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 0
    .param p1, "clientAuthentication"    # Lcom/google/api/client/http/HttpExecuteInterceptor;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 599
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clientId:Ljava/lang/String;

    .line 618
    return-object p0
.end method

.method public setCredentialDataStore(Lcom/google/api/client/util/store/DataStore;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/util/store/DataStore",
            "<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, "credentialDataStore":Lcom/google/api/client/util/store/DataStore;, "Lcom/google/api/client/util/store/DataStore<Lcom/google/api/client/auth/oauth2/StoredCredential;>;"
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->credentialStore:Lcom/google/api/client/auth/oauth2/CredentialStore;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 758
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    .line 759
    return-object p0

    .line 757
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    .line 556
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 557
    return-object p0
.end method

.method public setMethod(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .param p1, "method"    # Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .prologue
    .line 518
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 519
    return-object p0
.end method

.method public setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .param p1, "tokenServerUrl"    # Lcom/google/api/client/http/GenericUrl;

    .prologue
    .line 575
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    .line 576
    return-object p0
.end method

.method public setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;

    .prologue
    .line 537
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 538
    return-object p0
.end method
