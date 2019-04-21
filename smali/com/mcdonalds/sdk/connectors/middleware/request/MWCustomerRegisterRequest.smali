.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWCustomerRegisterRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWCustomerRegisterResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final SKIP_BIRTHDAY_DAY:Ljava/lang/String; = "interface.register.skipBirthDayDayInfo"

.field private static final URL_PATH:Ljava/lang/String; = "/customer/registration"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field private final mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;


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
    .line 32
    invoke-direct {p0, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;Z)V
    .locals 9
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "customerData"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    .param p3, "privacyPolicyAccepted"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 37
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 40
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 41
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v6, "userName"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->userName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "password"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->password:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "firstName"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->lastName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "-"

    .line 47
    .local v0, "lastName":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "lastName"

    invoke-virtual {v3, v6, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "nickName"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->nickName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "mobileNumber"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->defaultPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "emailAddress"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->emailAddress:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "isPrivacyPolicyAccepted"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "isTermsOfUseAccepted"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "preferredNotification"

    iget v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->preferredNotification:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "receivePromotions"

    iget-boolean v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->receivePromotions:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "cardItems"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentCard:Ljava/util/List;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "accountItems"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentAccount:Ljava/util/List;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v6, "zipCode"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->zipCode:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-boolean v2, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->subscribedToOffers:Z

    .line 61
    .local v2, "wantsOffers":Z
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForCommunicationChannel"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForSurveys"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForProgramChanges"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForContests"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForOtherMarketingMessages"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 68
    .local v1, "notifPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "AppNotificationPreferences_Enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "AppNotificationPreferences_YourOffers"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v3, "AppNotificationPreferences_LimitedTimeOffers"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v3, "AppNotificationPreferences_PunchcardOffers"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "AppNotificationPreferences_EverydayOffers"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v6, "AppNotificationPreferences_OfferExpirationOption"

    if-eqz v2, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    if-eqz v3, :cond_9

    .line 75
    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_Enabled:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    .line 76
    const-string v3, "EmailNotificationPreferences_Enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :goto_2
    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_YourOffers:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    .line 82
    const-string v3, "EmailNotificationPreferences_YourOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_3
    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    .line 88
    const-string v3, "EmailNotificationPreferences_LimitedTimeOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_4
    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;

    if-nez v3, :cond_7

    .line 94
    const-string v3, "EmailNotificationPreferences_PunchcardOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_5
    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;

    if-nez v3, :cond_8

    .line 100
    const-string v3, "EmailNotificationPreferences_EverydayOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_6
    const-string v3, "EmailNotificationPreferences_OfferExpirationOption"

    iget-object v6, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_OfferExpirationOption:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_7
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v7, "optInForCommunicationChannel"

    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForCommunicationChannel:Ljava/lang/Boolean;

    if-eqz v3, :cond_a

    iget-object v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForCommunicationChannel:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForSurveys"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForProgramChanges"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForContests"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "optInForOtherMarketingMessages"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "notificationPreferences"

    invoke-virtual {v3, v6, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "preferredOfferCategories"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->preferredOfferCategories:Ljava/util/List;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "subscribedToOffer"

    iget-boolean v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->subscribedToOffers:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget v3, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->loginPreference:I

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "loginPreference"

    iget v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->loginPreference:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v6, "interface.register.skipBirthDayDayInfo"

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "dayOfBirth"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->dayOfBirth:Ljava/lang/Integer;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "monthOfBirth"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->monthOfBirth:Ljava/lang/Integer;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v6, "yearOfBirth"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->yearOfBirth:Ljava/lang/Integer;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "Opt-Ins"

    iget-object v7, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optIns:Ljava/util/List;

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "isActive"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "requireActivation"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void

    .line 45
    .end local v0    # "lastName":Ljava/lang/String;
    .end local v1    # "notifPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "wantsOffers":Z
    :cond_2
    iget-object v0, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->lastName:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0    # "lastName":Ljava/lang/String;
    .restart local v1    # "notifPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "wantsOffers":Z
    :cond_3
    move v3, v5

    .line 73
    goto/16 :goto_1

    .line 78
    :cond_4
    const-string v3, "EmailNotificationPreferences_Enabled"

    iget-object v6, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_Enabled:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 84
    :cond_5
    const-string v3, "EmailNotificationPreferences_YourOffers"

    iget-object v6, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_YourOffers:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 90
    :cond_6
    const-string v3, "EmailNotificationPreferences_LimitedTimeOffers"

    iget-object v6, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 96
    :cond_7
    const-string v3, "EmailNotificationPreferences_PunchcardOffers"

    iget-object v6, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 102
    :cond_8
    const-string v3, "EmailNotificationPreferences_EverydayOffers"

    iget-object v6, p2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 107
    :cond_9
    const-string v3, "EmailNotificationPreferences_Enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v3, "EmailNotificationPreferences_YourOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v3, "EmailNotificationPreferences_LimitedTimeOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v3, "EmailNotificationPreferences_PunchcardOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v3, "EmailNotificationPreferences_EverydayOffers"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v3, "EmailNotificationPreferences_OfferExpirationOption"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_a
    move v3, v5

    .line 115
    goto/16 :goto_8

    :cond_b
    move v4, v5

    .line 136
    goto/16 :goto_9
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

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
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "/customer/registration"

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
    .line 156
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRawBody()Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 146
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWCustomerRegisterResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWCustomerRegisterResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 167
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerRregisterRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerRegisterRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
