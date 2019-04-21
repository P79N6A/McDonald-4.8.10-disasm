.class Lcom/google/android/gms/measurement/internal/zzac$1;
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
.field final synthetic zzbfl:Z

.field final synthetic zzbfm:Lcom/google/android/gms/measurement/internal/zzac;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$1;->zzbfm:Lcom/google/android/gms/measurement/internal/zzac;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzac$1;->zzbfl:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;Z)V

    return-void
.end method
