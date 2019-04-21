.class final Lcom/google/android/gms/internal/zzalj$zza;
.super Lcom/google/android/gms/internal/zzakr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzalj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzakr",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final zzbXG:Lcom/google/android/gms/internal/zzakr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzakr",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final zzbXH:Lcom/google/android/gms/internal/zzale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzale",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzajz;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzakr;Lcom/google/android/gms/internal/zzale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajz;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzakr",
            "<TE;>;",
            "Lcom/google/android/gms/internal/zzale",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakr;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzalt;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzalt;-><init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzakr;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzalj$zza;->zzbXG:Lcom/google/android/gms/internal/zzakr;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzalj$zza;->zzbXH:Lcom/google/android/gms/internal/zzale;

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

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzalj$zza;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/util/Collection;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaly;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaly;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWg()Lcom/google/android/gms/internal/zzaly;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalj$zza;->zzbXG:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/zzakr;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWh()Lcom/google/android/gms/internal/zzaly;

    goto :goto_0
.end method
