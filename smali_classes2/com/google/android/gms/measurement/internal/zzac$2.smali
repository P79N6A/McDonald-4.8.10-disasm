.class Lcom/google/android/gms/measurement/internal/zzac$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbfm:Lcom/google/android/gms/measurement/internal/zzac;

.field final synthetic zzbfn:J


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$2;->zzbfm:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzFn()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzbdP:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzac$2;->zzbfn:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$2;->zzbfm:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzFm()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzFK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string v1, "Minimum session duration set"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzac$2;->zzbfn:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
