.class public Lcom/mcdonalds/sdk/services/network/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# static fields
.field private static final HEX:[C

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/mcdonalds/sdk/services/network/CacheUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/network/CacheUtils;->LOG_TAG:Ljava/lang/String;

    .line 20
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/network/CacheUtils;->HEX:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 98
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 99
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 100
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 101
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/mcdonalds/sdk/services/network/CacheUtils;->HEX:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 102
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/mcdonalds/sdk/services/network/CacheUtils;->HEX:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 33
    if-eqz p0, :cond_4

    .line 35
    const/4 v1, 0x0

    .line 41
    .local v1, "cachePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 42
    .local v3, "internal":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 47
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 49
    .local v2, "dirs":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 58
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "cachePath":Ljava/lang/String;
    .end local v2    # "dirs":Z
    .end local v3    # "internal":Ljava/io/File;
    :goto_1
    return-object v0

    .line 48
    .restart local v0    # "cacheFile":Ljava/io/File;
    .restart local v1    # "cachePath":Ljava/lang/String;
    .restart local v3    # "internal":Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_3
    move-object v0, v4

    .line 54
    goto :goto_1

    .end local v1    # "cachePath":Ljava/lang/String;
    .end local v3    # "internal":Ljava/io/File;
    :cond_4
    move-object v0, v4

    .line 58
    goto :goto_1
.end method

.method public static getOrderCacheFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/persistantOrder"

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/network/CacheUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/Order.obj"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "MD5"

    .line 81
    .local v0, "MD5":Ljava/lang/String;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 82
    .local v1, "digestor":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 84
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/network/CacheUtils;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .end local v1    # "digestor":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v2

    .line 93
    const-string v2, ""

    goto :goto_0
.end method
