.class Lcom/amap/api/services/help/Inputtips$1;
.super Ljava/lang/Thread;
.source "Inputtips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/help/Inputtips;->requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/services/help/Inputtips;


# direct methods
.method constructor <init>(Lcom/amap/api/services/help/Inputtips;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    iput-object p2, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/help/Inputtips$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 51
    new-instance v0, Lcom/amap/api/services/core/h;

    iget-object v1, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v1}, Lcom/amap/api/services/help/Inputtips;->a(Lcom/amap/api/services/help/Inputtips;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/amap/api/services/core/i;

    iget-object v3, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/services/help/Inputtips$1;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/amap/api/services/core/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/core/h;-><init>(Landroid/content/Context;Lcom/amap/api/services/core/i;)V

    .line 53
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 55
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/services/core/h;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    iget-object v0, v0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :try_start_1
    const-string v2, "Inputtips"

    const-string v3, "requestInputtips"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    iget-object v0, v0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    iget-object v2, v2, Lcom/amap/api/services/help/Inputtips;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
