.class final Lcom/google/android/gms/internal/zzalg$zza;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzalg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzalg$zza$zza;
    }
.end annotation


# instance fields
.field private final zzbXw:Ljava/lang/Appendable;

.field private final zzbXx:Lcom/google/android/gms/internal/zzalg$zza$zza;


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalg$zza;->zzbXw:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalg$zza;->zzbXx:Lcom/google/android/gms/internal/zzalg$zza$zza;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzalg$zza$zza;->zzbXy:[C

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalg$zza;->zzbXw:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalg$zza;->zzbXx:Lcom/google/android/gms/internal/zzalg$zza$zza;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method