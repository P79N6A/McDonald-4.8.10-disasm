.class final Lcom/amap/api/maps/offlinemap/c;
.super Ljava/lang/Object;
.source "OfflineMapProvince.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/offlinemap/OfflineMapProvince;
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
        "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/maps/offlinemap/OfflineMapProvince;
    .locals 1

    .prologue
    .line 176
    new-array v0, p1, [Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/c;->a(Landroid/os/Parcel;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/c;->a(I)[Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object v0

    return-object v0
.end method