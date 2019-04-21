.class public Lcom/rdisoftware/security/RdiSecurityCrypto;
.super Ljava/lang/Object;
.source "RdiSecurityCrypto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final base64StringEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 68
    .local v0, "encodedBytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v6, ""

    .line 45
    .local v6, "stringMD5":Ljava/lang/String;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 46
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 47
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 50
    .local v5, "messageDigest":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v4, "hexString":Ljava/lang/StringBuilder;
    array-length v8, v5

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 63
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "hexString":Ljava/lang/StringBuilder;
    .end local v5    # "messageDigest":[B
    :goto_1
    return-object v6

    .line 51
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v4    # "hexString":Ljava/lang/StringBuilder;
    .restart local v5    # "messageDigest":[B
    :cond_0
    aget-byte v0, v5, v7

    .line 52
    .local v0, "aMessageDigest":B
    and-int/lit16 v9, v0, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "h":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_1

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 54
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 59
    .end local v0    # "aMessageDigest":B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "h":Ljava/lang/String;
    .end local v4    # "hexString":Ljava/lang/StringBuilder;
    .end local v5    # "messageDigest":[B
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final computeHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "applicationVersion"    # Ljava/lang/String;
    .param p3, "applicationNonce"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=PA64E47237FC34714AF852B795DAF8DEC\\o/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    const-string v2, "o|o"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    const-string v2, "=/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "params":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/rdisoftware/security/RdiSecurityCrypto;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/rdisoftware/security/RdiSecurityCrypto;->base64StringEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    return-object v0
.end method
