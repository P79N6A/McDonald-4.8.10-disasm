.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWSocialUpdateProfileRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWUpdateProfileResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/socialLogin/profile"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field protected mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 18
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 37
    invoke-virtual/range {p0 .. p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v10

    .line 41
    .local v10, "paymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v3, "customerCardDataList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;>;"
    if-eqz v10, :cond_1

    .line 43
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 44
    .local v11, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_1

    .line 46
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 47
    .local v9, "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-static {v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->toMWPaymentCardData(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    move-result-object v2

    .line 49
    .local v2, "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    if-eqz v2, :cond_0

    .line 50
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isValid:Ljava/lang/Boolean;

    .line 53
    :cond_0
    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->fromPaymentCardData(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;

    move-result-object v6

    .line 55
    .local v6, "ecpCustomerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    .end local v6    # "ecpCustomerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    .end local v7    # "i":I
    .end local v9    # "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .end local v11    # "size":I
    :cond_1
    new-instance v14, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 60
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v15, "userName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "newUserName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNewUserName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "password"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "firstName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "lastName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "middleName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "nickName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNickName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "mobileNumber"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "emailAddress"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "receivePromotions"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "customerId"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v15, "yearOfBirth"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getYearOfBirth()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "monthOfBirth"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMonthOfBirth()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "dayOfBirth"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getDayOfBirth()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "cardItems"

    invoke-virtual {v14, v15, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "isPrivacyPolicyAccepted"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "isTermsOfUseAccepted"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v15, "zipCode"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "subscribedToOffer"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "MSAlarmEnabled"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->ismMSAlarmEnabled()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "optInForCommunicationChannel"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForCommunicationChannel()Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "optInForSurveys"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForSurveys()Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "optInForProgramChanges"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForProgramChanges()Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "optInForContests"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForContests()Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "optInForOtherMarketingMessages"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForOtherMarketingMessages()Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "notificationPreferences"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->fromNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "preferredOfferCategories"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredOfferCategories()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v16, "preferredNotification"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredNotification()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredNotification()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "langString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "PreferredLanguage"

    invoke-virtual {v14, v15, v8}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v14

    if-eqz v14, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "loginPreference"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->fromCustomer(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v4

    .line 97
    .local v4, "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "loginInfo"

    iget-object v0, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->loginInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "Opt-Ins"

    iget-object v0, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optIns:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v13, ""

    .line 102
    .local v13, "storeId":Ljava/lang/String;
    const-string v14, "customer"

    invoke-static {v14}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 103
    .local v5, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getNearByStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v12

    .line 104
    .local v12, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v12, :cond_3

    .line 105
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v12

    .line 107
    :cond_3
    if-eqz v12, :cond_4

    .line 108
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 110
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v15, "restaurantId"

    invoke-virtual {v14, v15, v13}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void

    .line 87
    .end local v4    # "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    .end local v5    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v8    # "langString":Ljava/lang/String;
    .end local v12    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v13    # "storeId":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

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
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "/customer/socialLogin/profile"

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
    .line 130
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 120
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWUpdateProfileResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWUpdateProfileResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 141
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSocialUpdateProfileRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method
