.class final Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy$1;
.super Ljava/lang/Object;
.source "ProductProxy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;
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
        "Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 314
    new-instance v0, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 319
    new-array v0, p1, [Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy$1;->newArray(I)[Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    move-result-object v0

    return-object v0
.end method
