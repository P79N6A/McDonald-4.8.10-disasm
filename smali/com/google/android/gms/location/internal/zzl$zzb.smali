.class final Lcom/google/android/gms/location/internal/zzl$zzb;
.super Lcom/google/android/gms/location/internal/zzh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private zzaWd:Lcom/google/android/gms/internal/zznt$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zznt$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zznt$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zznt$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/internal/zzh$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzl$zzb;->zzaWd:Lcom/google/android/gms/internal/zznt$zzb;

    return-void
.end method

.method private zzif(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl$zzb;->zzaWd:Lcom/google/android/gms/internal/zznt$zzb;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->zzib(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/location/LocationStatusCodes;->zzic(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzl$zzb;->zzaWd:Lcom/google/android/gms/internal/zznt$zzb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zznt$zzb;->setResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzl$zzb;->zzaWd:Lcom/google/android/gms/internal/zznt$zzb;

    goto :goto_0
.end method


# virtual methods
.method public zza(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/internal/zzl$zzb;->zzif(I)V

    return-void
.end method

.method public zza(I[Ljava/lang/String;)V
    .locals 2

    const-string v0, "LocationClientImpl"

    const-string v1, "Unexpected call to onAddGeofencesResult"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public zzb(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/internal/zzl$zzb;->zzif(I)V

    return-void
.end method
