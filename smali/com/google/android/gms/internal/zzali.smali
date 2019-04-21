.class public final Lcom/google/android/gms/internal/zzali;
.super Lcom/google/android/gms/internal/zzakr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzakr",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzbXD:Lcom/google/android/gms/internal/zzaks;


# instance fields
.field private final zzbXE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final zzbXF:Lcom/google/android/gms/internal/zzakr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzakr",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzali$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzali$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzali;->zzbXD:Lcom/google/android/gms/internal/zzaks;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzakr;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajz;",
            "Lcom/google/android/gms/internal/zzakr",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakr;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzalt;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzalt;-><init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzakr;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzali;->zzbXF:Lcom/google/android/gms/internal/zzakr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzali;->zzbXE:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V
    .locals 4
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

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzali;->zzbXF:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/zzakr;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWh()Lcom/google/android/gms/internal/zzaly;

    goto :goto_0
.end method
