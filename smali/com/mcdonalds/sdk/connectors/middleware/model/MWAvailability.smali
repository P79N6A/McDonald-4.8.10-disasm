.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAvailability;
.super Ljava/lang/Object;
.source "MWAvailability.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
