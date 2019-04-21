.class public final Lcom/google/android/gms/location/Geofence$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzII:Ljava/lang/String;

.field private zzaUS:I

.field private zzaUT:J

.field private zzaUU:S

.field private zzaUY:I

.field private zzaUZ:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzII:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaUS:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaUT:J

    iput-short v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaUU:S

    iput v3, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaUY:I

    iput v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaUZ:I

    return-void
.end method
