.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWUpdateProfileRequest.java"


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
.field private static final SKIP_BIRTHDAY_DAY:Ljava/lang/String; = "interface.register.skipBirthDayDayInfo"

.field private static final URL_PATH:Ljava/lang/String; = "/customer/profile"


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
    .line 39
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 24
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 43
    invoke-virtual/range {p0 .. p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v14

    .line 47
    .local v14, "paymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v5, "customerCardDataList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;>;"
    if-eqz v14, :cond_1

    .line 49
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "size":I
    :goto_0
    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 51
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 52
    .local v13, "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-static {v13}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->toMWPaymentCardData(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    move-result-object v4

    .line 54
    .local v4, "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    if-eqz v4, :cond_0

    .line 55
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isValid:Ljava/lang/Boolean;

    .line 58
    :cond_0
    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->fromPaymentCardData(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;

    move-result-object v7

    .line 60
    .local v7, "ecpCustomerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 64
    .end local v4    # "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    .end local v7    # "ecpCustomerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    .end local v8    # "i":I
    .end local v13    # "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .end local v16    # "size":I
    :cond_1
    new-instance v20, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct/range {v20 .. v20}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string/jumbo v21, "userName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNewUserName()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_7

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "newUserName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "password"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "firstName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string v11, "-"

    .line 75
    .local v11, "lastName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "lastName"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "middleName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "nickName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNickName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "mobileNumber"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "emailAddress"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "receivePromotions"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "customerId"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string/jumbo v21, "yearOfBirth"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getYearOfBirth()Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "monthOfBirth"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMonthOfBirth()Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "MSAlarmEnabled"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->ismMSAlarmEnabled()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v20

    const-string v21, "interface.register.skipBirthDayDayInfo"

    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "dayOfBirth"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getDayOfBirth()Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "cardItems"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "isPrivacyPolicyAccepted"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "isTermsOfUseAccepted"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string/jumbo v21, "zipCode"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "subscribedToOffer"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "optInForCommunicationChannel"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForCommunicationChannel()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "optInForSurveys"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForSurveys()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "optInForProgramChanges"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForProgramChanges()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "optInForContests"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForContests()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "optInForOtherMarketingMessages"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForOtherMarketingMessages()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "notificationPreferences"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->fromNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "preferredOfferCategories"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredOfferCategories()Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v21, v0

    const-string v22, "preferredNotification"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredNotification()Ljava/lang/Integer;

    move-result-object v20

    if-eqz v20, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredNotification()Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    :goto_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "languages":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "PreferredLanguage"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v20

    if-eqz v20, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "loginPreference"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "source"

    const-string v22, "GMA"

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v18, ""

    .line 112
    .local v18, "storeId":Ljava/lang/String;
    const-string v20, "customer"

    invoke-static/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 113
    .local v6, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getNearByStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v17

    .line 114
    .local v17, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v17, :cond_4

    .line 115
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v17

    .line 117
    :cond_4
    if-eqz v17, :cond_5

    .line 118
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 120
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "restaurantId"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v20, "notification"

    invoke-static/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;

    .line 123
    .local v12, "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    if-eqz v12, :cond_6

    .line 124
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->getRegistrationId()Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "registrationId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "deviceToken"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "deviceId"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v15    # "registrationId":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "socialNetworkProvider"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialProvider()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "language":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "systemLanguage"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "systemVersion"

    sget-object v22, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/mcdonalds/sdk/utils/DateUtils;->timeZoneForNotificationCall()Ljava/lang/String;

    move-result-object v19

    .line 137
    .local v19, "timeZone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "timeZone"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "systemName"

    const-string v22, "Android"

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "title"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "gender"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "sourceProgram"

    const-string v22, "GMA"

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "deviceBuildId"

    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string/jumbo v21, "userKey"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string/jumbo v21, "uuid"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "deviceName"

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "deviceBrand"

    sget-object v22, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "deviceManufacturer"

    sget-object v22, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "mobilePhone"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "Opt-Ins"

    invoke-static/range {p2 .. p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->fromCustomer(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optIns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void

    .line 69
    .end local v6    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v9    # "language":Ljava/lang/String;
    .end local v10    # "languages":Ljava/lang/String;
    .end local v11    # "lastName":Ljava/lang/String;
    .end local v12    # "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    .end local v17    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v18    # "storeId":Ljava/lang/String;
    .end local v19    # "timeZone":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    move-object/from16 v20, v0

    const-string v21, "newUserName"

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNewUserName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 74
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 101
    .restart local v11    # "lastName":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

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
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "/customer/profile"

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
    .line 171
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 161
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
    .line 186
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWUpdateProfileResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 182
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdateProfileRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method
