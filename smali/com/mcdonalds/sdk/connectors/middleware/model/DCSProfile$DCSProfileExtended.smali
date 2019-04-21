.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
.super Ljava/lang/Object;
.source "DCSProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCSProfileExtended"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSExternalId;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    }
.end annotation


# instance fields
.field public demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "demographics"
    .end annotation
.end field

.field public devices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "devices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;",
            ">;"
        }
    .end annotation
.end field

.field public externalId:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "externalId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSExternalId;",
            ">;"
        }
    .end annotation
.end field

.field public favorites:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorites"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;",
            ">;"
        }
    .end annotation
.end field

.field public policies:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policies"
    .end annotation
.end field

.field public preferences:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preferences"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;",
            ">;"
        }
    .end annotation
.end field

.field public subscriptions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscriptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
