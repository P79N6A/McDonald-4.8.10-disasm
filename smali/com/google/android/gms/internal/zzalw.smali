.class public Lcom/google/android/gms/internal/zzalw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zzbZl:[C


# instance fields
.field private final in:Ljava/io/Reader;

.field private pos:I

.field private zzbZo:I

.field private zzbZp:I

.field private zzbZq:I

.field private zzbZu:[I

.field private zzbZv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzalw;->zzbZl:[C

    new-instance v0, Lcom/google/android/gms/internal/zzalw$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalw$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalb;->zzbXe:Lcom/google/android/gms/internal/zzalb;

    return-void
.end method

.method private getColumnNumber()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzalw;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzalw;->zzbZp:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzalw;->zzbZo:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzalw;->zzbZq:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalw;->zzbZu:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzalw;->zzbZv:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalw;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalw;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalw;->getColumnNumber()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
