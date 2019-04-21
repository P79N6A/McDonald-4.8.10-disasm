.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
.super Ljava/lang/Object;
.source "DCSPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_SOURCE_ID:Ljava/lang/String; = "MOT"

.field public static final DESC_EVERYDAY_OFFERS:Ljava/lang/String; = "EverydayOffers"

.field public static final DESC_FOOD_PREFERENCE_BREAKFAST:Ljava/lang/String; = "FoodPreferenceBreakfast"

.field public static final DESC_FOOD_PREFERENCE_CHICKEN:Ljava/lang/String; = "FoodPreferenceChicken"

.field public static final DESC_FOOD_PREFERENCE_DRINK:Ljava/lang/String; = "FoodPreferenceDrink"

.field public static final DESC_FOOD_PREFERENCE_FRY:Ljava/lang/String; = "FoodPreferenceFry"

.field public static final DESC_FOOD_PREFERENCE_HAPPYMEAL:Ljava/lang/String; = "FoodPreferenceHappymeal"

.field public static final DESC_FOOD_PREFERENCE_SALAD:Ljava/lang/String; = "FoodPreferenceSalad"

.field public static final DESC_FOOD_PREFERENCE_SANDWICH:Ljava/lang/String; = "FoodPreferenceSandwich"

.field public static final DESC_FOOD_PREFERENCE_WRAP:Ljava/lang/String; = "FoodPreferenceWrap"

.field public static final DESC_LIMITED_TIME_OFFERS:Ljava/lang/String; = "LimitedTimeOffers"

.field public static final DESC_OFFER_EXPIRATION_OPTION:Ljava/lang/String; = "OfferExpirationOption"

.field public static final DESC_PREFERRED_LANGUAGE:Ljava/lang/String; = "PreferredLanguage"

.field public static final DESC_PREFERRED_NOTIFICATION:Ljava/lang/String; = "PreferredNotification"

.field public static final DESC_PREFERRED_OFFER_CATEGORIES:Ljava/lang/String; = "PreferredOfferCategory"

.field public static final DESC_PUNCH_CARD_OFFERS:Ljava/lang/String; = "PunchcardOffers"

.field public static final DESC_RECEIVE_PROMOTIONS:Ljava/lang/String; = "DoesAcceptPromotion"

.field public static final DESC_YOUR_OFFERS:Ljava/lang/String; = "YourOffers"

.field public static final ECP_LEGACY_STATUS_DISABLED:Ljava/lang/String; = "False"

.field public static final ECP_LEGACY_STATUS_ENABLED:Ljava/lang/String; = "True"

.field public static final ID_EVERYDAY_OFFERS:Ljava/lang/String; = "9"

.field public static final ID_FOOD_PREFERENCE_BREAKFAST:Ljava/lang/String; = "12"

.field public static final ID_FOOD_PREFERENCE_CHICKEN:Ljava/lang/String; = "14"

.field public static final ID_FOOD_PREFERENCE_DRINK:Ljava/lang/String; = "15"

.field public static final ID_FOOD_PREFERENCE_FRY:Ljava/lang/String; = "16"

.field public static final ID_FOOD_PREFERENCE_HAPPYMEAL:Ljava/lang/String; = "17"

.field public static final ID_FOOD_PREFERENCE_SALAD:Ljava/lang/String; = "19"

.field public static final ID_FOOD_PREFERENCE_SANDWICH:Ljava/lang/String; = "13"

.field public static final ID_FOOD_PREFERENCE_WRAP:Ljava/lang/String; = "21"

.field public static final ID_LIMITED_TIME_OFFERS:Ljava/lang/String; = "7"

.field private static final ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID_OFFER_EXPIRATION_OPTION:Ljava/lang/String; = "10"

.field public static final ID_PREFERRED_LANGUAGE:Ljava/lang/String; = "1"

.field public static final ID_PREFERRED_NOTIFICATION:Ljava/lang/String; = "3"

.field public static final ID_PREFERRED_OFFER_CATEGORIES:Ljava/lang/String; = "18"

.field public static final ID_PUNCH_CARD_OFFERS:Ljava/lang/String; = "8"

.field public static final ID_RECEIVE_PROMOTIONS:Ljava/lang/String; = "2"

.field public static final ID_YOUR_OFFERS:Ljava/lang/String; = "6"

.field public static final LEGACY_ID_EVERYDAY_OFFERS:Ljava/lang/String; = "9"

