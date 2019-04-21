.class Lcom/google/android/gms/location/places/internal/zzp$1;
.super Lcom/google/android/gms/location/places/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzf$zza",
        "<",
        "Lcom/google/android/gms/location/places/internal/zze;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaYj:I

.field final synthetic zzaYk:I

.field final synthetic zzaYl:Lcom/google/android/gms/location/places/internal/zzp;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/places/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzp$1;->zza(Lcom/google/android/gms/location/places/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/places/internal/zze;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/location/places/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzf;-><init>(Lcom/google/android/gms/location/places/zzf$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzp$1;->zzaYl:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzp;->zza(Lcom/google/android/gms/location/places/internal/zzp;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzp$1;->zzaYj:I

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzp$1;->zzaYk:I

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzp$1;->zzaYl:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzp;->zzb(Lcom/google/android/gms/location/places/internal/zzp;)I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zze;->zza(Lcom/google/android/gms/location/places/zzf;Ljava/lang/String;III)V

    return-void
.end method
