.class public final Lcom/google/android/gms/location/places/internal/PlaceEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/location/places/Place;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/internal/zzl;


# instance fields
.field private final mName:Ljava/lang/String;

.field final mVersionCode:I

.field private final zzBc:Ljava/lang/String;

.field private final zzaCQ:Ljava/lang/String;

.field private final zzaWq:Lcom/google/android/gms/maps/model/LatLng;

.field private final zzaWr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWs:Ljava/lang/String;

.field private final zzaWt:Landroid/net/Uri;

.field private zzaXJ:Ljava/util/Locale;

.field private final zzaXN:Landroid/os/Bundle;

.field private final zzaXO:Lcom/google/android/gms/location/places/internal/PlaceLocalization;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzaXP:F

.field private final zzaXQ:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final zzaXR:Ljava/lang/String;

.field private final zzaXS:Z

.field private final zzaXT:F

.field private final zzaXU:I

.field private final zzaXV:J

.field private final zzaXW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaXX:Ljava/lang/String;

.field private final zzaXY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaXZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaYa:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->CREATOR:Lcom/google/android/gms/location/places/internal/zzl;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJLcom/google/android/gms/location/places/internal/PlaceLocalization;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "F",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZFIJ",
            "Lcom/google/android/gms/location/places/internal/PlaceLocalization;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzBc:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWr:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXW:Ljava/util/List;

    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXN:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaCQ:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWs:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXX:Ljava/lang/String;

    if-eqz p10, :cond_1

    :goto_1
    iput-object p10, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXY:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWq:Lcom/google/android/gms/maps/model/LatLng;

    iput p12, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXP:F

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXQ:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz p14, :cond_2

    :goto_2
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXR:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWt:Landroid/net/Uri;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXS:Z

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXT:F

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXU:I

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXV:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXZ:Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaYa:Ljava/util/TimeZone;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXJ:Ljava/util/Locale;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXO:Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    return-void

    :cond_0
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p10

    goto :goto_1

    :cond_2
    const-string p14, "UTC"

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzBc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzBc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXJ:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXJ:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXV:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXV:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getAddress()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaCQ:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzBc:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWq:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPhoneNumber()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWs:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWr:Ljava/util/List;

    return-object v0
.end method

.method public getPriceLevel()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXU:I

    return v0
.end method

.method public getRating()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXT:F

    return v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXQ:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWt:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzBc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXJ:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzz;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzz;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzBc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "placeTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWr:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXJ:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "address"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaCQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWq:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string/jumbo v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXQ:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string/jumbo v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaWt:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXS:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "timestampSecs"

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzz$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzl;->zza(Lcom/google/android/gms/location/places/internal/PlaceEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXW:Ljava/util/List;

    return-object v0
.end method

.method public zzCX()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXP:F

    return v0
.end method

.method public zzCY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXX:Ljava/lang/String;

    return-object v0
.end method

.method public zzCZ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXY:Ljava/util/List;

    return-object v0
.end method

.method public zzDa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXS:Z

    return v0
.end method

.method public zzDb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXV:J

    return-wide v0
.end method

.method public zzDc()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXN:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzDd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXR:Ljava/lang/String;

    return-object v0
.end method

.method public zzDe()Lcom/google/android/gms/location/places/internal/PlaceLocalization;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaXO:Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    return-object v0
.end method
