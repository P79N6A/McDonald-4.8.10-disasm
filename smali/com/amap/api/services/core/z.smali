.class public Lcom/amap/api/services/core/z;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static final a:[C

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 19
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/api/services/core/z;->a:[C

    .line 27
    new-array v0, v3, [B

    sput-object v0, Lcom/amap/api/services/core/z;->b:[B

    .line 28
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 29
    sget-object v1, Lcom/amap/api/services/core/z;->b:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 32
    sget-object v1, Lcom/amap/api/services/core/z;->b:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 35
    sget-object v1, Lcom/amap/api/services/core/z;->b:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 37
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 38
    sget-object v1, Lcom/amap/api/services/core/z;->b:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 40
    :cond_3
    sget-object v0, Lcom/amap/api/services/core/z;->b:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 41
    sget-object v0, Lcom/amap/api/services/core/z;->b:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 42
    return-void

    .line 19
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/services/core/z;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/z;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "Encrypt"

    const-string v2, "encodeBase64"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([BLjava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 131
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method static a([B[B)[B
    .locals 3

    .prologue
    .line 53
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/services/core/z;->b([B[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "Encrypt"

    const-string v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 73
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    const-string v1, "Encrypt"

    const-string v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 60
    :catch_2
    move-exception v0

    .line 61
    const-string v1, "Encrypt"

    const-string v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 63
    :catch_3
    move-exception v0

    .line 64
    const-string v1, "Encrypt"

    const-string v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 66
    :catch_4
    move-exception v0

    .line 67
    const-string v1, "Encrypt"

    const-string v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 69
    :catch_5
    move-exception v0

    .line 70
    const-string v1, "Encrypt"

    const-string v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/z;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 9

    .prologue
    const/16 v8, 0x3d

    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 144
    if-nez p0, :cond_0

    .line 145
    new-array v0, v0, [B

    .line 199
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 149
    array-length v3, v2

    .line 150
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 154
    :goto_1
    if-ge v0, v3, :cond_2

    .line 158
    :goto_2
    sget-object v5, Lcom/amap/api/services/core/z;->b:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    aget-byte v5, v5, v0

    .line 159
    if-ge v1, v3, :cond_1

    if-eq v5, v7, :cond_c

    .line 160
    :cond_1
    if-ne v5, v7, :cond_4

    .line 199
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v0

    .line 166
    :cond_4
    sget-object v6, Lcom/amap/api/services/core/z;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    aget-byte v6, v6, v1

    .line 167
    if-ge v0, v3, :cond_5

    if-eq v6, v7, :cond_3

    .line 168
    :cond_5
    if-eq v6, v7, :cond_2

    .line 171
    shl-int/lit8 v1, v5, 0x2

    and-int/lit8 v5, v6, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    :goto_3
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    .line 176
    if-ne v0, v8, :cond_6

    .line 177
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_6
    sget-object v5, Lcom/amap/api/services/core/z;->b:[B

    aget-byte v5, v5, v0

    .line 180
    if-ge v1, v3, :cond_7

    if-eq v5, v7, :cond_b

    .line 181
    :cond_7
    if-eq v5, v7, :cond_2

    .line 184
    and-int/lit8 v0, v6, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v6, v5, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v0, v6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    :goto_4
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    .line 189
    if-ne v1, v8, :cond_8

    .line 190
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_8
    sget-object v6, Lcom/amap/api/services/core/z;->b:[B

    aget-byte v1, v6, v1

    .line 193
    if-ge v0, v3, :cond_9

    if-eq v1, v7, :cond_a

    .line 194
    :cond_9
    if-eq v1, v7, :cond_2

    .line 197
    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_a
    move v1, v0

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_3

    :cond_c
    move v0, v1

    goto :goto_2
.end method

.method private static b([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 103
    .line 105
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 106
    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 110
    return-object v0
.end method

.method private static c([B)Ljava/lang/String;
    .locals 8

    .prologue
    .line 204
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    array-length v2, p0

    .line 206
    const/4 v0, 0x0

    .line 209
    :goto_0
    if-ge v0, v2, :cond_0

    .line 210
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    .line 212
    if-ne v3, v2, :cond_1

    .line 213
    sget-object v0, Lcom/amap/api/services/core/z;->a:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    sget-object v0, Lcom/amap/api/services/core/z;->a:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 215
    const-string v0, "=="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    :cond_1
    add-int/lit8 v5, v3, 0x1

    aget-byte v0, p0, v3

    and-int/lit16 v3, v0, 0xff

    .line 219
    if-ne v5, v2, :cond_2

    .line 220
    sget-object v0, Lcom/amap/api/services/core/z;->a:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    sget-object v0, Lcom/amap/api/services/core/z;->a:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    sget-object v0, Lcom/amap/api/services/core/z;->a:[C

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 227
    :cond_2
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 228
    sget-object v6, Lcom/amap/api/services/core/z;->a:[C

    ushr-int/lit8 v7, v4, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    sget-object v6, Lcom/amap/api/services/core/z;->a:[C

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    aget-char v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    sget-object v4, Lcom/amap/api/services/core/z;->a:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v5, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    sget-object v3, Lcom/amap/api/services/core/z;->a:[C

    and-int/lit8 v4, v5, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
