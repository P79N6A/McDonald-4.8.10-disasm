.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
.source "DCSPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcpLegacyDCSPreferenceDetails"
.end annotation


# instance fields
.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Email"
    .end annotation
.end field

.field public legacyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legacyId"
    .end annotation
.end field

.field public mobileApp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MobileApp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 522
    if-ne p0, p1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v1

    .line 523
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

    .line 525
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;

    .line 527
    .local v0, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;
    invoke-super {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->legacyId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->legacyId:Ljava/lang/String;

    .line 528
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->mobileApp:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->mobileApp:Ljava/lang/String;

    .line 529
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->email:Ljava/lang/String;

    .line 530
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 536
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->legacyId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 537
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->mobileApp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 538
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 539
    return v0
.end method
