.class Lcom/google/android/gms/tagmanager/zzcl;
.super Lcom/google/android/gms/tagmanager/zzal;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzbql:Ljava/lang/String;

.field private static final zzbqm:Ljava/lang/String;

.field private static final zzbqn:Ljava/lang/String;

.field private static final zzbqo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzch:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcl;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzeb:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcl;->zzbql:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzec:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcl;->zzbqm:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfV:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcl;->zzbqn:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfP:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcl;->zzbqo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcl;->ID:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzcl;->zzbql:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/zzcl;->zzbqm:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzal;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzJf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzV(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzag$zza;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcl;->zzbql:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcl;->zzbqm:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v2

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 v3, 0x40

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcl;->zzbqn:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdl;->zzk(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x42

    move v3, v2

    :cond_2
    const/4 v4, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcl;->zzbqo:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdl;->zzi(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKO()Ljava/lang/Long;

    move-result-object v4

    if-ne v2, v4, :cond_3

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    if-gez v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v2, v4

    :cond_5
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lt v3, v2, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_0
.end method