.field public static final LEGACY_ID_LIMITED_TIME_OFFERS:Ljava/lang/String; = "7"

.field private static final LEGACY_ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEGACY_ID_OFFER_EXPIRATION_OPTION:Ljava/lang/String; = "10"

.field public static final LEGACY_ID_PREFERRED_LANGUAGE:Ljava/lang/String; = "1"

.field public static final LEGACY_ID_PREFERRED_NOTIFICATION:Ljava/lang/String; = "3"

.field public static final LEGACY_ID_PREFERRED_OFFER_CATEGORIES:Ljava/lang/String; = "18"

.field public static final LEGACY_ID_PUNCH_CARD_OFFERS:Ljava/lang/String; = "8"

.field public static final LEGACY_ID_RECEIVE_PROMOTIONS:Ljava/lang/String; = "2"

.field public static final LEGACY_ID_YOUR_OFFERS:Ljava/lang/String; = "6"

.field public static final PREFERRED_NOTIFICATION_BY_EMAIL:Ljava/lang/String; = "ByEmail"

.field public static final PREFERRED_NOTIFICATION_BY_EMAIL_INT:I = 0x1

.field public static final PREFERRED_NOTIFICATION_BY_SMS:Ljava/lang/String; = "BySMS"

.field public static final PREFERRED_NOTIFICATION_BY_SMS_INT:I = 0x2

.field public static final TYPE_ECP_LEGACY:Ljava/lang/String; = "ecpLegacy"

.field public static final TYPE_FOOD_PREFERENCE:Ljava/lang/String; = "FoodPreference"

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation
.end field

.field public isActive:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isActive"
    .end annotation
.end field

.field public preferenceDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preferenceDesc"
    .end annotation
.end field

.field public preferenceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preferenceId"
    .end annotation
.end field

