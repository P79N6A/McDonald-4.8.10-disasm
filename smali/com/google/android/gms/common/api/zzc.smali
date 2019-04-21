.class public abstract Lcom/google/android/gms/common/api/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final zzakS:Lcom/google/android/gms/internal/zzov;

.field private final zzakT:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzakU:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final zzakV:Lcom/google/android/gms/internal/zznq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zznq",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzakW:Landroid/os/Looper;

.field private final zzakX:Lcom/google/android/gms/internal/zzoj;

.field private final zzakZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzala:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private zza(ILcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/zznt$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zznt$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zznt$zza;->zzrI()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzakX:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zznt$zza;)V

    return-object p2
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzakW:Landroid/os/Looper;

    return-object v0
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzakZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzakS:Lcom/google/android/gms/internal/zzov;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzov;->release()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzakX:Lcom/google/android/gms/internal/zzoj;

    iget v2, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzc;->zzala:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzoj;->zzd(IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zznt$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zznt$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zznt$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zznt$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzrj()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzala:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public zzrk()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzala:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzakZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzakX:Lcom/google/android/gms/internal/zzoj;

    iget v1, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzoj;->zzd(IZ)V

    :cond_0
    return-void
.end method

.method public zzrl()Lcom/google/android/gms/common/api/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzakT:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method

.method public zzrm()Lcom/google/android/gms/common/api/Api$ApiOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzakU:Lcom/google/android/gms/common/api/Api$ApiOptions;

    return-object v0
.end method

.method public zzrn()Lcom/google/android/gms/internal/zznq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zznq",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    return-object v0
.end method
