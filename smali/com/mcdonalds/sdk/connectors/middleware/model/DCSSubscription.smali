.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
.super Ljava/lang/Object;
.source "DCSSubscription.java"


# static fields
.field public static final DESCRIPTION_EMAIL_NOTIFICATION:Ljava/lang/String; = "EmailNotificationEnabled"

.field public static final DESCRIPTION_MOBILE_NOTIFICATION:Ljava/lang/String; = "MobileNotificationEnabled"

.field public static final DESCRIPTION_OFFER_PROGRAM:Ljava/lang/String; = "OfferProgram"

.field public static final DESCRIPTION_OPT_IN_COMMUNICATION_CHANNEL:Ljava/lang/String; = "CommunicationChannel"

.field public static final DESCRIPTION_OPT_IN_CONTESTS:Ljava/lang/String; = "Contests"

.field public static final DESCRIPTION_OPT_IN_OTHER_MARKETING_MESSAGES:Ljava/lang/String; = "OtherMarketingMessages"

.field public static final DESCRIPTION_OPT_IN_PROGRAM_CHANGES:Ljava/lang/String; = "ProgramChanges"

.field public static final DESCRIPTION_OPT_IN_SURVEYS:Ljava/lang/String; = "Surveys"

.field public static final ID_EMAIL_NOTIFICATION:Ljava/lang/String; = "10"

.field public static final ID_MOBILE_NOTIFICATION:Ljava/lang/String; = "11"

.field public static final ID_OFFER_PROGRAM:Ljava/lang/String; = "7"

.field public static final ID_OPT_IN_COMMUNICATION_CHANNEL:Ljava/lang/String; = "1"

.field public static final ID_OPT_IN_CONTESTS:Ljava/lang/String; = "4"

.field public static final ID_OPT_IN_OTHER_MARKETING_MESSAGES:Ljava/lang/String; = "5"

.field public static final ID_OPT_IN_PROGRAM_CHANGES:Ljava/lang/String; = "3"

.field public static final ID_OPT_IN_SURVEYS:Ljava/lang/String; = "2"

.field public static final LEGACY_ID_EMAIL_NOTIFICATION:Ljava/lang/String; = "5"

.field public static final LEGACY_ID_MOBILE_NOTIFICATION:Ljava/lang/String; = "5"

.field public static final LEGACY_ID_OFFER_PROGRAM:Ljava/lang/String; = "2"

.field public static final LEGACY_ID_OPT_IN_COMMUNICATION_CHANNEL:Ljava/lang/String; = "1"

.field public static final LEGACY_ID_OPT_IN_CONTESTS:Ljava/lang/String; = "4"

.field public static final LEGACY_ID_OPT_IN_OTHER_MARKETING_MESSAGES:Ljava/lang/String; = "5"

.field public static final LEGACY_ID_OPT_IN_PROGRAM_CHANGES:Ljava/lang/String; = "3"

.field public static final LEGACY_ID_OPT_IN_SURVEYS:Ljava/lang/String; = "2"

.field public static final LEGACY_TYPE_OPT_IN:Ljava/lang/String; = "optin"

.field public static final LEGACY_TYPE_PREF:Ljava/lang/String; = "pref"

.field public static final LEGACY_TYPE_SUB:Ljava/lang/String; = "sub"


# instance fields
.field public channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channelId"
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field public legacyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legacyId"
    .end annotation
.end field

.field public legacyType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legacyType"
    .end annotation
.end field

.field public optInDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optInDate"
    .end annotation
.end field

.field public optInStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optInStatus"
    .end annotation
.end field

.field public optOutDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optOutDate"
    .end annotation
.end field

.field public optOutReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optOutReason"
    .end annotation
.end field

.field public sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceId"
    .end annotation
.end field

.field public subscriptionDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscriptionDesc"
    .end annotation
.end field