.field public sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceId"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->ID_MAP:Ljava/util/Map;

    .line 114
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$2;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$2;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->LEGACY_ID_MAP:Ljava/util/Map;

    .line 121
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOrUpdateLegacyPreference(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefixToReplace"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "dcsPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    const-string v4, ""

    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "sanitizedKey":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const/4 v2, 0x0

    .line 404
    .local v2, "exists":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    .line 405
    .local v0, "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    instance-of v5, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceDesc:Ljava/lang/String;

    .line 406
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 407
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;

    .line 408
    .local v1, "dcsPreferenceDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;
    const-string v4, "AppNotificationPreferences_"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 409
    invoke-static {p3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getECPLegacyStatus(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->mobileApp:Ljava/lang/String;

    .line 413
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 418
    .end local v0    # "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .end local v1    # "dcsPreferenceDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;
    :cond_4
    if-nez v2, :cond_0

    .line 419
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;-><init>()V

    .line 420
    .restart local v1    # "dcsPreferenceDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->legacyIdForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->legacyId:Ljava/lang/String;

    .line 422
    const-string v4, "AppNotificationPreferences_"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 423
    invoke-static {p3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getECPLegacyStatus(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->mobileApp:Ljava/lang/String;

    .line 427
    :cond_5
    :goto_2
    const-string v4, "Y"

    .line 429
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->idForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 431
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->typeForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 427
    invoke-static {v4, v5, v3, v6, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v0

    .line 434
    .restart local v0    # "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_6
    const-string v4, "EmailNotificationPreferences_"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 411
    invoke-static {p3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getECPLegacyStatus(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->email:Ljava/lang/String;

    goto :goto_1

    .line 424
    .end local v0    # "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    :cond_7
    const-string v4, "EmailNotificationPreferences_"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 425
    invoke-static {p3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getECPLegacyStatus(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->email:Ljava/lang/String;

    goto :goto_2
.end method

.method public static booleanFromLegacyStatus(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p0, :cond_0

    const-string v0, "True"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFoodPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .locals 2
    .param p0, "isActive"    # Ljava/lang/String;
    .param p1, "preferenceId"    # Ljava/lang/String;
    .param p2, "preferenceDescription"    # Ljava/lang/String;
    .param p3, "enabled"    # Ljava/lang/String;

    .prologue
    .line 251
    if-nez p3, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 256
    :goto_0
    return-object v1

    .line 254
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;-><init>()V

    .line 255
    .local v0, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
    iput-object p3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->enabled:Ljava/lang/String;

    .line 256
    const-string v1, "FoodPreference"

    invoke-static {p0, p1, p2, v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v1

    goto :goto_0
.end method

.method public static createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .locals 1
    .param p0, "isActive"    # Ljava/lang/String;
    .param p1, "preferenceId"    # Ljava/lang/String;
    .param p2, "preferenceDescription"    # Ljava/lang/String;
    .param p3, "details"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    .prologue
    .line 240
    const-string v0, "ecpLegacy"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v0

    return-object v0
.end method

.method public static createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .locals 6
    .param p0, "isActive"    # Ljava/lang/String;
    .param p1, "preferenceId"    # Ljava/lang/String;
    .param p2, "preferenceDescription"    # Ljava/lang/String;
    .param p3, "legacyId"    # Ljava/lang/String;
    .param p4, "emailValue"    # Ljava/lang/Boolean;
    .param p5, "mobileAppValue"    # Ljava/lang/Boolean;

    .prologue
    .line 207
    .line 212
    invoke-static {p4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getECPLegacyStatus(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-static {p5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getECPLegacyStatus(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 207
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v0

    return-object v0
.end method

.method public static createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .locals 2
    .param p0, "isActive"    # Ljava/lang/String;
    .param p1, "preferenceId"    # Ljava/lang/String;
    .param p2, "preferenceDescription"    # Ljava/lang/String;
    .param p3, "legacyId"    # Ljava/lang/String;
    .param p4, "emailValue"    # Ljava/lang/String;
    .param p5, "mobileAppValue"    # Ljava/lang/String;

    .prologue
    .line 223
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    .line 227
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;-><init>()V

    .line 229
    .local v0, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;
    iput-object p3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->legacyId:Ljava/lang/String;

    .line 230
    iput-object p4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->email:Ljava/lang/String;

    .line 231
    iput-object p5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->mobileApp:Ljava/lang/String;

    .line 233
    invoke-static {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v1

    goto :goto_0
.end method

.method public static createPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .locals 2
    .param p0, "isActive"    # Ljava/lang/String;
    .param p1, "preferenceId"    # Ljava/lang/String;
    .param p2, "preferenceDescription"    # Ljava/lang/String;
    .param p3, "preferenceType"    # Ljava/lang/String;
    .param p4, "details"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    .prologue
    .line 268
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;-><init>()V

    .line 269
    .local v0, "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    iput-object p0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->isActive:Ljava/lang/String;

    .line 270
    iput-object p1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceId:Ljava/lang/String;

    .line 271
    iput-object p2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceDesc:Ljava/lang/String;

    .line 272
    iput-object p3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->type:Ljava/lang/String;

    .line 273
    const-string v1, "MOT"

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->sourceId:Ljava/lang/String;

    .line 274
    iput-object p4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    .line 276
    return-object v0
.end method

.method static createPreferenceList(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Ljava/util/List;
    .locals 35
    .param p0, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v23, "dcsPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v27

    .line 284
    .local v27, "locale":Ljava/util/Locale;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "langString":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 289
    :cond_0
    const-string v3, "Y"

    const-string v4, "1"

    const-string v5, "PreferredLanguage"

    const-string v6, "1"

    move-object v8, v7

    invoke-static/range {v3 .. v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v19

    .line 297
    .local v19, "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    if-eqz v19, :cond_1

    .line 298
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v7    # "langString":Ljava/lang/String;
    .end local v19    # "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .end local v27    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getReceivePromotions()Ljava/lang/Boolean;

    move-result-object v12

    .line 304
    .local v12, "receivePromotions":Ljava/lang/Boolean;
    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    const-string v10, "DoesAcceptPromotion"

    const-string v11, "2"

    move-object v13, v12

    .line 303
    invoke-static/range {v8 .. v13}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v21

    .line 311
    .local v21, "dcsPreferenceReceivePromotions":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    if-eqz v21, :cond_2

    .line 312
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredNotification()Ljava/lang/Integer;

    move-result-object v30

    .line 316
    .local v30, "preferredNotification":Ljava/lang/Integer;
    invoke-static/range {v30 .. v30}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferredNotificationFromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v17

    .line 318
    .local v17, "option":Ljava/lang/String;
    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    const-string v15, "PreferredNotification"

    const-string v16, "3"

    move-object/from16 v18, v17

    .line 317
    invoke-static/range {v13 .. v18}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v20

    .line 325
    .local v20, "dcsPreferencePreferredNotification":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    if-eqz v20, :cond_3

    .line 326
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredOfferCategories()Ljava/util/List;

    move-result-object v31

    .line 330
    .local v31, "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v31, :cond_5

    .line 331
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v32, "preferredOfferCategoriesStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    .line 333
    .local v33, "preferredOfferCategory":Ljava/lang/Integer;
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v33    # "preferredOfferCategory":Ljava/lang/Integer;
    :cond_4
    new-instance v24, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;

    invoke-direct/range {v24 .. v24}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;-><init>()V

    .line 337
    .local v24, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;->email:Ljava/util/List;

    .line 338
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;->mobileApp:Ljava/util/List;

    .line 341
    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "18"

    const-string v5, "PreferredOfferCategory"

    .line 340
    move-object/from16 v0, v24

    invoke-static {v3, v4, v5, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createLegacyPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v22

    .line 346
    .local v22, "dcsPreferenceYourOffers":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    if-eqz v22, :cond_5

    .line 347
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v22    # "dcsPreferenceYourOffers":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .end local v24    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;
    .end local v32    # "preferredOfferCategoriesStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v28

    .line 352
    .local v28, "notificationPreferences":Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    if-eqz v28, :cond_9

    .line 353
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getPreferencesMap()Ljava/util/Map;

    move-result-object v29

    .line 354
    .local v29, "preferenceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v29, :cond_9

    .line 355
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 357
    .local v25, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 359
    .local v26, "key":Ljava/lang/String;
    const-string v4, "AppNotificationPreferences_Enabled"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "EmailNotificationPreferences_Enabled"

    .line 360
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 364
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Boolean;

    .line 367
    .local v34, "value":Ljava/lang/Boolean;
    const-string v4, "AppNotificationPreferences_"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 369
    const-string v4, "AppNotificationPreferences_"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-static {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->addOrUpdateLegacyPreference(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 372
    :cond_7
    const-string v4, "EmailNotificationPreferences_"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 374
    const-string v4, "EmailNotificationPreferences_"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-static {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->addOrUpdateLegacyPreference(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 378
    :cond_8
    new-instance v24, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    invoke-direct/range {v24 .. v24}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;-><init>()V

    .line 379
    .local v24, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
    invoke-static/range {v34 .. v34}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->enabled:Ljava/lang/String;

    .line 381
    const-string v4, "Y"

    .line 383
    invoke-static/range {v26 .. v26}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->idForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-static/range {v26 .. v26}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->typeForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 381
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v4, v5, v0, v6, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v19

    .line 388
    .restart local v19    # "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    .end local v19    # "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .end local v24    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
    .end local v25    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v26    # "key":Ljava/lang/String;
    .end local v29    # "preferenceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v34    # "value":Ljava/lang/Boolean;
    :cond_9
    return-object v23
.end method

.method public static getECPLegacyStatus(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "True"

    goto :goto_0

    :cond_1
    const-string v0, "False"

    goto :goto_0
.end method

.method private static getStringFromPreferenceMapItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "itemKey"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 466
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "modules.customer.register.notificationPreferences"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 467
    .local v0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-object v4

    .line 470
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 471
    .local v1, "entry":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v5, v1, Ljava/util/Map;

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 472
    check-cast v2, Ljava/util/Map;

    .line 473
    .local v2, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 474
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 475
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static idForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getStringFromPreferenceMapItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 445
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->ID_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static integerFromPreferredNotification(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 191
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 197
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 191
    :sswitch_0
    const-string v2, "ByEmail"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "BySMS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 193
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 195
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0x3da5162 -> :sswitch_1
        0x75d50565 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static legacyIdForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v1, "legacyId"

    invoke-static {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getStringFromPreferenceMapItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 453
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->LEGACY_ID_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static preferredNotificationFromInt(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    const-string v0, "ByEmail"

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "BySMS"

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static preferredNotificationFromInteger(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 177
    if-nez p0, :cond_0

    .line 186
    :goto_0
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    const-string v0, "ByEmail"

    goto :goto_0

    .line 184
    :pswitch_1
    const-string v0, "BySMS"

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static typeForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->getStringFromPreferenceMapItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 461
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    if-ne p0, p1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v1

    .line 484
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 486
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    .line 488
    .local v0, "that":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->isActive:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->isActive:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->isActive:Ljava/lang/String;

    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    .line 490
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 488
    :cond_5
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceId:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_1

    .line 489
    :cond_6
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    if-nez v3, :cond_4

    goto :goto_2

    .line 490
    :cond_7
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    if-nez v3, :cond_4

    goto :goto_0
.end method
