.class public Lcom/amap/api/services/geocoder/GeocodeQuery;
.super Ljava/lang/Object;
.source "GeocodeQuery.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    check-cast p1, Lcom/amap/api/services/geocoder/GeocodeQuery;

    .line 47
    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 48
    iget-object v2, p1, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 53
    iget-object v2, p1, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 30
    .line 32
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 35
    return v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    .line 18
    return-void
.end method
