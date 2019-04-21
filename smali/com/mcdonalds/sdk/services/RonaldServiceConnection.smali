.class public Lcom/mcdonalds/sdk/services/RonaldServiceConnection;
.super Ljava/lang/Object;
.source "RonaldServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mPendingListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/BaseModule;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mService:Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection;->mPendingListeners:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private processPendingListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 39
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection;->mPendingListeners:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 40
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v3, "pendingListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/BaseModule;>;>;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection;->mPendingListeners:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection;->mPendingListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 43
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "moduleName":Ljava/lang/String;
    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/BaseModule;

    .line 45
    .local v1, "module":Lcom/mcdonalds/sdk/modules/BaseModule;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/AsyncListener;

    .line 46
    .local v0, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/BaseModule;>;"
    invoke-interface {v0, v1, v7, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 48
    .end local v0    # "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/BaseModule;>;"
    .end local v1    # "module":Lcom/mcdonalds/sdk/modules/BaseModule;
    .end local v2    # "moduleName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 50
    .end local v3    # "pendingListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/BaseModule;>;>;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public getModule(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<+",
            "Lcom/mcdonalds/sdk/modules/BaseModule;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<+Lcom/mcdonalds/sdk/modules/BaseModule;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    .local v0, "asyncHandler":Landroid/os/Handler;
    new-instance v1, Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mcdonalds/sdk/services/RonaldServiceConnection$1;-><init>(Lcom/mcdonalds/sdk/services/RonaldServiceConnection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/RonaldServiceConnection;->processPendingListeners()V

    .line 36
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection;->mService:Landroid/app/Service;

    .line 55
    return-void
.end method
