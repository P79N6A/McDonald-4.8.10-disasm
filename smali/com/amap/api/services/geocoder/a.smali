.class final Lcom/amap/api/services/geocoder/a;
.super Ljava/lang/Object;
.source "BusinessArea.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/geocoder/BusinessArea;
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
        "Lcom/amap/api/services/geocoder/BusinessArea;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/geocoder/BusinessArea;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/amap/api/services/geocoder/BusinessArea;

    invoke-direct {v0, p1}, Lcom/amap/api/services/geocoder/BusinessArea;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/geocoder/BusinessArea;
    .locals 1

    .prologue
    .line 57
    new-array v0, p1, [Lcom/amap/api/services/geocoder/BusinessArea;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/amap/api/services/geocoder/a;->a(Landroid/os/Parcel;)Lcom/amap/api/services/geocoder/BusinessArea;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/amap/api/services/geocoder/a;->a(I)[Lcom/amap/api/services/geocoder/BusinessArea;

    move-result-object v0

    return-object v0
.end method