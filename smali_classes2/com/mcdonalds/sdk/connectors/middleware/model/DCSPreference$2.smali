.class final Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$2;
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
    .line 114
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 115
    const-string v0, "YourOffers"

    const-string v1, "6"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "LimitedTimeOffers"

    const-string v1, "7"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "PunchcardOffers"

    const-string v1, "8"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "EverydayOffers"

    const-string v1, "9"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method
