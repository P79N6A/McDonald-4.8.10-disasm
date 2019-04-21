.class public final Lcom/google/android/gms/internal/zzox;
.super Lcom/google/android/gms/common/api/OptionalPendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/OptionalPendingResult",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final zzaoy:Lcom/google/android/gms/internal/zznv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zznv",
            "<TR;>;"
        }
    .end annotation
.end field


# virtual methods
.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox;->zzaoy:Lcom/google/android/gms/internal/zznv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zznv;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox;->zzaoy:Lcom/google/android/gms/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznv;->cancel()V

    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox;->zzaoy:Lcom/google/android/gms/internal/zznv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznv;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox;->zzaoy:Lcom/google/android/gms/internal/zznv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zznv;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public zzrv()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox;->zzaoy:Lcom/google/android/gms/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznv;->zzrv()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
