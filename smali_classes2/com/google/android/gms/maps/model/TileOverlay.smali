.class public final Lcom/google/android/gms/maps/model/TileOverlay;
.super Ljava/lang/Object;


# instance fields
.field private final zzbbe:Lcom/google/android/gms/maps/model/internal/zzh;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/maps/model/TileOverlay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zzbbe:Lcom/google/android/gms/maps/model/internal/zzh;

    check-cast p1, Lcom/google/android/gms/maps/model/TileOverlay;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/TileOverlay;->zzbbe:Lcom/google/android/gms/maps/model/internal/zzh;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/zzh;->zza(Lcom/google/android/gms/maps/model/internal/zzh;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->zzbbe:Lcom/google/android/gms/maps/model/internal/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzh;->hashCodeRemote()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method