.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
.super Ljava/lang/Object;
.source "DCSPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCSPreferenceDetails"
.end annotation


# instance fields
.field public enabled:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    if-ne p0, p1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v1

    .line 501
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

    .line 503
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    .line 505
    .local v0, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->enabled:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->enabled:Ljava/lang/String;

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->enabled:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->enabled:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method
