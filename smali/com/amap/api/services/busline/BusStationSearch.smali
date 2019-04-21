.class public Lcom/amap/api/services/busline/BusStationSearch;
.super Ljava/lang/Object;
.source "BusStationSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

.field private d:Lcom/amap/api/services/busline/BusStationQuery;

.field private e:Lcom/amap/api/services/busline/BusStationQuery;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusStationResult;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->f:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Lcom/amap/api/services/busline/d;

    invoke-direct {v0, p0}, Lcom/amap/api/services/busline/d;-><init>(Lcom/amap/api/services/busline/BusStationSearch;)V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Landroid/os/Handler;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/busline/BusStationSearch;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->c:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/busline/BusStationResult;)V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->f:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/services/busline/BusStationSearch;->g:I

    if-gt v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationSearch;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->g:I

    if-lez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->g:I

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Lcom/amap/api/services/busline/BusStationResult;
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/amap/api/services/busline/BusStationSearch;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationResult;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    return-object v0
.end method

.method public searchBusStation()Lcom/amap/api/services/busline/BusStationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 50
    .line 52
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/core/l;->a(Landroid/content/Context;)Lcom/amap/api/services/core/l;

    .line 53
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationSearch;->e:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationQuery;->weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationQuery;->clone()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->e:Lcom/amap/api/services/busline/BusStationQuery;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->g:I

    .line 56
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    :cond_0
    iget v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->g:I

    if-nez v0, :cond_2

    .line 61
    new-instance v1, Lcom/amap/api/services/core/b;

    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/core/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v1}, Lcom/amap/api/services/core/b;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/amap/api/services/busline/BusStationResult;->a(Lcom/amap/api/services/core/b;Ljava/util/ArrayList;)Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationResult;->getPageCount()I

    move-result v1

    iput v1, p0, Lcom/amap/api/services/busline/BusStationSearch;->g:I

    .line 65
    invoke-direct {p0, v0}, Lcom/amap/api/services/busline/BusStationSearch;->a(Lcom/amap/api/services/busline/BusStationResult;)V

    .line 75
    :cond_1
    :goto_0
    return-object v0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/busline/BusStationSearch;->b(I)Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    new-instance v1, Lcom/amap/api/services/core/b;

    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/core/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v1}, Lcom/amap/api/services/core/b;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/amap/api/services/busline/BusStationResult;->a(Lcom/amap/api/services/core/b;Ljava/util/ArrayList;)Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationSearch;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public searchBusStationAsyn()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/busline/BusStationSearch$1;

    invoke-direct {v1, p0}, Lcom/amap/api/services/busline/BusStationSearch$1;-><init>(Lcom/amap/api/services/busline/BusStationSearch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    return-void
.end method

.method public setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationSearch;->c:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    .line 101
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {p1, v0}, Lcom/amap/api/services/busline/BusStationQuery;->weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationSearch;->d:Lcom/amap/api/services/busline/BusStationQuery;

    .line 198
    :cond_0
    return-void
.end method
