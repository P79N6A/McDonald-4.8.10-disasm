.class public final Lcom/google/android/gms/internal/zzaka;
.super Ljava/lang/Object;


# instance fields
.field private final zzbVZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaks;",
            ">;"
        }
    .end annotation
.end field

.field private zzbWj:Lcom/google/android/gms/internal/zzala;

.field private zzbWk:Lcom/google/android/gms/internal/zzakp;

.field private zzbWl:Lcom/google/android/gms/internal/zzajy;

.field private final zzbWm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzakb",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzbWn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaks;",
            ">;"
        }
    .end annotation
.end field

.field private zzbWo:I

.field private zzbWp:I

.field private zzbWq:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzala;->zzbWT:Lcom/google/android/gms/internal/zzala;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWj:Lcom/google/android/gms/internal/zzala;

    sget-object v0, Lcom/google/android/gms/internal/zzakp;->zzbWu:Lcom/google/android/gms/internal/zzakp;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWk:Lcom/google/android/gms/internal/zzakp;

    sget-object v0, Lcom/google/android/gms/internal/zzajx;->zzbVR:Lcom/google/android/gms/internal/zzajx;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWl:Lcom/google/android/gms/internal/zzajy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWm:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbVZ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWn:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/internal/zzaka;->zzbWo:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaka;->zzbWp:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWq:Z

    return-void
.end method
