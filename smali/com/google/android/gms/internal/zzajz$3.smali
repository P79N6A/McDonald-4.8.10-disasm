.class Lcom/google/android/gms/internal/zzajz$3;
.super Lcom/google/android/gms/internal/zzakr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzajz;->zzaV(Z)Lcom/google/android/gms/internal/zzakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzakr",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbWh:Lcom/google/android/gms/internal/zzajz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzajz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzajz$3;->zzbWh:Lcom/google/android/gms/internal/zzajz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakr;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Number;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWk()Lcom/google/android/gms/internal/zzaly;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzajz$3;->zzbWh:Lcom/google/android/gms/internal/zzajz;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzajz;D)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaly;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaly;

    goto :goto_0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzajz$3;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Number;)V

    return-void
.end method
