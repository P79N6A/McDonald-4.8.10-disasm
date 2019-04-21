.class public Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "NotificationPreferences.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_APP_ENABLED:Ljava/lang/String; = "AppNotificationPreferences_Enabled"

.field public static final KEY_APP_EVERYDAY_OFFERS:Ljava/lang/String; = "AppNotificationPreferences_EverydayOffers"

.field public static final KEY_APP_LIMITED_TIME_OFFERS:Ljava/lang/String; = "AppNotificationPreferences_LimitedTimeOffers"

.field public static final KEY_APP_OFFER_EXPIRATION_OPTION:Ljava/lang/String; = "AppNotificationPreferences_OfferExpirationOption"

.field public static final KEY_APP_PREFIX:Ljava/lang/String; = "AppNotificationPreferences_"

.field public static final KEY_APP_PUNCHCARD_OFFERS:Ljava/lang/String; = "AppNotificationPreferences_PunchcardOffers"

.field public static final KEY_APP_YOUR_OFFERS:Ljava/lang/String; = "AppNotificationPreferences_YourOffers"

.field public static final KEY_EMAIL_ENABLED:Ljava/lang/String; = "EmailNotificationPreferences_Enabled"

.field public static final KEY_EMAIL_EVERYDAY_OFFERS:Ljava/lang/String; = "EmailNotificationPreferences_EverydayOffers"

.field public static final KEY_EMAIL_LIMITED_TIME_OFFERS:Ljava/lang/String; = "EmailNotificationPreferences_LimitedTimeOffers"

.field public static final KEY_EMAIL_OFFER_EXPIRATION_OPTION:Ljava/lang/String; = "EmailNotificationPreferences_OfferExpirationOption"

.field public static final KEY_EMAIL_PREFIX:Ljava/lang/String; = "EmailNotificationPreferences_"

.field public static final KEY_EMAIL_PUNCHCARD_OFFERS:Ljava/lang/String; = "EmailNotificationPreferences_PunchcardOffers"

.field public static final KEY_EMAIL_YOUR_OFFERS:Ljava/lang/String; = "EmailNotificationPreferences_YourOffers"

.field public static final KEY_FOOD_PREFERENCES_BREAKFAST:Ljava/lang/String; = "FoodPreferenceBreakfast"

.field public static final KEY_FOOD_PREFERENCES_CHICKEN:Ljava/lang/String; = "FoodPreferenceChicken"

.field public static final KEY_FOOD_PREFERENCES_DRINK:Ljava/lang/String; = "FoodPreferenceDrink"

.field public static final KEY_FOOD_PREFERENCES_FRY:Ljava/lang/String; = "FoodPreferenceFry"

.field public static final KEY_FOOD_PREFERENCES_HAPPY_MEAL:Ljava/lang/String; = "FoodPreferenceHappymeal"

.field public static final KEY_FOOD_PREFERENCES_SALAD:Ljava/lang/String; = "FoodPreferenceSalad"

.field public static final KEY_FOOD_PREFERENCES_SANDWICH:Ljava/lang/String; = "FoodPreferenceSandwich"

.field public static final KEY_FOOD_PREFERENCES_WRAP:Ljava/lang/String; = "FoodPreferenceWrap"

.field public static final KEY_FOOD_PREFERENCE_PREFIX:Ljava/lang/String; = "FoodPreference"

.field public static final KEY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "modules.customer.register.notificationPreferences"

.field public static final PREFERENCE_ITEM_KEY_ID:Ljava/lang/String; = "id"

.field public static final PREFERENCE_ITEM_KEY_LEGACY_ID:Ljava/lang/String; = "legacyId"

.field public static final PREFERENCE_ITEM_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final PREFERENCE_ITEM_KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mAppNotificationPreferencesOfferExpirationOption:I

.field private mEmailNotificationPreferencesOfferExpirationOption:I

.field private mPreferencesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 259
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mAppNotificationPreferencesOfferExpirationOption:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mEmailNotificationPreferencesOfferExpirationOption:I

    .line 264
    return-void
