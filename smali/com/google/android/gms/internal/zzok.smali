.class public Lcom/google/android/gms/internal/zzok;
.super Lcom/google/android/gms/internal/zzob;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Lcom/google/android/gms/internal/zzob;"
    }
.end annotation


# instance fields
.field private final zzaoe:Lcom/google/android/gms/common/api/zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;"
        }
    .end annotation
.end field


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzaoe:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzpe;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzaoe:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->zzrj()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpe;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzaoe:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->zzrk()V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zznt$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zznt$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzaoe:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(Lcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzaoe:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzc;->zzb(Lcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;

    move-result-object v0

    return-object v0
.end method
