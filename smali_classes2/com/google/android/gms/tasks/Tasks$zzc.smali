.class final Lcom/google/android/gms/tasks/Tasks$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Tasks$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzc"
.end annotation


# instance fields
.field private zzbwC:Ljava/lang/Exception;

.field private final zzbwE:I

.field private zzbwF:I

.field private zzbwG:I

.field private final zzbwx:Lcom/google/android/gms/tasks/zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzh",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpp:Ljava/lang/Object;


# direct methods
.method private zzMQ()V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwF:I

    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwG:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwC:Ljava/lang/Exception;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwx:Lcom/google/android/gms/tasks/zzh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzh;->setResult(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwx:Lcom/google/android/gms/tasks/zzh;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwG:I

    iget v3, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwE:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x36

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " out of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " underlying tasks failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwC:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwG:I

    iput-object p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwC:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzMQ()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbwF:I

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzMQ()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
