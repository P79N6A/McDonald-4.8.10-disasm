.class public final Lcom/amap/api/services/geocoder/GeocodeSearch;
.super Ljava/lang/Object;
.source "GeocodeSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;
    }
.end annotation


# static fields
.field public static final AMAP:Ljava/lang/String; = "autonavi"

.field public static final GPS:Ljava/lang/String; = "gps"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/amap/api/services/geocoder/c;

    invoke-direct {v0, p0}, Lcom/amap/api/services/geocoder/c;-><init>(Lcom/amap/api/services/geocoder/GeocodeSearch;)V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Landroid/os/Handler;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->b:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/geocoder/GeocodeSearch;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->c:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    return-object v0
.end method


# virtual methods
.method public getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/core/l;->a(Landroid/content/Context;)Lcom/amap/api/services/core/l;

    .line 59
    new-instance v0, Lcom/amap/api/services/core/s;

    iget-object v1, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/core/s;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    .line 61
    invoke-virtual {v0}, Lcom/amap/api/services/core/s;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeAddress;

    return-object v0
.end method

.method public getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/geocoder/GeocodeSearch$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/geocoder/GeocodeSearch$1;-><init>(Lcom/amap/api/services/geocoder/GeocodeSearch;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/geocoder/GeocodeQuery;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/core/l;->a(Landroid/content/Context;)Lcom/amap/api/services/core/l;

    .line 75
    new-instance v0, Lcom/amap/api/services/core/g;

    iget-object v1, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/core/g;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    .line 76
    invoke-virtual {v0}, Lcom/amap/api/services/core/g;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/geocoder/GeocodeSearch$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/geocoder/GeocodeSearch$2;-><init>(Lcom/amap/api/services/geocoder/GeocodeSearch;Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method

.method public setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->c:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 82
    return-void
.end method
