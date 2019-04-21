.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
.source "DCSPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferredOfferCategoryDCSPreferenceDetails"
.end annotation


# instance fields
.field public email:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Email"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final legacyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legacyId"
    .end annotation
.end field

.field public mobileApp:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MobileApp"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;-><init>()V

    .line 544
    const-string v0, "18"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;->legacyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 555
    if-ne p0, p1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v1

    .line 556
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

    .line 558
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;

    .line 560
    .local v0, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;
    invoke-super {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "18"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "18"

    .line 561
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;->mobileApp:Ljava/util/List;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;->mobileApp:Ljava/util/List;

    .line 562
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;->email:Ljava/util/List;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;->email:Ljava/util/List;

    .line 563
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method
