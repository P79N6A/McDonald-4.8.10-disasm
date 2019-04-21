.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryStatusLookupCriteria;
.super Ljava/lang/Object;
.source "MWDeliveryStatusLookupCriteria.java"


# instance fields
.field public orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderNumber"
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
