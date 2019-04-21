.class Lcom/google/android/gms/maps/GoogleMap$18;
.super Lcom/google/android/gms/maps/internal/zzj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaZd:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;


# virtual methods
.method public zzi(Lcom/google/android/gms/maps/model/internal/zzf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$18;->zzaZd:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/zzf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;->onInfoWindowLongClick(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method
