.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;
.super Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;
.source "MWDCSConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/CustomerConnector;


# static fields
.field private static final STATUS_CODE_SUCCESS:I = 0x2b03


# instance fields
.field private mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V
    .locals 0
    .param p1, "sharedData"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->setUserLoggedIn(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->addCardInfoToCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->dispatchFavoriteStores(Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->fetchCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method private addCardInfoToCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "token":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetPaymentWalletRequest;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetPaymentWalletRequest;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetPaymentWalletRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$20;

    invoke-direct {v3, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$20;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 713
    return-void
.end method

.method private dispatchFavoriteStores(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v4, 0x0

    .line 593
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->toCustomerProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 594
    .local v1, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteStores()Ljava/util/List;

    move-result-object v0

    .line 595
    .local v0, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz v0, :cond_0

    .line 596
    invoke-interface {p1, v0, v4, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    const-string v3, "No Favorite Stores"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4, v4, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method private fetchCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSGetCustomerDataRequest;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSGetCustomerDataRequest;-><init>(Ljava/lang/String;)V

    .line 679
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSGetCustomerDataRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$19;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$19;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 695
    return-void
.end method

.method private processUpdateProfileRequest(Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p1, "request"    # Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;

    invoke-direct {v1, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 675
    return-void
.end method

.method private refreshToken(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRefreshTokenRequest;

    .line 116
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRefreshTokenRequest;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRefreshTokenRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 135
    return-void
.end method

.method private setUserLoggedIn(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

    .prologue
    .line 138
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setRefreshing(Z)V

    .line 139
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;->getDetails()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;->token:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setToken(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;->getDetails()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setRefreshToken(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setTokenAuthenticated(Z)V

    .line 142
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->notifyTokenRefreshed()V

    .line 143
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;->getDetails()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;->token:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->retrieveAppParameters(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private signIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSocialAuthenticationRequest;

    .line 74
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    .line 76
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSocialAuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSAuthenticationRequest;
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 112
    return-void

    .line 80
    .end local v0    # "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSAuthenticationRequest;
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSAuthenticationRequest;

    .line 81
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    .line 83
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSAuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSAuthenticationRequest;
    goto :goto_0
.end method

.method private updateProfile(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p1, "newDCSProfile"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "responseAsyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .line 235
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 236
    return-void
.end method


# virtual methods
.method public addFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 9
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
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
    .line 473
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v0, 0x0

    .line 474
    .local v0, "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 475
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    .line 476
    .local v2, "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    iget-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v8, "Location"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 477
    move-object v0, v2

    .line 482
    .end local v2    # "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    :cond_1
    if-nez v0, :cond_4

    .line 483
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    .end local v0    # "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;-><init>()V

    .line 484
    .restart local v0    # "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    const-string v6, "Location"

    iput-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    .line 485
    const-string v6, "3"

    iput-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->favoriteId:Ljava/lang/String;

    .line 486
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    if-nez v6, :cond_2

    .line 487
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .line 489
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    if-nez v6, :cond_3

    .line 490
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 492
    :cond_3
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_4
    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    if-nez v6, :cond_5

    .line 495
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;-><init>()V

    iput-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    .line 498
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 499
    .local v3, "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;-><init>()V

    .line 500
    .local v1, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    .line 501
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    iput v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->storeNumber:I

    .line 502
    iget-object v7, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-virtual {v7, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->add(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;)Z

    goto :goto_0

    .line 505
    .end local v1    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    .end local v3    # "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_6
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;-><init>()V

    .line 506
    .local v4, "newProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    iput-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .line 507
    iget-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v7, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v7, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 509
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileAddingRequest;

    invoke-direct {v5, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileAddingRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .line 510
    .local v5, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileAddingRequest;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$13;

    invoke-direct {v6, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$13;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->processUpdateProfileRequest(Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 521
    const/4 v6, 0x0

    return-object v6
.end method

.method public addFavoriteProducts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "favoriteName"    # Ljava/lang/String;
    .param p4, "isProduct"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/lang/Boolean;",
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
    .line 374
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v0, 0x0

    .line 375
    .local v0, "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 376
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    .line 377
    .local v2, "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    iget-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v8, "Item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v8, "Order"

    .line 378
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 379
    :cond_2
    move-object v0, v2

    .line 384
    .end local v2    # "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    :cond_3
    if-nez v0, :cond_6

    .line 385
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    .end local v0    # "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;-><init>()V

    .line 386
    .restart local v0    # "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "Item"

    :goto_0
    iput-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    .line 387
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "2"

    :goto_1
    iput-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->favoriteId:Ljava/lang/String;

    .line 388
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    if-nez v6, :cond_4

    .line 389
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .line 391
    :cond_4
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    if-nez v6, :cond_5

    .line 392
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 394
    :cond_5
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_6
    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    if-nez v6, :cond_7

    .line 397
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;-><init>()V

    iput-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    .line 400
    :cond_7
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;-><init>()V

    .line 401
    .local v1, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    iput-object p2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    .line 402
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    .line 403
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 404
    .local v4, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 386
    .end local v1    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    .end local v4    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_8
    const-string v6, "Order"

    goto :goto_0

    .line 387
    :cond_9
    const-string v6, "1"

    goto :goto_1

    .line 406
    .restart local v1    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    :cond_a
    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-virtual {v6, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->add(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;)Z

    .line 408
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;-><init>()V

    .line 409
    .local v3, "newProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    iput-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .line 410
    iget-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v7, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v7, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 412
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileAddingRequest;

    invoke-direct {v5, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileAddingRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .line 413
    .local v5, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileAddingRequest;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$11;

    invoke-direct {v6, p0, p5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$11;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->processUpdateProfileRequest(Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 426
    const/4 v6, 0x0

    return-object v6
.end method

.method public authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
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
    .line 60
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->isTokenAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->signIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 67
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->refreshToken(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "authorizationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 241
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 242
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v3, v3, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 261
    :goto_0
    return-object v3

    .line 246
    :cond_1
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSChangePasswordRequest;

    invoke-direct {v0, p1, p2, p3, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSChangePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSChangePasswordRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$6;

    invoke-direct {v2, p0, p5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$6;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public deleteFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 12
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
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
    .line 526
    .local p1, "favoriteLocationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 529
    .local v1, "dcsFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    .line 530
    .local v3, "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    iget-object v9, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v10, "Location"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 531
    move-object v0, v3

    .line 535
    .end local v3    # "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    :cond_1
    if-nez v0, :cond_2

    .line 536
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/AsyncException;-><init>()V

    invoke-interface {p3, v8, v9, v10}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 537
    const/4 v8, 0x0

    .line 569
    .end local v0    # "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    .end local v1    # "dcsFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    :goto_0
    return-object v8

    .line 539
    .restart local v0    # "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    .restart local v1    # "dcsFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    :cond_2
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;-><init>()V

    .line 540
    .local v5, "newDetailsList":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;
    iget-object v8, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->addAll(Ljava/util/Collection;)Z

    .line 541
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 542
    .local v4, "favoriteLocationId":Ljava/lang/Integer;
    iget-object v9, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    .line 543
    .local v2, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    iget v10, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->storeNumber:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 544
    invoke-virtual {v5, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 548
    .end local v2    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    .end local v4    # "favoriteLocationId":Ljava/lang/Integer;
    :cond_5
    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    .line 550
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;-><init>()V

    .line 551
    .local v6, "newProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    iput-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .line 552
    iget-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iput-object v1, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 554
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;

    invoke-direct {v7, v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .line 555
    .local v7, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;
    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$14;

    invoke-direct {v8, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$14;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v7, v8}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->processUpdateProfileRequest(Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 569
    .end local v0    # "dcsFavorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    .end local v1    # "dcsFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    .end local v5    # "newDetailsList":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;
    .end local v6    # "newProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .end local v7    # "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;
    :goto_2
    const/4 v8, 0x0

    goto :goto_0

    .line 566
    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/AsyncException;-><init>()V

    invoke-interface {p3, v8, v9, v10}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_2
.end method

.method public deleteFavoriteProducts(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;",
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
    .local p2, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v9, 0x0

    .line 432
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 434
    .local v0, "dcsFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .local v2, "favoriteDetailsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 436
    .local v3, "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->fromFavoriteItem(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    .end local v3    # "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    .line 440
    .local v1, "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    iget-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v8, "Location"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 441
    iget-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-virtual {v7, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 445
    .end local v1    # "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    :cond_2
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;-><init>()V

    .line 446
    .local v4, "newProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    iput-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .line 447
    iget-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iput-object v0, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 450
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;

    invoke-direct {v5, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .line 451
    .local v5, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$12;

    invoke-direct {v6, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$12;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->processUpdateProfileRequest(Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 467
    .end local v0    # "dcsFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    .end local v2    # "favoriteDetailsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;>;"
    .end local v4    # "newProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .end local v5    # "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;
    :goto_2
    return-object v9

    .line 464
    :cond_3
    new-instance v6, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/AsyncException;-><init>()V

    invoke-interface {p3, v9, v9, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_2
.end method

.method public deregister(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "cancellationReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 633
    if-nez p1, :cond_0

    .line 634
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v3, v3, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 656
    :goto_0
    return-object v3

    .line 638
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSDeregisterRequest;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSDeregisterRequest;-><init>()V

    .line 640
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSDeregisterRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$17;

    invoke-direct {v2, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$17;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v2, 0x0

    .line 609
    if-nez p1, :cond_0

    .line 610
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 628
    :goto_0
    return-object v2

    .line 614
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$16;

    invoke-direct {v0, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$16;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->fetchCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public getFavoriteProducts(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v3, 0x0

    .line 349
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    if-nez v2, :cond_0

    .line 350
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$10;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$10;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, p1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->fetchCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 368
    :goto_0
    return-object v3

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->toCustomerProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 364
    .local v1, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteItems()Ljava/util/List;

    move-result-object v0

    .line 365
    .local v0, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    invoke-interface {p2, v0, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
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
    .line 166
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->fromCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    move-result-object v5

    .line 169
    .local v5, "dcsProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSocialRegistrationRequest;

    .line 171
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    .line 173
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSocialRegistrationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .line 184
    .local v0, "dcsRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$4;

    invoke-direct {v2, p0, v5, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$4;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 202
    const/4 v1, 0x0

    return-object v1

    .line 177
    .end local v0    # "dcsRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;

    .line 178
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    .line 180
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .restart local v0    # "dcsRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRequest;
    goto :goto_0
.end method

.method public renameFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
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
    .line 604
    .local p1, "favoriteLocations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->addFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public resetPassword(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 320
    if-nez p1, :cond_0

    .line 321
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3, v3, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 344
    :goto_0
    return-object v3

    .line 325
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSResetPasswordRequest;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSResetPasswordRequest;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/DCSResetPasswordRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$9;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$9;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public retrieveFavoriteStores(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
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
    .line 574
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$15;

    invoke-direct {v0, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$15;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->fetchCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 589
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->dispatchFavoriteStores(Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public sendRating(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "rating"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 266
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "rating"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 272
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 274
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const/4 v3, 0x5

    .line 275
    .local v3, "feedbackTypeId":I
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFeedBackTypeForRating()Lcom/mcdonalds/sdk/modules/models/FeedBackType;

    move-result-object v1

    .line 276
    .local v1, "feedBackType":Lcom/mcdonalds/sdk/modules/models/FeedBackType;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;->getID()I

    move-result v3

    .line 280
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;-><init>()V

    .line 281
    .local v2, "feedbackProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;
    iget-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;->comment:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;

    iget-object v4, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;->feedback:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;->feedbackType:Ljava/lang/String;

    .line 282
    iget-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;->comment:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;

    iget-object v4, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;->feedback:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;->feedbackRating:Ljava/lang/String;

    .line 283
    iget-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;->comment:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;

    iget-object v4, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;->feedback:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;

    iput-object p2, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;->userComment:Ljava/lang/String;

    .line 284
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$7;

    invoke-direct {v4, p0, p4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$7;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v2, v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->updateProfile(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 296
    const/4 v4, 0x0

    return-object v4
.end method

.method public setNotificationPreferences(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "preferences"    # Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
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

    .prologue
    .line 302
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;>;"
    invoke-virtual {p1, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)V

    .line 303
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$8;

    invoke-direct {v0, p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$8;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->updateProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public signOut(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->setAppParams(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSignOutRequest;

    .line 150
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSignOutRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$3;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$3;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 161
    return-object v3
.end method

.method public updateProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;>;"
    const/4 v3, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3, v3, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 230
    :goto_0
    return-object v3

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->mDCSProfile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-static {v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->difference(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    move-result-object v0

    .line 213
    .local v0, "newDCSProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->updateProfile(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method