.end method

.method public static fromConfig()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;-><init>()V

    .line 74
    .local v0, "notificationPreferences":Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->updateWithConfig()V

    .line 75
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mPreferencesMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAppNotificationPreferencesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 79
    const-string v0, "AppNotificationPreferences_Enabled"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAppNotificationPreferencesEverydayOffers()Z
    .locals 1

    .prologue
    .line 87
    const-string v0, "AppNotificationPreferences_EverydayOffers"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAppNotificationPreferencesLimitedTimeOffers()Z
    .locals 1

    .prologue
    .line 95
    const-string v0, "AppNotificationPreferences_LimitedTimeOffers"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAppNotificationPreferencesOfferExpirationOption()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mAppNotificationPreferencesOfferExpirationOption:I

    return v0
.end method

.method public getAppNotificationPreferencesPunchcardOffers()Z
    .locals 1

    .prologue
    .line 111
    const-string v0, "AppNotificationPreferences_PunchcardOffers"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAppNotificationPreferencesYourOffers()Z
    .locals 1

    .prologue
    .line 119
    const-string v0, "AppNotificationPreferences_YourOffers"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 240
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmailNotificationPreferencesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 127
    const-string v0, "EmailNotificationPreferences_Enabled"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getEmailNotificationPreferencesEverydayOffers()Z
    .locals 1

    .prologue
    .line 135
    const-string v0, "EmailNotificationPreferences_EverydayOffers"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEmailNotificationPreferencesLimitedTimeOffers()Z
    .locals 1

    .prologue
    .line 143
    const-string v0, "EmailNotificationPreferences_LimitedTimeOffers"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEmailNotificationPreferencesOfferExpirationOption()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mEmailNotificationPreferencesOfferExpirationOption:I

    return v0
.end method

.method public getEmailNotificationPreferencesPunchcardOffers()Z
    .locals 1

    .prologue
    .line 159
    const-string v0, "EmailNotificationPreferences_PunchcardOffers"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEmailNotificationPreferencesYourOffers()Z
    .locals 1

    .prologue
    .line 167
    const-string v0, "EmailNotificationPreferences_YourOffers"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFoodPreferenceBreakfast()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 175
    const-string v0, "FoodPreferenceBreakfast"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFoodPreferenceChicken()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 191
    const-string v0, "FoodPreferenceChicken"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFoodPreferenceDrink()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 199
    const-string v0, "FoodPreferenceDrink"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFoodPreferenceFry()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 207
    const-string v0, "FoodPreferenceFry"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFoodPreferenceHappymeal()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 215
    const-string v0, "FoodPreferenceHappymeal"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFoodPreferenceSalad()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 223
    const-string v0, "FoodPreferenceSalad"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFoodPreferenceSandwich()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 183
    const-string v0, "FoodPreferenceSandwich"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFoodPreferenceWrap()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 231
    const-string v0, "FoodPreferenceWrap"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPreferencesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mPreferencesMap:Ljava/util/Map;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mPreferencesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mPreferencesMap:Ljava/util/Map;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mPreferencesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method public setAppNotificationPreferencesEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "appNotificationPreferencesEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 83
    const-string v0, "AppNotificationPreferences_Enabled"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    return-void
.end method

.method public setAppNotificationPreferencesEverydayOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "appNotificationPreferencesEverydayOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 91
    const-string v0, "AppNotificationPreferences_EverydayOffers"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    return-void
.end method

.method public setAppNotificationPreferencesLimitedTimeOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "appNotificationPreferencesLimitedTimeOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 99
    const-string v0, "AppNotificationPreferences_LimitedTimeOffers"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 100
    return-void
.end method

.method public setAppNotificationPreferencesOfferExpirationOption(I)V
    .locals 0
    .param p1, "appNotificationPreferencesOfferExpirationOption"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mAppNotificationPreferencesOfferExpirationOption:I

    .line 108
    return-void
.end method

.method public setAppNotificationPreferencesPunchcardOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "appNotificationPreferencesPunchcardOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 115
    const-string v0, "AppNotificationPreferences_PunchcardOffers"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 116
    return-void
.end method

.method public setAppNotificationPreferencesYourOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "appNotificationPreferencesYourOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 123
    const-string v0, "AppNotificationPreferences_YourOffers"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 124
    return-void
.end method

.method public setEmailNotificationPreferencesEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "emailNotificationPreferencesEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 131
    const-string v0, "EmailNotificationPreferences_Enabled"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    return-void
.end method

.method public setEmailNotificationPreferencesEverydayOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "emailNotificationPreferencesEverydayOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 139
    const-string v0, "EmailNotificationPreferences_EverydayOffers"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 140
    return-void
.end method

.method public setEmailNotificationPreferencesLimitedTimeOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "emailNotificationPreferencesLimitedTimeOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 147
    const-string v0, "EmailNotificationPreferences_LimitedTimeOffers"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 148
    return-void
.end method

.method public setEmailNotificationPreferencesOfferExpirationOption(I)V
    .locals 0
    .param p1, "emailNotificationPreferencesOfferExpirationOption"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mEmailNotificationPreferencesOfferExpirationOption:I

    .line 156
    return-void
.end method

.method public setEmailNotificationPreferencesPunchcardOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "emailNotificationPreferencesPunchcardOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 163
    const-string v0, "EmailNotificationPreferences_PunchcardOffers"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 164
    return-void
.end method

.method public setEmailNotificationPreferencesYourOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "emailNotificationPreferencesYourOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 171
    const-string v0, "EmailNotificationPreferences_YourOffers"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 172
    return-void
.end method

.method public setFoodPreferenceBreakfast(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "foodPreferenceBreakfast"    # Ljava/lang/Boolean;

    .prologue
    .line 179
    const-string v0, "FoodPreferenceBreakfast"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    return-void
.end method

.method public setFoodPreferenceChicken(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "foodPreferenceChicken"    # Ljava/lang/Boolean;

    .prologue
    .line 195
    const-string v0, "FoodPreferenceChicken"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 196
    return-void
.end method

.method public setFoodPreferenceDrink(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "foodPreferenceDrink"    # Ljava/lang/Boolean;

    .prologue
    .line 203
    const-string v0, "FoodPreferenceDrink"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    return-void
.end method

.method public setFoodPreferenceFry(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "foodPreferenceFry"    # Ljava/lang/Boolean;

    .prologue
    .line 211
    const-string v0, "FoodPreferenceFry"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 212
    return-void
.end method

.method public setFoodPreferenceHappymeal(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "foodPreferenceHappymeal"    # Ljava/lang/Boolean;

    .prologue
    .line 219
    const-string v0, "FoodPreferenceHappymeal"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
    return-void
.end method

.method public setFoodPreferenceSalad(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "foodPreferenceSalad"    # Ljava/lang/Boolean;

    .prologue
    .line 227
    const-string v0, "FoodPreferenceSalad"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    return-void
.end method

.method public setFoodPreferenceSandwich(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "foodPreferenceSandwich"    # Ljava/lang/Boolean;

    .prologue
    .line 187
    const-string v0, "FoodPreferenceSandwich"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    return-void
.end method

.method public setFoodPreferenceWrap(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "foodPreferenceWrap"    # Ljava/lang/Boolean;

    .prologue
    .line 235
    const-string v0, "FoodPreferenceWrap"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    return-void
.end method

.method public updateWithConfig()V
    .locals 7

    .prologue
    .line 51
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "modules.customer.register.notificationPreferences"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 53
    .local v0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 58
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 60
    .local v2, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "status"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 61
    .local v3, "value":Ljava/lang/Boolean;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 62
    .end local v2    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Boolean;
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {p0, v4, v5}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 66
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mPreferencesMap:Ljava/util/Map;

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/MapUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mPreferencesMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 268
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mAppNotificationPreferencesOfferExpirationOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->mEmailNotificationPreferencesOfferExpirationOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    return-void
.end method
