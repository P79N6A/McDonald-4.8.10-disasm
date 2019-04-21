.class final Lcom/mcdonalds/sdk/modules/models/Category$1;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/Category;
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
        "Lcom/mcdonalds/sdk/modules/models/Category;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 319
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Category$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 323
    new-array v0, p1, [Lcom/mcdonalds/sdk/modules/models/Category;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Category$1;->newArray(I)[Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v0

    return-object v0
.end method
