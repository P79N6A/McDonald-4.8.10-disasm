.class final Lcom/amap/api/services/poisearch/a;
.super Ljava/lang/Object;
.source "Cinema.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/poisearch/Cinema;
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
        "Lcom/amap/api/services/poisearch/Cinema;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/poisearch/Cinema;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/amap/api/services/poisearch/Cinema;

    invoke-direct {v0, p1}, Lcom/amap/api/services/poisearch/Cinema;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/poisearch/Cinema;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/amap/api/services/poisearch/a;->a(Landroid/os/Parcel;)Lcom/amap/api/services/poisearch/Cinema;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/amap/api/services/poisearch/a;->a(I)[Lcom/amap/api/services/poisearch/Cinema;

    move-result-object v0

    return-object v0
.end method