.field public subscriptionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscriptionId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSubscriptionList(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Ljava/util/List;
    .locals 14
    .param p0, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "dcsSubscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForCommunicationChannel()Ljava/lang/Boolean;

    move-result-object v6

    .line 91
    .local v6, "optInCommunicationsChannel":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    .line 92
    new-instance v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    invoke-direct {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;-><init>()V

    .line 93
    .local v12, "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    const-string v13, "1"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    .line 94
    const-string v13, "CommunicationChannel"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    .line 95
    const-string v13, "1"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    .line 96
    const-string v13, "optin"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    .line 97
    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    .line 98
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForSurveys()Ljava/lang/Boolean;

    move-result-object v10

    .line 101
    .local v10, "optInSurveys":Ljava/lang/Boolean;
    if-eqz v10, :cond_1

    .line 102
    new-instance v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    invoke-direct {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;-><init>()V

    .line 103
    .restart local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    const-string v13, "2"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    .line 104
    const-string v13, "Surveys"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    .line 105
    const-string v13, "2"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    .line 106
    const-string v13, "optin"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    .line 107
    invoke-static {v10}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    .line 108
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForProgramChanges()Ljava/lang/Boolean;

    move-result-object v9

    .line 111
    .local v9, "optInProgramChanges":Ljava/lang/Boolean;
    if-eqz v9, :cond_2

    .line 112
    new-instance v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    invoke-direct {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;-><init>()V

    .line 113
    .restart local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    const-string v13, "3"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    .line 114
    const-string v13, "ProgramChanges"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    .line 115
    const-string v13, "3"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    .line 116
    const-string v13, "optin"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    .line 117
    invoke-static {v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    .line 118
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForContests()Ljava/lang/Boolean;

    move-result-object v7

    .line 121
    .local v7, "optInContests":Ljava/lang/Boolean;
    if-eqz v7, :cond_3

    .line 122
    new-instance v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    invoke-direct {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;-><init>()V

    .line 123
    .restart local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    const-string v13, "4"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    .line 124
    const-string v13, "Contests"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    .line 125
    const-string v13, "4"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    .line 126
    const-string v13, "optin"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    .line 127
    invoke-static {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    .line 128
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getOptInForContests()Ljava/lang/Boolean;

    move-result-object v8

    .line 131
    .local v8, "optInOtherMarketMessages":Ljava/lang/Boolean;
    if-eqz v8, :cond_4

    .line 132
    new-instance v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    invoke-direct {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;-><init>()V

    .line 133
    .restart local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    const-string v13, "5"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    .line 134
    const-string v13, "OtherMarketingMessages"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    .line 135
    const-string v13, "5"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    .line 136
    const-string v13, "optin"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    .line 137
    invoke-static {v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    .line 138
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSubscribedToOffers()Ljava/lang/Boolean;

    move-result-object v11

    .line 141
    .local v11, "subscribedToOffers":Ljava/lang/Boolean;
    if-eqz v11, :cond_5

    .line 142
    new-instance v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    invoke-direct {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;-><init>()V

    .line 143
    .restart local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    const-string v13, "7"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    .line 144
    const-string v13, "OfferProgram"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    .line 145
    const-string v13, "2"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    .line 146
    const-string v13, "sub"

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    .line 147
    invoke-static {v11}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    .line 148
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v12    # "subscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v5

    .line 152
    .local v5, "notificationPreferences":Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    if-eqz v5, :cond_7

    .line 153
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    .line 154
    .local v1, "appNotificationsEnabled":Ljava/lang/Boolean;
    if-eqz v1, :cond_6

    .line 155
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;-><init>()V

    .line 156
    .local v0, "appNotificationSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    const-string v13, "11"

    iput-object v13, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    .line 157
    const-string v13, "MobileNotificationEnabled"

    iput-object v13, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    .line 158
    const-string v13, "5"

    iput-object v13, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    .line 159
    const-string v13, "pref"

    iput-object v13, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    .line 160
    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    .line 161
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v0    # "appNotificationSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_6
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesEnabled()Ljava/lang/Boolean;

    move-result-object v3

    .line 165
    .local v3, "emailNotificationsEnabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_7

    .line 166
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;-><init>()V

    .line 167
    .local v4, "emailNotificationsSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    const-string v13, "10"

    iput-object v13, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    .line 168
    const-string v13, "EmailNotificationEnabled"

    iput-object v13, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    .line 169
    const-string v13, "5"

    iput-object v13, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    .line 170
    const-string v13, "pref"

    iput-object v13, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    .line 171
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    .line 172
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v1    # "appNotificationsEnabled":Ljava/lang/Boolean;
    .end local v3    # "emailNotificationsEnabled":Ljava/lang/Boolean;
    .end local v4    # "emailNotificationsSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_7
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 183
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    .line 185
    .local v0, "that":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->sourceId:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->sourceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->sourceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    :cond_4
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    :cond_5
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    :cond_6
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->channelId:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->channelId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->channelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    :cond_7
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->deviceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    :cond_8
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    :cond_9
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInDate:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    :cond_a
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutDate:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    :cond_b
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutReason:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutReason:Ljava/lang/String;

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_c
    :goto_1
    move v2, v1

    goto/16 :goto_0

    .line 185
    :cond_d
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->sourceId:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 187
    :cond_e
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 189
    :cond_f
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 191
    :cond_10
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto/16 :goto_0

    .line 193
    :cond_11
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto/16 :goto_0

    .line 195
    :cond_12
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->channelId:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto/16 :goto_0

    .line 197
    :cond_13
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto/16 :goto_0

    .line 199
    :cond_14
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    if-eqz v3, :cond_9

    goto/16 :goto_0

    .line 201
    :cond_15
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInDate:Ljava/lang/String;

    if-eqz v3, :cond_a

    goto/16 :goto_0

    .line 203
    :cond_16
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutDate:Ljava/lang/String;

    if-eqz v3, :cond_b

    goto/16 :goto_0

    .line 205
    :cond_17
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutReason:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->sourceId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->sourceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 212
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 213
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionDesc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 214
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 215
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->legacyType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 216
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->channelId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->channelId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 217
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->deviceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 218
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 219
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInDate:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInDate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 220
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutDate:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutDate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 221
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutReason:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optOutReason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 222
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 211
    goto/16 :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 212
    goto/16 :goto_1

    :cond_3
    move v2, v1

    .line 213
    goto :goto_2

    :cond_4
    move v2, v1

    .line 214
    goto :goto_3

    :cond_5
    move v2, v1

    .line 215
    goto :goto_4

    :cond_6
    move v2, v1

    .line 216
    goto :goto_5

    :cond_7
    move v2, v1

    .line 217
    goto :goto_6

    :cond_8
    move v2, v1

    .line 218
    goto :goto_7

    :cond_9
    move v2, v1

    .line 219
    goto :goto_8

    :cond_a
    move v2, v1

    .line 220
    goto :goto_9
.end method
