.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
.super Ljava/lang/Object;
.source "MWCustomerData.java"


# static fields
.field private static final SKIP_BIRTHDAY_DAY:Ljava/lang/String; = "interface.register.skipBirthDayDayInfo"


# instance fields
.field public addressBook:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressBook"
    .end annotation
.end field

.field public ageOfCustomerId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AgeOfCustomerID"
    .end annotation
.end field

.field public ageOfOldestOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AgeOfOldestOrder"
    .end annotation
.end field

.field public customerID:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerID"
    .end annotation
.end field

.field public customerLoginInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerLoginInformation"
    .end annotation
.end field

.field public dayOfBirth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DayOfBirth"
    .end annotation
.end field

.field public defaultPhoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DefaultPhoneNumber"
    .end annotation
.end field

.field public emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmailAddress"
    .end annotation
.end field

.field public ethnicity:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Ethnicity"
    .end annotation
.end field

.field public favorites:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Favorites"
    .end annotation
.end field

.field public firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FirstName"
    .end annotation
.end field

.field public gender:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Gender"
    .end annotation
.end field

.field public isActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isActive"
    .end annotation
.end field

.field public lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LastName"
    .end annotation
.end field

.field public loginInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loginInfo"
    .end annotation
.end field

.field public loginPreference:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LoginPreference"
    .end annotation
.end field

.field public middleName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MiddleName"
    .end annotation
.end field

.field public monthOfBirth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MonthOfBirth"
    .end annotation
.end field

.field public myLocations:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MyLocations"
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NickName"
    .end annotation
.end field

.field public notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NotificationPreferences"
    .end annotation
.end field

.field public numberOfOrders:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NumberOfOrders"
    .end annotation
.end field

.field public optInForCommunicationChannel:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OptInForCommunicationChannel"
    .end annotation
.end field

.field public optInForContests:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OptInForContests"
    .end annotation
.end field

.field public optInForOtherMarketingMessages:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OptInForOtherMarketingMessages"
    .end annotation
.end field

.field public optInForProgramChanges:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OptInForProgramChanges"
    .end annotation
.end field

.field public optInForSurveys:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OptInForSurveys"
    .end annotation
.end field

.field public optIns:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Opt-Ins"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;",
            ">;"
        }
    .end annotation
.end field

.field public password:Ljava/lang/String;

.field public paymentAccount:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentAccount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;",
            ">;"
        }
    .end annotation
.end field

.field public paymentCard:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentCard"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;",
            ">;"
        }
    .end annotation
.end field

.field public preferredLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PreferredLanguage"
    .end annotation
.end field

.field public preferredNotification:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PreferredNotification"
    .end annotation
.end field

.field public preferredOfferCategories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PreferredOfferCategories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public preferredPaymentMethodId:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PreferredPaymentMethodId"
    .end annotation
.end field

.field public receivePromotions:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReceivePromotions"
    .end annotation
.end field

.field public recentOrders:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecentOrders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public socialNetworkAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SocialNetworkAccessToken"
    .end annotation
.end field

.field public subscribedToOffers:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubscribedToOffer"
    .end annotation
.end field

.field public termOfUseAcceptanceDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TermOfUseAcceptanceDate"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Title"
    .end annotation
.end field

.field public userCategory:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserCategory"
    .end annotation
.end field

.field public userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserName"
    .end annotation
.end field

.field public yearOfBirth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "YearOfBirth"
    .end annotation
.end field

.field public zipCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ZipCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optIns:Ljava/util/List;

    return-void
.end method

