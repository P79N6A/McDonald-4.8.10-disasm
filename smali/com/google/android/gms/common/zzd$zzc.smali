.class abstract Lcom/google/android/gms/common/zzd$zzc;
.super Lcom/google/android/gms/common/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzc"
.end annotation


# static fields
.field private static final zzaks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private zzakr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/common/zzd$zzc;->zzaks:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/zzd$zza;-><init>([B)V

    sget-object v0, Lcom/google/android/gms/common/zzd$zzc;->zzaks:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/gms/common/zzd$zzc;->zzakr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/zzd$zzc;->zzakr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzd$zzc;->zzqY()[B

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/common/zzd$zzc;->zzakr:Ljava/lang/ref/WeakReference;

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract zzqY()[B
.end method
