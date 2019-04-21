.class public Lcom/amap/api/services/geocoder/RegeocodeQuery;
.super Ljava/lang/Object;
.source "RegeocodeQuery.java"


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:F

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;FLjava/lang/String;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "autonavi"

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 12
    iput p2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    .line 13
    invoke-virtual {p0, p3}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->setLatLonType(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    .line 64
    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 65
    iget-object v2, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_6

    .line 70
    iget-object v2, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_7

    move v0, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_7
    iget v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public getLatLonType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    .line 48
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setLatLonType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    if-eqz p1, :cond_1

    const-string v0, "autonavi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    .line 42
    :cond_1
    return-void
.end method

.method public setPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 22
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    .line 30
    return-void
.end method
