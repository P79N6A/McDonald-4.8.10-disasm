.class Lcom/threatmetrix/TrustDefender/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[C

.field private static final c:Ljava/security/MessageDigest;

.field private static final d:Ljava/security/MessageDigest;

.field private static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v1, Lcom/threatmetrix/TrustDefender/ai;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    .line 21
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefender/ai;->b:[C

    .line 25
    const-string v1, "^[a-zA-Z0-9]{8}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefender/ai;->e:Ljava/util/regex/Pattern;

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "temp":Ljava/security/MessageDigest;
    sget-object v1, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    const-string v2, "Getting SHA1 digest"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    sput-object v0, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    .line 48
    const/4 v0, 0x0

    .line 50
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    sget-object v1, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    const-string v2, "Getting MD5 digest"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 62
    :cond_0
    :goto_1
    sput-object v0, Lcom/threatmetrix/TrustDefender/ai;->c:Ljava/security/MessageDigest;

    .line 63
    return-void

    .line 43
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    goto :goto_0

    .line 59
    :catch_1
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 276
    sget-object v1, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    .line 277
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v0, "uuid":Ljava/util/UUID;
    :goto_0
    return-object v1

    .line 282
    .end local v0    # "uuid":Ljava/util/UUID;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 284
    .restart local v0    # "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 73
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    sget-object v0, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 240
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v8

    invoke-virtual {v8, p0, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    :goto_0
    return-object v8

    .line 242
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "lengthString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-array v0, v8, [B

    .line 246
    .local v0, "buffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 247
    .local v6, "k_len":I
    const/4 v4, 0x0

    .line 248
    .local v4, "index":I
    const/4 v1, 0x0

    .line 251
    .local v1, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 253
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .local v2, "c":I
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    and-int/lit8 v9, v9, 0xa

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 254
    if-lt v5, v6, :cond_4

    const/4 v4, 0x0

    .line 251
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    .end local v2    # "c":I
    .restart local v1    # "c":I
    goto :goto_1

    .line 259
    :cond_1
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 261
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .restart local v2    # "c":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    and-int/lit8 v9, v9, 0xa

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 263
    if-lt v5, v6, :cond_3

    const/4 v4, 0x0

    .line 259
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    .end local v2    # "c":I
    .restart local v1    # "c":I
    goto :goto_3

    .line 266
    :cond_2
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->a([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .end local v1    # "c":I
    .end local v4    # "index":I
    .restart local v2    # "c":I
    .restart local v5    # "index":I
    :cond_3
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_4
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2
.end method

.method static a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "addTrailingSep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    .local v1, "l":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 367
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 373
    .end local v1    # "l":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 374
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 220
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 221
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 223
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 224
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/threatmetrix/TrustDefender/ai;->b:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 225
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/threatmetrix/TrustDefender/ai;->b:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method static a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "hashable"    # Z
    .param p2, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 454
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 456
    :cond_0
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_1
    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    :cond_0
    const-string v1, ""

    .line 114
    :cond_1
    :goto_0
    return-object v1

    .line 94
    :cond_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 100
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/threatmetrix/TrustDefender/ai;->c:Ljava/security/MessageDigest;

    if-eqz v2, :cond_4

    .line 102
    sget-object v3, Lcom/threatmetrix/TrustDefender/ai;->c:Ljava/security/MessageDigest;

    monitor-enter v3

    .line 104
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefender/ai;->c:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 106
    sget-object v2, Lcom/threatmetrix/TrustDefender/ai;->c:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 107
    .local v0, "outputData":[B
    sget-object v2, Lcom/threatmetrix/TrustDefender/ai;->c:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 110
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->a([B)Ljava/lang/String;

    move-result-object v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "outputData":[B
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 114
    :cond_4
    const-string v1, ""

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    return-object v1

    .line 309
    :cond_1
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 310
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 313
    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    const-string v0, ""

    .line 210
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const/4 v2, 0x0

    .line 161
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 165
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 170
    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    .line 173
    const/16 v6, 0x1000

    new-array v1, v6, [B

    .line 175
    .local v1, "dataBytes":[B
    sget-object v7, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    monitor-enter v7

    .line 177
    const/4 v5, 0x0

    .line 181
    .local v5, "nread":I
    :goto_2
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 182
    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 187
    :catch_0
    move-exception v6

    :try_start_2
    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    :goto_3
    :try_start_4
    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 202
    .local v4, "mdbytes":[B
    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 203
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/ai;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "crc":Ljava/lang/String;
    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    goto :goto_0

    .line 193
    .end local v0    # "crc":Ljava/lang/String;
    .end local v4    # "mdbytes":[B
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 197
    :catch_1
    move-exception v6

    :try_start_6
    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    goto :goto_3

    :catch_2
    move-exception v6

    sget-object v6, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 191
    :catchall_0
    move-exception v6

    .line 193
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 198
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 203
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 197
    :catch_3
    move-exception v8

    :try_start_9
    sget-object v8, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 210
    .end local v1    # "dataBytes":[B
    .end local v5    # "nread":I
    :cond_2
    const-string v0, ""

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method static d(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 325
    .local v4, "query_pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "&"

    invoke-static {p0, v5}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 326
    .local v3, "pairs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    .local v2, "pair":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, "idx":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v5

    sget-object v5, Lcom/threatmetrix/TrustDefender/ai;->a:Ljava/lang/String;

    goto :goto_0

    .line 338
    .end local v1    # "idx":I
    .end local v2    # "pair":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method static e(Ljava/lang/String;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 380
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f(Ljava/lang/String;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 385
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "len":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    const/16 v4, 0x80

    if-ge v2, v4, :cond_5

    .line 403
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 404
    .local v0, "ch":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-le v0, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7a

    if-le v0, v4, :cond_2

    :cond_1
    const/16 v4, 0x5f

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_4

    .line 406
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v2, v2, 0x1

    .line 401
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_3

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_3

    .line 412
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    .end local v0    # "ch":C
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "plain"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->k(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    .line 436
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    .line 439
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    const-string v3, ""

    .line 501
    :goto_0
    return-object v3

    .line 476
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v2, "result":Ljava/lang/StringBuilder;
    const-string v3, "UTF8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 479
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 492
    aget-byte v3, v0, v1

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    aget-byte v3, v0, v1

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2

    .line 494
    :cond_1
    const-string v3, "\\x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v0, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    :cond_2
    aget-byte v3, v0, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 501
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static j(Ljava/lang/String;)Z
    .locals 1
    .param p0, "orgId"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/ai;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 125
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    :cond_0
    const-string v1, ""

    .line 147
    :cond_1
    :goto_0
    return-object v1

    .line 128
    :cond_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 134
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    if-eqz v2, :cond_4

    .line 136
    sget-object v3, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    monitor-enter v3

    .line 138
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    sget-object v2, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 141
    .local v0, "outputData":[B
    sget-object v2, Lcom/threatmetrix/TrustDefender/ai;->d:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 144
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->a([B)Ljava/lang/String;

    move-result-object v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    .end local v0    # "outputData":[B
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 147
    :cond_4
    const-string v1, ""

    goto :goto_0
.end method
