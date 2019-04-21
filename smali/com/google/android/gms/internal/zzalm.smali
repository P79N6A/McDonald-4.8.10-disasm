.class public final Lcom/google/android/gms/internal/zzalm;
.super Lcom/google/android/gms/internal/zzalw;


# static fields
.field private static final zzbXI:Ljava/io/Reader;

.field private static final zzbXJ:Ljava/lang/Object;


# instance fields
.field private final zzbXK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzalm$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalm$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalm;->zzbXI:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalm;->zzbXJ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalm;->zzbXK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalm;->zzbXK:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzalm;->zzbXJ:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
