.class Lcom/amap/api/services/district/DistrictSearch$1;
.super Ljava/lang/Thread;
.source "DistrictSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/district/DistrictSearch;->searchDistrictAnsy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/district/DistrictSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/district/DistrictSearch;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 119
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 120
    new-instance v1, Lcom/amap/api/services/district/DistrictResult;

    invoke-direct {v1}, Lcom/amap/api/services/district/DistrictResult;-><init>()V

    .line 121
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    invoke-static {v0}, Lcom/amap/api/services/district/DistrictSearch;->a(Lcom/amap/api/services/district/DistrictSearch;)Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/district/DistrictResult;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    invoke-static {v0}, Lcom/amap/api/services/district/DistrictSearch;->b(Lcom/amap/api/services/district/DistrictSearch;)Lcom/amap/api/services/district/DistrictResult;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {v0}, Lcom/amap/api/services/core/AMapException;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amap/api/services/district/DistrictResult;->setAMapException(Lcom/amap/api/services/core/AMapException;)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    iget-object v0, v0, Lcom/amap/api/services/district/DistrictSearch;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    iget-object v0, v0, Lcom/amap/api/services/district/DistrictSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    :try_start_1
    const-string v3, "DistrictSearch"

    const-string v4, "searchDistrictAnsy"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v0}, Lcom/amap/api/services/district/DistrictResult;->setAMapException(Lcom/amap/api/services/core/AMapException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    iget-object v0, v0, Lcom/amap/api/services/district/DistrictSearch;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    iget-object v0, v0, Lcom/amap/api/services/district/DistrictSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    :try_start_2
    const-string v3, "DistrictSearch"

    const-string v4, "searchDistrictAnsyThrowable"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    iget-object v0, v0, Lcom/amap/api/services/district/DistrictSearch;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    iget-object v0, v0, Lcom/amap/api/services/district/DistrictSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    iget-object v1, v1, Lcom/amap/api/services/district/DistrictSearch;->a:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearch$1;->a:Lcom/amap/api/services/district/DistrictSearch;

    iget-object v1, v1, Lcom/amap/api/services/district/DistrictSearch;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    throw v0
.end method
