.class public Lcom/mcdonalds/sdk/services/data/sync/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static sSyncAdapter:Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/SyncService;->sSyncAdapter:Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/mcdonalds/sdk/services/data/sync/SyncService;->sSyncAdapter:Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/mcdonalds/sdk/services/data/sync/SyncService;->sSyncAdapter:Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/sync/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/SyncService;->sSyncAdapter:Lcom/mcdonalds/sdk/services/data/sync/SyncAdapter;

    .line 28
    :cond_0
    monitor-exit v1

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
