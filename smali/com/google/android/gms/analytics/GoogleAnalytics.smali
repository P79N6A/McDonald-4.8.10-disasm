.class public final Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;,
        Lcom/google/android/gms/analytics/GoogleAnalytics$zza;
    }
.end annotation


# static fields
.field private static zzTX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzTY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/analytics/GoogleAnalytics$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzUa:Z

.field private volatile zzUb:Z

.field private zzUc:Z

.field private zzru:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzTX:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzTY:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->zzX(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzme()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public static zzkt()V
    .locals 3

    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzTX:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzTX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzTX:Ljava/util/List;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private zzkw()Lcom/google/android/gms/analytics/internal/zzb;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzkj()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzkw()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method private zzkx()Lcom/google/android/gms/analytics/internal/zzap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzkj()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzkx()Lcom/google/android/gms/analytics/internal/zzap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchLocalHits()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzkw()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlJ()V

    return-void
.end method

.method public getAppOptOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzUb:Z

    return v0
.end method

.method public getLogger()Lcom/google/android/gms/analytics/Logger;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzks()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzru:Z

    return-void
.end method

.method public isDryRunEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzUa:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzru:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzkj()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;Lcom/google/android/gms/analytics/internal/zzad;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker;->initialize()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDryRun(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzUa:Z

    return-void
.end method

.method public setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzae;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzUc:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzXF:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzy;->zzXF:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x70

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzUc:Z

    :cond_0
    return-void
.end method

.method zzks()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzkx()Lcom/google/android/gms/analytics/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zznL()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->getLogLevel()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zznP()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zznQ()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zznL()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->getLogLevel()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    :cond_2
    return-void
.end method

.method public zzku()Ljava/lang/String;
    .locals 1

    const-string v0, "getClientId can not be called from the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzdd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzkj()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzmh()Lcom/google/android/gms/analytics/internal/zzn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzmP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzkv()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzkw()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlK()Z

    return-void
.end method

.method zzm(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzTY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->zzo(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method zzn(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzTY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->zzp(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
