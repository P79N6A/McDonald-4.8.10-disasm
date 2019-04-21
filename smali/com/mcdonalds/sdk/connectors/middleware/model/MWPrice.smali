.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;
.super Ljava/lang/Object;
.source "MWPrice.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_DELIVERY:I = 0x3

.field public static final TYPE_EAT_IN:I = 0x1

.field public static final TYPE_TAKE_OUT:I = 0x2


# instance fields
.field public isValid:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public price:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Price"
    .end annotation
.end field

.field public priceTypeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PriceTypeID"
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
