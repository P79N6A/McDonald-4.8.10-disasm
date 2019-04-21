.class Lcom/google/android/gms/tasks/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<TTContinuationResult;>;",
        "Lcom/google/android/gms/tasks/zzf",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final zzboH:Ljava/util/concurrent/Executor;

.field private final zzbwk:Lcom/google/android/gms/tasks/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final zzbwl:Lcom/google/android/gms/tasks/zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzh",
            "<TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic zza(Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/Continuation;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzbwk:Lcom/google/android/gms/tasks/Continuation;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzbwl:Lcom/google/android/gms/tasks/zzh;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzboH:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzb$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzb$1;-><init>(Lcom/google/android/gms/tasks/zzb;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzbwl:Lcom/google/android/gms/tasks/zzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzbwl:Lcom/google/android/gms/tasks/zzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzh;->setResult(Ljava/lang/Object;)V

    return-void
.end method