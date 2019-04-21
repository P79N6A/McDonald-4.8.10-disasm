.class Lcom/google/android/gms/maps/GoogleMap$16;
.super Lcom/google/android/gms/maps/internal/zzq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaZb:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# virtual methods
.method public zze(Lcom/google/android/gms/maps/model/internal/zzf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$16;->zzaZb:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/zzf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/maps/model/internal/zzf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$16;->zzaZb:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/zzf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method public zzg(Lcom/google/android/gms/maps/model/internal/zzf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$16;->zzaZb:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/zzf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method
