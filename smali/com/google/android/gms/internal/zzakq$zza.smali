.class Lcom/google/android/gms/internal/zzakq$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzakq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzbWC:Lcom/google/android/gms/internal/zzalv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzalv",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzbWD:Z

.field private final zzbWE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzbWx:Lcom/google/android/gms/internal/zzakn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzakn",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzbWy:Lcom/google/android/gms/internal/zzake;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzake",
            "<*>;"
        }
    .end annotation
.end field


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzajz;",
            "Lcom/google/android/gms/internal/zzalv",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzakr",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakq$zza;->zzbWC:Lcom/google/android/gms/internal/zzalv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakq$zza;->zzbWC:Lcom/google/android/gms/internal/zzalv;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzalv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakq$zza;->zzbWD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakq$zza;->zzbWC:Lcom/google/android/gms/internal/zzalv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalv;->zzWm()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzalv;->zzWl()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzakq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakq$zza;->zzbWx:Lcom/google/android/gms/internal/zzakn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakq$zza;->zzbWy:Lcom/google/android/gms/internal/zzake;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzakq;-><init>(Lcom/google/android/gms/internal/zzakn;Lcom/google/android/gms/internal/zzake;Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzakq$1;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakq$zza;->zzbWE:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzalv;->zzWl()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method
