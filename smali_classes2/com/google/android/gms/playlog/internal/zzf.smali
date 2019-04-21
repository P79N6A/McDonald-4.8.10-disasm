.class public Lcom/google/android/gms/playlog/internal/zzf;
.super Lcom/google/android/gms/common/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzd",
        "<",
        "Lcom/google/android/gms/playlog/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzZC:Ljava/lang/String;

.field private final zzblh:Lcom/google/android/gms/playlog/internal/zzd;

.field private final zzbli:Lcom/google/android/gms/playlog/internal/zzb;

.field private zzblj:Z

.field private final zzpp:Ljava/lang/Object;


# direct methods
.method private zzIi()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzblj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzai(Z)V

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzbli:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzb;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzbli:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzb;->zzIg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/zzb$zza;

    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbkU:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbkV:Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_2
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zztm()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v5, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzZC:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbkU:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbkV:Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zztm()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzZC:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzbli:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzb;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send cached log events to AndroidLog service.  Retaining in memory cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public stop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzblh:Lcom/google/android/gms/playlog/internal/zzd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/playlog/internal/zzd;->zzaA(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzaB(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzblj:Z

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzblj:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzblj:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zzIi()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic zzab(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/playlog/internal/zzf;->zzdR(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzdR(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/playlog/internal/zza$zza;->zzdQ(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzhT()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected zzhU()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method
