.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
.super Ljava/lang/Object;
.source "MWNotificationPreferences.java"


# instance fields
.field public appNotificationPreferences_Enabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppNotificationPreferences_Enabled"
    .end annotation
.end field

.field public appNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppNotificationPreferences_EverydayOffers"
    .end annotation
.end field

.field public appNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppNotificationPreferences_LimitedTimeOffers"
    .end annotation
.end field

.field public appNotificationPreferences_OfferExpirationOption:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppNotificationPreferences_OfferExpirationOption"
    .end annotation
.end field

.field public appNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppNotificationPreferences_PunchcardOffers"
    .end annotation
.end field

.field public appNotificationPreferences_YourOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppNotificationPreferences_YourOffers"
    .end annotation
.end field

.field public emailNotificationPreferences_Enabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmailNotificationPreferences_Enabled"
    .end annotation
.end field

.field public emailNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmailNotificationPreferences_EverydayOffers"
    .end annotation
.end field

.field public emailNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmailNotificationPreferences_LimitedTimeOffers"
    .end annotation
.end field

.field public emailNotificationPreferences_OfferExpirationOption:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmailNotificationPreferences_OfferExpirationOption"
    .end annotation
.end field

.field public emailNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmailNotificationPreferences_PunchcardOffers"
    .end annotation
.end field

.field public emailNotificationPreferences_YourOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EmailNotificationPreferences_YourOffers"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
    .locals 3
    .param p0, "preferences"    # Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;-><init>()V

    .line 35
    .local v0, "ecpPreferences":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesOfferExpirationOption()I

    move-result v1

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_OfferExpirationOption:I

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesEverydayOffers()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;

    .line 38
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesLimitedTimeOffers()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesPunchcardOffers()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_Enabled:Ljava/lang/Boolean;

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesPunchcardOffers()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_Enabled:Ljava/lang/Boolean;

    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesEverydayOffers()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesLimitedTimeOffers()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesOfferExpirationOption()I

    move-result v1

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_OfferExpirationOption:I

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getAppNotificationPreferencesYourOffers()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_YourOffers:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesYourOffers()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_YourOffers:Ljava/lang/Boolean;

    .line 57
    :cond_0
    return-object v0

    .line 43
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_Enabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_Enabled:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static toNotificationPreferences(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;)Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .locals 2
    .param p0, "preferences"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    .prologue
    .line 61
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;-><init>()V

    .line 62
    .local v0, "newPreferences":Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    if-eqz p0, :cond_0

    .line 63
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_OfferExpirationOption:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesOfferExpirationOption(I)V

    .line 64
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesEverydayOffers(Ljava/lang/Boolean;)V

    .line 65
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesLimitedTimeOffers(Ljava/lang/Boolean;)V

    .line 66
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setAppNotificationPreferencesPunchcardOffers(Ljava/lang/Boolean;)V

    .line 67
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_Enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setAppNotificationPreferencesEnabled(Ljava/lang/Boolean;)V

    .line 68
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_PunchcardOffers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesPunchcardOffers(Ljava/lang/Boolean;)V

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_Enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesEnabled(Ljava/lang/Boolean;)V

    .line 70
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_EverydayOffers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setAppNotificationPreferencesEverydayOffers(Ljava/lang/Boolean;)V

    .line 71
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_LimitedTimeOffers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setAppNotificationPreferencesLimitedTimeOffers(Ljava/lang/Boolean;)V

    .line 72
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_OfferExpirationOption:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setAppNotificationPreferencesOfferExpirationOption(I)V

    .line 73
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->appNotificationPreferences_YourOffers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setAppNotificationPreferencesYourOffers(Ljava/lang/Boolean;)V

    .line 74
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;->emailNotificationPreferences_YourOffers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesYourOffers(Ljava/lang/Boolean;)V

    .line 77
    :cond_0
    return-object v0
.end method
