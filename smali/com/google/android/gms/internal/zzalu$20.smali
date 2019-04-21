.class final Lcom/google/android/gms/internal/zzalu$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzalu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzbXc:Lcom/google/android/gms/internal/zzalv;

.field final synthetic zzbZa:Lcom/google/android/gms/internal/zzakr;


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalu$20;->zzbXc:Lcom/google/android/gms/internal/zzalv;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzalv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalu$20;->zzbZa:Lcom/google/android/gms/internal/zzakr;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
