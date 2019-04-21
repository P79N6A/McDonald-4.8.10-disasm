.class final Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;
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
    .line 121
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 122
    const-string v0, "YourOffers"

    const-string v1, "ecpLegacy"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "LimitedTimeOffers"

    const-string v1, "ecpLegacy"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "PunchcardOffers"

    const-string v1, "ecpLegacy"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "EverydayOffers"

    const-string v1, "ecpLegacy"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "FoodPreferenceBreakfast"

    const-string v1, "FoodPreference"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "FoodPreferenceSandwich"

    const-string v1, "FoodPreference"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "FoodPreferenceChicken"

    const-string v1, "FoodPreference"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "FoodPreferenceDrink"

    const-string v1, "FoodPreference"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "FoodPreferenceFry"

    const-string v1, "FoodPreference"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "FoodPreferenceHappymeal"

    const-string v1, "FoodPreference"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "FoodPreferenceSalad"

    const-string v1, "FoodPreference"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "FoodPreferenceWrap"

    const-string v1, "FoodPreference"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method
