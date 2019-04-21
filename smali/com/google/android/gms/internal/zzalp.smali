.class public final Lcom/google/android/gms/internal/zzalp;
.super Lcom/google/android/gms/internal/zzakr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzakr",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzbXD:Lcom/google/android/gms/internal/zzaks;


# instance fields
.field private final zzbWz:Lcom/google/android/gms/internal/zzajz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzalp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalp$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalp;->zzbXD:Lcom/google/android/gms/internal/zzaks;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzajz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalp;->zzbWz:Lcom/google/android/gms/internal/zzajz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzalp;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V
    .locals 2
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalp;->zzbWz:Lcom/google/android/gms/internal/zzajz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajz;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzalp;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWi()Lcom/google/android/gms/internal/zzaly;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWj()Lcom/google/android/gms/internal/zzaly;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzakr;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V

    goto :goto_0
.end method
