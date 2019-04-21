.class public Lcom/amap/api/location/AMapLocation;
.super Landroid/location/Location;
.source "AMapLocation.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/amap/api/location/core/AMapLocException;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 45
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v0}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->m:Lcom/amap/api/location/core/AMapLocException;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v0}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->m:Lcom/amap/api/location/core/AMapLocException;

    .line 81
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public getAMapException()Lcom/amap/api/location/core/AMapLocException;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->m:Lcom/amap/api/location/core/AMapLocException;

    return-object v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setAMapException(Lcom/amap/api/location/core/AMapLocException;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->m:Lcom/amap/api/location/core/AMapLocException;

    .line 53
    return-void
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPoiId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    .line 43
    return-void
.end method
