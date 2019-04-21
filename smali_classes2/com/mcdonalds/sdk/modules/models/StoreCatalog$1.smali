.class final Lcom/mcdonalds/sdk/modules/models/StoreCatalog$1;
.super Ljava/lang/Object;
.source "StoreCatalog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
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
        "Lcom/mcdonalds/sdk/modules/models/StoreCatalog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 201
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 205
    new-array v0, p1, [Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog$1;->newArray(I)[Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    move-result-object v0

    return-object v0
.end method
