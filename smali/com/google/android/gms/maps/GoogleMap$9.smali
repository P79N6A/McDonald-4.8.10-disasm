.class Lcom/google/android/gms/maps/GoogleMap$9;
.super Lcom/google/android/gms/maps/internal/zzv$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYS:Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;


# virtual methods
.method public zza(Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$9;->zzaYS:Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Polyline;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Polyline;-><init>(Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;->onPolylineClick(Lcom/google/android/gms/maps/model/Polyline;)V

    return-void
.end method
