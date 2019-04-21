.class public Lcom/amap/api/services/route/RouteSearch;
.super Ljava/lang/Object;
.source "RouteSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;,
        Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;,
        Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;,
        Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;,
        Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    }
.end annotation


# static fields
.field public static final BusComfortable:I = 0x4

.field public static final BusDefault:I = 0x0

.field public static final BusLeaseChange:I = 0x2

.field public static final BusLeaseWalk:I = 0x3

.field public static final BusNoSubway:I = 0x5

.field public static final BusSaveMoney:I = 0x1

.field public static final DrivingAvoidCongestion:I = 0x4

.field public static final DrivingDefault:I = 0x0

.field public static final DrivingMultiStrategy:I = 0x5

.field public static final DrivingNoExpressways:I = 0x3

.field public static final DrivingNoHighAvoidCongestionSaveMoney:I = 0x9

.field public static final DrivingNoHighWay:I = 0x6

.field public static final DrivingNoHighWaySaveMoney:I = 0x7

.field public static final DrivingSaveMoney:I = 0x1

.field public static final DrivingSaveMoneyAvoidCongestion:I = 0x8

.field public static final DrivingShortDistance:I = 0x2

.field public static final WalkDefault:I = 0x0

.field public static final WalkMultipath:I = 0x1


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance v0, Lcom/amap/api/services/route/m;

    invoke-direct {v0, p0}, Lcom/amap/api/services/route/m;-><init>(Lcom/amap/api/services/route/RouteSearch;)V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Landroid/os/Handler;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch;->c:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/route/RouteSearch;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch;->b:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    return-object v0
.end method


# virtual methods
.method public calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/core/l;->a(Landroid/content/Context;)Lcom/amap/api/services/core/l;

    .line 95
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object v1

    .line 96
    new-instance v0, Lcom/amap/api/services/core/a;

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/services/core/a;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    .line 98
    invoke-virtual {v0}, Lcom/amap/api/services/core/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/BusRouteResult;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusRouteResult;->setBusQuery(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    .line 102
    :cond_0
    return-object v0
.end method

.method public calculateBusRouteAsyn(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$2;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/route/RouteSearch$2;-><init>(Lcom/amap/api/services/route/RouteSearch;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteSearch$2;->start()V

    .line 126
    return-void
.end method

.method public calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/core/l;->a(Landroid/content/Context;)Lcom/amap/api/services/core/l;

    .line 131
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    move-result-object v1

    .line 132
    new-instance v0, Lcom/amap/api/services/core/f;

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/services/core/f;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    .line 134
    invoke-virtual {v0}, Lcom/amap/api/services/core/f;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/DriveRouteResult;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/DriveRouteResult;->setDriveQuery(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    .line 138
    :cond_0
    return-object v0
.end method

.method public calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$3;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/route/RouteSearch$3;-><init>(Lcom/amap/api/services/route/RouteSearch;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteSearch$3;->start()V

    .line 164
    return-void
.end method

.method public calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/core/l;->a(Landroid/content/Context;)Lcom/amap/api/services/core/l;

    .line 59
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    move-result-object v1

    .line 60
    new-instance v0, Lcom/amap/api/services/core/t;

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/services/core/t;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    .line 62
    invoke-virtual {v0}, Lcom/amap/api/services/core/t;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkRouteResult;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkRouteResult;->setWalkQuery(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    .line 66
    :cond_0
    return-object v0
.end method

.method public calculateWalkRouteAsyn(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$1;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/route/RouteSearch$1;-><init>(Lcom/amap/api/services/route/RouteSearch;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteSearch$1;->start()V

    .line 90
    return-void
.end method

.method public setRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch;->b:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    .line 54
    return-void
.end method
