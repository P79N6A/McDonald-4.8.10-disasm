.class public Lcom/mcdonalds/sdk/services/configuration/DeliveryConfig;
.super Ljava/lang/Object;
.source "DeliveryConfig.java"


# instance fields
.field public connector:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connector"
    .end annotation
.end field

.field public expectedTenderTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expectedTenderTypes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;",
            ">;"
        }
    .end annotation
.end field

.field public externalAddressProvider:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "externalAddressProvider"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
