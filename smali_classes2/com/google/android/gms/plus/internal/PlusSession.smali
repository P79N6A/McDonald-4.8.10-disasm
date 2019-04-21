.class public Lcom/google/android/gms/plus/internal/PlusSession;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/zzh;


# instance fields
.field private final mVersionCode:I

.field private final zzaaR:Ljava/lang/String;

.field private final zzahC:Ljava/lang/String;

.field private final zzblD:[Ljava/lang/String;

.field private final zzblE:[Ljava/lang/String;

.field private final zzblF:[Ljava/lang/String;

.field private final zzblG:Ljava/lang/String;

.field private final zzblH:Ljava/lang/String;

.field private final zzblI:Ljava/lang/String;

.field private final zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/PlusSession;->CREATOR:Lcom/google/android/gms/plus/internal/zzh;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaaR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblD:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblE:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblF:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblG:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblH:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzahC:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblI:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaaR:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblD:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblE:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblF:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblG:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblH:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzahC:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblI:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/plus/internal/PlusSession;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/internal/PlusSession;

    iget v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaaR:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzaaR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblD:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzblD:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblE:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzblE:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblF:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzblF:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblG:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzblG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblH:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzblH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzahC:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzahC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblI:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzblI:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusSession;->zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaaR:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaaR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblD:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblE:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblF:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblH:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzahC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzz;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzz;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzaaR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "requestedScopes"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblD:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "visibleActivities"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblE:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "requiredFeatures"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblF:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "packageNameForAuth"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "callingPackageName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "applicationName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzahC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string v1, "extra"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzz$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/zzh;->zza(Lcom/google/android/gms/plus/internal/PlusSession;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzIp()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblD:[Ljava/lang/String;

    return-object v0
.end method

.method public zzIq()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblE:[Ljava/lang/String;

    return-object v0
.end method

.method public zzIr()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblF:[Ljava/lang/String;

    return-object v0
.end method

.method public zzIs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblG:Ljava/lang/String;

    return-object v0
.end method

.method public zzIt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblH:Ljava/lang/String;

    return-object v0
.end method

.method public zzIu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblI:Ljava/lang/String;

    return-object v0
.end method

.method public zzIv()Lcom/google/android/gms/plus/internal/PlusCommonExtras;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-object v0
.end method

.method public zzIw()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzblJ:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzL(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public zzqg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusSession;->zzahC:Ljava/lang/String;

    return-object v0
.end method