.method public static fromCustomer(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    .locals 11
    .param p0, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 114
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;-><init>()V

    .line 116
    .local v0, "data":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    if-eqz p0, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->customerID:J

    .line 118
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->userName:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->password:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->firstName:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->middleName:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->lastName:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->emailAddress:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNickName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->nickName:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    :goto_0
    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->defaultPhoneNumber:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->zipCode:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->gender:Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAgeOfCustomerId()I

    move-result v5

    iput v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->ageOfCustomerId:I

    .line 129
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAgeOfOldestOrder()I

    move-result v5

    iput v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->ageOfOldestOrder:I

    .line 130
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNumberOfOrders()I

    move-result v5

    iput v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->numberOfOrders:I

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->dayOfBirth:Ljava/lang/Integer;

    .line 134
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->monthOfBirth:Ljava/lang/Integer;

    .line 135
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->yearOfBirth:Ljava/lang/Integer;

    .line 139
    :cond_0
    iput v10, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->preferredNotification:I

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentCard:Ljava/util/List;

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentAccount:Ljava/util/List;

    .line 142
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredOfferCategories()Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->preferredOfferCategories:Ljava/util/List;

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->fromNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    .line 144
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v5

    iput-boolean v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->subscribedToOffers:Z

    .line 145
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isReceivePromotions()Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->receivePromotions:Z

    .line 146
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForCommunicationChannel()Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForCommunicationChannel:Ljava/lang/Boolean;

    .line 147
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForContests()Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForContests:Ljava/lang/Boolean;

    .line 148
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForOtherMarketingMessages()Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForOtherMarketingMessages:Ljava/lang/Boolean;

    .line 149
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForProgramChanges()Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForProgramChanges:Ljava/lang/Boolean;

    .line 150
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForSurveys()Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForSurveys:Ljava/lang/Boolean;

    .line 152
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->fromCustomerLoginInfo(Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->customerLoginInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v5

    iput v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->loginPreference:I

    .line 159
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;-><init>()V

    .line 160
    .local v2, "loginInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    iput v10, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->loginType:I

    .line 163
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v5

    iput v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->socialNetworkID:I

    .line 164
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->accessToken:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->internalID:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->userName:Ljava/lang/String;

    .line 167
    const-string v5, ""

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->emailAddress:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->mobileNumber:Ljava/lang/String;

    .line 177
    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->isActive:Ljava/lang/Boolean;

    .line 184
    :goto_3
    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->loginInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v4, "optInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptIns()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 188
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptIns()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/OptIn;

    .line 189
    .local v1, "in":Lcom/mcdonalds/sdk/modules/customer/OptIn;
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;-><init>()V

    .line 190
    .local v3, "optIn":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/OptIn;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->setType(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/OptIn;->getStatus()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->setStatus(Ljava/lang/Boolean;)V

    .line 193
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 125
    .end local v1    # "in":Lcom/mcdonalds/sdk/modules/customer/OptIn;
    .end local v2    # "loginInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;
    .end local v3    # "optIn":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;
    .end local v4    # "optInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isReceivePromotions()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto/16 :goto_1

    .line 170
    .restart local v2    # "loginInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;
    :cond_4
    iput v10, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->loginType:I

    .line 171
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v5

    iput v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->socialNetworkID:I

    .line 172
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->accessToken:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->internalID:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->userName:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->emailAddress:Ljava/lang/String;

    goto :goto_2

    .line 179
    :cond_5
    iput v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->loginType:I

    .line 180
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->userName:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->emailAddress:Ljava/lang/String;

    goto :goto_3

    .line 196
    .restart local v4    # "optInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;>;"
    :cond_6
    iput-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optIns:Ljava/util/List;

    .line 197
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getTermsAndConditionAcceptanceDate()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->termOfUseAcceptanceDate:Ljava/lang/String;

    .line 200
    .end local v2    # "loginInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;
    .end local v4    # "optInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;>;"
    :cond_7
    return-object v0
.end method

.method public static toCustomer(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 15
    .param p0, "data"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 204
    new-instance v4, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 206
    .local v4, "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz p0, :cond_8

    .line 207
    iget-wide v10, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->customerID:J

    invoke-virtual {v4, v10, v11}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setCustomerId(J)V

    .line 208
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->userName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 209
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 210
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->middleName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMiddleName(Ljava/lang/String;)V

    .line 211
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 212
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->emailAddress:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 213
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->nickName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNickName(Ljava/lang/String;)V

    .line 214
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->defaultPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 215
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->zipCode:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setZipCode(Ljava/lang/String;)V

    .line 216
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->preferredOfferCategories:Ljava/util/List;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredOfferCategories(Ljava/util/List;)V

    .line 217
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->notificationPreferences:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    invoke-static {v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->toNotificationPreferences(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;)Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)V

    .line 218
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForCommunicationChannel:Ljava/lang/Boolean;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForCommunicationChannel(Ljava/lang/Boolean;)V

    .line 219
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForContests:Ljava/lang/Boolean;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForContests(Ljava/lang/Boolean;)V

    .line 220
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForOtherMarketingMessages:Ljava/lang/Boolean;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForOtherMarketingMessages(Ljava/lang/Boolean;)V

    .line 221
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForProgramChanges:Ljava/lang/Boolean;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForProgramChanges(Ljava/lang/Boolean;)V

    .line 222
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optInForSurveys:Ljava/lang/Boolean;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForSurveys(Ljava/lang/Boolean;)V

    .line 223
    iget v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->loginPreference:I

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLoginPreference(I)V

    .line 224
    iget v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->preferredNotification:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredNotification(Ljava/lang/Integer;)V

    .line 225
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->socialNetworkAccessToken:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.register.skipBirthDayDayInfo"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 227
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->monthOfBirth:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->yearOfBirth:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 228
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 229
    .local v1, "birthDate":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 230
    invoke-virtual {v1, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 231
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->monthOfBirth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 232
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->yearOfBirth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 234
    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 247
    .end local v1    # "birthDate":Ljava/util/Calendar;
    :cond_0
    :goto_0
    iget v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->ageOfCustomerId:I

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setAgeOfCustomerId(I)V

    .line 248
    iget v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->ageOfOldestOrder:I

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setAgeOfOldestOrder(I)V

    .line 249
    iget v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->numberOfOrders:I

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNumberOfOrders(I)V

    .line 251
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->dayOfBirth:Ljava/lang/Integer;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->monthOfBirth:Ljava/lang/Integer;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->yearOfBirth:Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 253
    .restart local v1    # "birthDate":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 254
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->dayOfBirth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v14, v9}, Ljava/util/Calendar;->set(II)V

    .line 255
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->monthOfBirth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 256
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->yearOfBirth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 261
    .end local v1    # "birthDate":Ljava/util/Calendar;
    :cond_1
    iget-boolean v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->subscribedToOffers:Z

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSubscribedToOffers(Z)V

    .line 262
    iget-boolean v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->receivePromotions:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setReceivePromotions(Ljava/lang/Boolean;)V

    .line 263
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setCardItems(Ljava/util/List;)V

    .line 265
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->customerLoginInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;

    if-eqz v9, :cond_2

    .line 266
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->customerLoginInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->toCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setCustomerLoginInfo(Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;)V

    .line 269
    :cond_2
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentCard:Ljava/util/List;

    if-eqz v9, :cond_5

    .line 270
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentCard:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    .line 271
    .local v3, "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->toPaymentCard(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v2

    .line 272
    .local v2, "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    if-eqz v2, :cond_3

    .line 273
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    .end local v2    # "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .end local v3    # "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    :cond_4
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->dayOfBirth:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->monthOfBirth:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->yearOfBirth:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 239
    .restart local v1    # "birthDate":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 240
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->dayOfBirth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v14, v9}, Ljava/util/Calendar;->set(II)V

    .line 241
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->monthOfBirth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 242
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->yearOfBirth:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 244
    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    goto/16 :goto_0

    .line 278
    .end local v1    # "birthDate":Ljava/util/Calendar;
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setAccountItems(Ljava/util/List;)V

    .line 279
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentAccount:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 280
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->paymentAccount:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;

    .line 281
    .local v0, "account":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->toCustomerPaymentAccount(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;)Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;

    move-result-object v6

    .line 282
    .local v6, "newAccount":Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAccountItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 286
    .end local v0    # "account":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;
    .end local v6    # "newAccount":Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v8, "optInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/customer/OptIn;>;"
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optIns:Ljava/util/List;

    invoke-static {v9}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 288
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->optIns:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;

    .line 289
    .local v5, "mwOptIn":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;
    new-instance v7, Lcom/mcdonalds/sdk/modules/customer/OptIn;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/customer/OptIn;-><init>()V

    .line 290
    .local v7, "optIn":Lcom/mcdonalds/sdk/modules/customer/OptIn;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->getStatus()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mcdonalds/sdk/modules/customer/OptIn;->setStatus(Ljava/lang/Boolean;)V

    .line 291
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mcdonalds/sdk/modules/customer/OptIn;->setType(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->getAcceptanceTimestamp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mcdonalds/sdk/modules/customer/OptIn;->setAcceptanceTimestamp(Ljava/lang/String;)V

    .line 294
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 297
    .end local v5    # "mwOptIn":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;
    .end local v7    # "optIn":Lcom/mcdonalds/sdk/modules/customer/OptIn;
    :cond_7
    invoke-virtual {v4, v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptIns(Ljava/util/List;)V

    .line 298
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->termOfUseAcceptanceDate:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setTermsAndConditionAcceptanceDate(Ljava/lang/String;)V

    .line 301
    .end local v8    # "optInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/customer/OptIn;>;"
    :cond_8
    return-object v4
.end method
