.class final Lcom/google/android/gms/internal/zzalu$18;
.super Lcom/google/android/gms/internal/zzakr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzalu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzakr",
        "<",
        "Lcom/google/android/gms/internal/zzakf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakr;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaly;Lcom/google/android/gms/internal/zzakf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzakf;->zzVI()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWk()Lcom/google/android/gms/internal/zzaly;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzakf;->zzVH()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzakf;->zzVL()Lcom/google/android/gms/internal/zzakl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakl;->zzVO()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakl;->zzVz()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaly;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaly;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakl;->zzVN()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakl;->zzVE()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaly;->zzaX(Z)Lcom/google/android/gms/internal/zzaly;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakl;->zzVA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaly;->zziU(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaly;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzakf;->zzVF()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWg()Lcom/google/android/gms/internal/zzaly;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzakf;->zzVK()Lcom/google/android/gms/internal/zzakc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakc;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzakf;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzalu$18;->zza(Lcom/google/android/gms/internal/zzaly;Lcom/google/android/gms/internal/zzakf;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWh()Lcom/google/android/gms/internal/zzaly;

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzakf;->zzVG()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWi()Lcom/google/android/gms/internal/zzaly;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzakf;->zzVJ()Lcom/google/android/gms/internal/zzaki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaki;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaly;->zziT(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaly;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzakf;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzalu$18;->zza(Lcom/google/android/gms/internal/zzaly;Lcom/google/android/gms/internal/zzakf;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWj()Lcom/google/android/gms/internal/zzaly;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/zzakf;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzalu$18;->zza(Lcom/google/android/gms/internal/zzaly;Lcom/google/android/gms/internal/zzakf;)V

    return-void
.end method
