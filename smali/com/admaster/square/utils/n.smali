.class public Lcom/admaster/square/utils/n;
.super Ljava/lang/Object;
.source "Md5Util.java"


# static fields
.field protected static a:[C

.field protected static b:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/admaster/square/utils/n;->a:[C

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/square/utils/n;->b:Ljava/security/MessageDigest;

    .line 20
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/utils/n;->b:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    goto :goto_0

    .line 14
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/n;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/admaster/square/utils/n;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    sget-object v0, Lcom/admaster/square/utils/n;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/n;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 53
    add-int v1, p1, p2

    .line 54
    :goto_0
    if-lt p1, v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    aget-byte v2, p0, p1

    invoke-static {v2, v0}, Lcom/admaster/square/utils/n;->a(BLjava/lang/StringBuffer;)V

    .line 54
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static a(BLjava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/admaster/square/utils/n;->a:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 62
    sget-object v1, Lcom/admaster/square/utils/n;->a:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    return-void
.end method

.method private static b([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/admaster/square/utils/n;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method