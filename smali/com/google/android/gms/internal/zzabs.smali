.class public Lcom/google/android/gms/internal/zzabs;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbot:Ljava/lang/String;

.field zzbuP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbuQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbwb:Lcom/google/android/gms/internal/zzabu;

.field private final zzsd:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzabu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzabu;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzuW()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzabs;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/common/util/zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzabu;",
            "Lcom/google/android/gms/common/util/zze;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabs;->zzbot:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabs;->zzbuP:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabs;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabs;->zzsd:Lcom/google/android/gms/common/util/zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabs;->zzbwb:Lcom/google/android/gms/internal/zzabu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabs;->zzbuQ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zzhn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabs;->zzbot:Ljava/lang/String;

    return-void
.end method