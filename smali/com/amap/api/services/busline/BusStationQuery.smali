.class public Lcom/amap/api/services/busline/BusStationQuery;
.super Ljava/lang/Object;
.source "BusStationQuery.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    .line 26
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/amap/api/services/busline/BusStationQuery;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clone()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/amap/api/services/busline/BusStationQuery;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/busline/BusStationQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget v1, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationQuery;->setPageNumber(I)V

    .line 78
    iget v1, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationQuery;->setPageSize(I)V

    .line 80
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/amap/api/services/busline/BusStationQuery;->clone()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    check-cast p1, Lcom/amap/api/services/busline/BusStationQuery;

    .line 104
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 105
    iget-object v2, p1, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_5
    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    iget v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    iget v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 114
    iget-object v2, p1, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 117
    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    .line 87
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    add-int/2addr v0, v2

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 92
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    .line 73
    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .prologue
    const/16 v0, 0x14

    .line 62
    if-le p1, v0, :cond_1

    .line 65
    :goto_0
    if-gtz v0, :cond_0

    .line 66
    const/16 v0, 0xa

    .line 68
    :cond_0
    iput v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    .line 69
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method protected weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 127
    iget-object v2, p1, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 128
    goto :goto_0

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    iget v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 132
    goto :goto_0

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 134
    iget-object v2, p1, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 137
    goto :goto_0
.end method
