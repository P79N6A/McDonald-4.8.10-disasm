.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWSocialRegisterRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/socialLogin/register"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field protected mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Z)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "customerData"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    .param p4, "privacyPolicyAccepted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Z)V
    .locals 9
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "customerData"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    .param p3, "privacyPolicyAccepted"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 32
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 33
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->generateHash()V

    .line 35
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "firstName"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "lastName"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "nickName"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->nickName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "mobileNumber"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->defaultPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "emailAddress"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->emailAddress:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "isPrivacyPolicyAccepted"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "isTermsOfUseAccepted"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "preferredNotification"

    iget v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->preferredNotification:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "receivePromotions"

    iget-boolean v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->receivePromotions:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "cardItems"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentCard:Ljava/util/List;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "accountItems"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentAccount:Ljava/util/List;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v6, "zipCode"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->zipCode:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "loginPreference"

    iget v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->loginPreference:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "staticDataTypeID"

    new-array v7, v8, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-boolean v2, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->subscribedToOffers:Z

    .line 51
    .local v2, "wantsOffers":Z
    new-instance v0, Ljava/util/HashMap;

    const/16 v3, 0xc

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    .local v0, "notifPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "AppNotificationPreferences_Enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "AppNotificationPreferences_YourOffers"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "AppNotificationPreferences_LimitedTimeOffers"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "AppNotificationPreferences_PunchcardOffers"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "AppNotificationPreferences_EverydayOffers"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v6, "AppNotificationPreferences_OfferExpirationOption"

    if-eqz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    .line 59
    .local v1, "notificationPreferences":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
    if-eqz v1, :cond_1

    .line 60
    const-string v3, "EmailNotificationPreferences_Enabled"

    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_Enabled:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v3, "EmailNotificationPreferences_YourOffers"

    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_YourOffers:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v3, "EmailNotificationPreferences_LimitedTimeOffers"

    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v3, "EmailNotificationPreferences_PunchcardOffers"

    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "EmailNotificationPreferences_EverydayOffers"

    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "EmailNotificationPreferences_OfferExpirationOption"

    iget v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_OfferExpirationOption:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForCommunicationChannel"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForSurveys"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForProgramChanges"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForContests"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForOtherMarketingMessages"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "notificationPreferences"

    invoke-virtual {v3, v6, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "preferredOfferCategories"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->preferredOfferCategories:Ljava/util/List;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "subscribedToOffer"

    iget-boolean v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->subscribedToOffers:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "isActive"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "requireActivationSocial"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v4, "loginInfo"

    iget-object v5, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->loginInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v4, "Opt-Ins"

    iget-object v5, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optIns:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void

    .end local v1    # "notificationPreferences":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
    :cond_0
    move v3, v5

    .line 57
    goto/16 :goto_0

    .line 67
    .restart local v1    # "notificationPreferences":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
    :cond_1
    const-string v3, "EmailNotificationPreferences_Enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v3, "EmailNotificationPreferences_YourOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "EmailNotificationPreferences_LimitedTimeOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v3, "EmailNotificationPreferences_PunchcardOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v3, "EmailNotificationPreferences_EverydayOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "EmailNotificationPreferences_OfferExpirationOption"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    move v4, v5

    .line 87
    goto :goto_2
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "/customer/socialLogin/register"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 120
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWSocialRegisterRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
