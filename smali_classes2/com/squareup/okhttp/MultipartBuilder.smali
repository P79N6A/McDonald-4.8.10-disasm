.class public final Lcom/squareup/okhttp/MultipartBuilder;
.super Ljava/lang/Object;
.source "MultipartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lcom/squareup/okhttp/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lcom/squareup/okhttp/MediaType;

.field public static final FORM:Lcom/squareup/okhttp/MediaType;

.field public static final MIXED:Lcom/squareup/okhttp/MediaType;

.field public static final PARALLEL:Lcom/squareup/okhttp/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/squareup/okhttp/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 38
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->MIXED:Lcom/squareup/okhttp/MediaType;

    .line 45
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->ALTERNATIVE:Lcom/squareup/okhttp/MediaType;

    .line 53
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->DIGEST:Lcom/squareup/okhttp/MediaType;

    .line 60
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->PARALLEL:Lcom/squareup/okhttp/MediaType;

    .line 68
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->COLONSPACE:[B

    .line 71
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B

    .line 72
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->DASHDASH:[B

    return-void

    .line 70
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 71
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 72
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->MIXED:Lcom/squareup/okhttp/MediaType;

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->type:Lcom/squareup/okhttp/MediaType;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    .line 92
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->boundary:Lokio/ByteString;

    .line 93
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->DASHDASH:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B

    return-object v0
.end method

.method static synthetic access$200()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->COLONSPACE:[B

    return-object v0
.end method
