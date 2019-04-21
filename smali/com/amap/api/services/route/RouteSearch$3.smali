.class Lcom/amap/api/services/route/RouteSearch$3;
.super Ljava/lang/Thread;
.source "RouteSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/route/RouteSearch;->calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

.field final synthetic b:Lcom/amap/api/services/route/RouteSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/route/RouteSearch;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$3;->b:Lcom/amap/api/services/route/RouteSearch;

    iput-object p2, p0, Lcom/amap/api/services/route/RouteSearch$3;->a:Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 146
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 147
    const/16 v0, 0xb

    iput v0, v2, Landroid/os/Message;->what:I

    .line 148
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 149
    const/4 v1, 0x0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$3;->b:Lcom/amap/api/services/route/RouteSearch;

    iget-object v4, p0, Lcom/amap/api/services/route/RouteSearch$3;->a:Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/RouteSearch;->calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;

    move-result-object v1

    .line 152
    const-string v0, "errorCode"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$3;->b:Lcom/amap/api/services/route/RouteSearch;

    iget-object v0, v0, Lcom/amap/api/services/route/RouteSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    :try_start_1
    const-string v4, "RouteSearch"

    const-string v5, "calculateDriveRouteAsyn"

    invoke-static {v0, v4, v5}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v4, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$3;->b:Lcom/amap/api/services/route/RouteSearch;

    iget-object v0, v0, Lcom/amap/api/services/route/RouteSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 160
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$3;->b:Lcom/amap/api/services/route/RouteSearch;

    iget-object v1, v1, Lcom/amap/api/services/route/RouteSearch;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
