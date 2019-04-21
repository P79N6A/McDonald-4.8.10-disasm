.class Lcom/google/android/gms/internal/zzalu$15$1;
.super Lcom/google/android/gms/internal/zzakr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzalu$15;->zza(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzakr",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbYY:Lcom/google/android/gms/internal/zzakr;

.field final synthetic zzbYZ:Lcom/google/android/gms/internal/zzalu$15;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalu$15;Lcom/google/android/gms/internal/zzakr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalu$15$1;->zzbYZ:Lcom/google/android/gms/internal/zzalu$15;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzalu$15$1;->zzbYY:Lcom/google/android/gms/internal/zzakr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakr;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzalu$15$1;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaly;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalu$15$1;->zzbYY:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzakr;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V

    return-void
.end method
