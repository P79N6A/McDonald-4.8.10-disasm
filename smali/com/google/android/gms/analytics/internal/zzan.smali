.class public Lcom/google/android/gms/analytics/internal/zzan;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzp;


# instance fields
.field public zzTJ:Ljava/lang/String;

.field public zzZi:D

.field public zzZj:I

.field public zzZk:I

.field public zzZl:I

.field public zzZm:I

.field public zzZn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzZi:D

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzZj:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzZk:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzZl:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzZm:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzZn:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zzbV(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzZn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public zzr(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
