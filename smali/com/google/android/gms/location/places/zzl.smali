.class public Lcom/google/android/gms/location/places/zzl;
.super Lcom/google/android/gms/location/places/internal/zzi$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/zzl$zzf;,
        Lcom/google/android/gms/location/places/zzl$zza;,
        Lcom/google/android/gms/location/places/zzl$zze;,
        Lcom/google/android/gms/location/places/zzl$zzc;,
        Lcom/google/android/gms/location/places/zzl$zzd;,
        Lcom/google/android/gms/location/places/zzl$zzb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaXg:Lcom/google/android/gms/location/places/zzl$zzd;

.field private final zzaXh:Lcom/google/android/gms/location/places/zzl$zza;

.field private final zzaXi:Lcom/google/android/gms/location/places/zzl$zze;

.field private final zzaXj:Lcom/google/android/gms/location/places/zzl$zzf;

.field private final zzaXk:Lcom/google/android/gms/location/places/zzl$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/location/places/zzl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzl$zza;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzi$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXg:Lcom/google/android/gms/location/places/zzl$zzd;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzl;->zzaXh:Lcom/google/android/gms/location/places/zzl$zza;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXi:Lcom/google/android/gms/location/places/zzl$zze;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXj:Lcom/google/android/gms/location/places/zzl$zzf;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXk:Lcom/google/android/gms/location/places/zzl$zzc;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzl$zzc;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzi$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXg:Lcom/google/android/gms/location/places/zzl$zzd;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXh:Lcom/google/android/gms/location/places/zzl$zza;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXi:Lcom/google/android/gms/location/places/zzl$zze;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXj:Lcom/google/android/gms/location/places/zzl$zzf;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzl;->zzaXk:Lcom/google/android/gms/location/places/zzl$zzc;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzl$zzd;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzi$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzl;->zzaXg:Lcom/google/android/gms/location/places/zzl$zzd;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXh:Lcom/google/android/gms/location/places/zzl$zza;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXi:Lcom/google/android/gms/location/places/zzl$zze;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXj:Lcom/google/android/gms/location/places/zzl$zzf;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXk:Lcom/google/android/gms/location/places/zzl$zzc;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzl$zzf;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzi$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXg:Lcom/google/android/gms/location/places/zzl$zzd;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXh:Lcom/google/android/gms/location/places/zzl$zza;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXi:Lcom/google/android/gms/location/places/zzl$zze;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzl;->zzaXj:Lcom/google/android/gms/location/places/zzl$zzf;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXk:Lcom/google/android/gms/location/places/zzl$zzc;

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zzam(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXg:Lcom/google/android/gms/location/places/zzl$zzd;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "placeEstimator cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zza(ZLjava/lang/Object;)V

    if-nez p1, :cond_3

    sget-object v0, Lcom/google/android/gms/location/places/zzl;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/location/places/zzl;->TAG:Ljava/lang/String;

    const-string v2, "onPlaceEstimated received null DataHolder: "

    invoke-static {}, Lcom/google/android/gms/common/util/zzu;->zzvk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXg:Lcom/google/android/gms/location/places/zzl$zzd;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaly:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/zzl$zzd;->zzx(Lcom/google/android/gms/common/api/Status;)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzsO()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const/16 v0, 0x64

    :goto_3
    new-instance v1, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXg:Lcom/google/android/gms/location/places/zzl$zzd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/zzl$zzd;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzI(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_3
.end method

.method public zzan(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_2

    sget-object v0, Lcom/google/android/gms/location/places/zzl;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/location/places/zzl;->TAG:Ljava/lang/String;

    const-string v2, "onAutocompletePrediction received null DataHolder: "

    invoke-static {}, Lcom/google/android/gms/common/util/zzu;->zzvk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXh:Lcom/google/android/gms/location/places/zzl$zza;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaly:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/zzl$zza;->zzx(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXh:Lcom/google/android/gms/location/places/zzl$zza;

    new-instance v1, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/zzl$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1
.end method

.method public zzao(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_2

    sget-object v0, Lcom/google/android/gms/location/places/zzl;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/location/places/zzl;->TAG:Ljava/lang/String;

    const-string v2, "onPlaceUserDataFetched received null DataHolder: "

    invoke-static {}, Lcom/google/android/gms/common/util/zzu;->zzvk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaly:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/location/places/zzl$zze;->zzx(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/location/places/personalized/zze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/places/personalized/zze;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/location/places/zzl$zze;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1
.end method

.method public zzap(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/PlaceBuffer;

    iget-object v1, p0, Lcom/google/android/gms/location/places/zzl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/places/PlaceBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/zzl;->zzaXk:Lcom/google/android/gms/location/places/zzl$zzc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/places/zzl$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zzbh(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzl;->zzaXj:Lcom/google/android/gms/location/places/zzl$zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzl$zzf;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
