.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;
.super Ljava/lang/Object;
.source "MWAdvertisableSwapMapping.java"


# instance fields
.field public regular:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Regular"
    .end annotation
.end field

.field public swap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Swap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
