.class final Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;
.super Ljava/util/HashMap;
.source "DCSPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v0, "YourOffers"

    const-string v1, "6"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "LimitedTimeOffers"

    const-string v1, "7"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "PunchcardOffers"

    const-string v1, "8"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "EverydayOffers"

    const-string v1, "9"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "FoodPreferenceBreakfast"

    const-string v1, "12"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "FoodPreferenceSandwich"

    const-string v1, "13"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "FoodPreferenceChicken"

    const-string v1, "14"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "FoodPreferenceDrink"

    const-string v1, "15"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "FoodPreferenceFry"

    const-string v1, "16"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "FoodPreferenceHappymeal"

    const-string v1, "17"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "FoodPreferenceSalad"

    const-string v1, "19"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "FoodPreferenceWrap"

    const-string v1, "21"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method
