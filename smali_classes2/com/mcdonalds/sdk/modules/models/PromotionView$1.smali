.class final Lcom/mcdonalds/sdk/modules/models/PromotionView$1;
.super Ljava/lang/Object;
.source "PromotionView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/PromotionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/PromotionView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/sdk/modules/models/PromotionView;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 67
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PromotionView;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/modules/models/PromotionView;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/PromotionView$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/sdk/modules/models/PromotionView;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mcdonalds/sdk/modules/models/PromotionView;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 71
    new-array v0, p1, [Lcom/mcdonalds/sdk/modules/models/PromotionView;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/PromotionView$1;->newArray(I)[Lcom/mcdonalds/sdk/modules/models/PromotionView;

    move-result-object v0

    return-object v0
.end method
