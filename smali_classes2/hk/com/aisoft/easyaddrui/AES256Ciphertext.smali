.class abstract Lhk/com/aisoft/easyaddrui/AES256Ciphertext;
.super Ljava/lang/Object;
.source "AES256Ciphertext.java"


# instance fields
.field private final ciphertext:[B

.field private final encryptionSalt:[B

.field private hmac:[B

.field private final hmacSalt:[B

.field private final isPasswordBased:Z

.field private final iv:[B

.field private final options:B

.field private final version:I


# direct methods
.method constructor <init>([B[B[B[B)V
    .locals 3
    .param p1, "encryptionSalt"    # [B
    .param p2, "hmacSalt"    # [B
    .param p3, "iv"    # [B
    .param p4, "ciphertext"    # [B

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, "encryption salt"

    invoke-static {p1, v0, v1}, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->validateLength([BLjava/lang/String;I)V

    .line 142
    const-string v0, "HMAC salt"

    invoke-static {p2, v0, v1}, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->validateLength([BLjava/lang/String;I)V

    .line 143
    const-string v0, "IV"

    const/16 v1, 0x10

    invoke-static {p3, v0, v1}, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->validateLength([BLjava/lang/String;I)V

    .line 145
    invoke-virtual {p0}, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->getVersionNumber()I

    move-result v0

    iput v0, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->version:I

    .line 146
    iput-byte v2, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->options:B

    .line 147
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    .line 148
    iput-object p2, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    .line 149
    iput-object p3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    .line 150
    iput-object p4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    .line 151
    iput-boolean v2, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->isPasswordBased:Z

    .line 154
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    .line 155
    return-void
.end method

.method private static validateLength([BLjava/lang/String;I)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 200
    array-length v0, p0

    if-eq v0, p2, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid %s length. Expected %d bytes but found %d."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    if-ne p0, p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 362
    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 365
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 367
    check-cast v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;

    .line 368
    .local v0, "other":Lhk/com/aisoft/easyaddrui/AES256Ciphertext;
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    iget-object v4, v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 369
    goto :goto_0

    .line 371
    :cond_4
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    iget-object v4, v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 372
    goto :goto_0

    .line 374
    :cond_5
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    iget-object v4, v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 375
    goto :goto_0

    .line 377
    :cond_6
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    iget-object v4, v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 378
    goto :goto_0

    .line 380
    :cond_7
    iget-boolean v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->isPasswordBased:Z

    iget-boolean v4, v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->isPasswordBased:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 381
    goto :goto_0

    .line 383
    :cond_8
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    iget-object v4, v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 384
    goto :goto_0

    .line 386
    :cond_9
    iget-byte v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->options:B

    iget-byte v4, v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->options:B

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 387
    goto :goto_0

    .line 389
    :cond_a
    iget v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->version:I

    iget v4, v0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->version:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 390
    goto :goto_0
.end method

.method getDataToHMAC()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-virtual {p0}, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->getRawData()[B

    move-result-object v0

    .line 263
    .local v0, "rawData":[B
    array-length v2, v0

    add-int/lit8 v2, v2, -0x20

    new-array v1, v2, [B

    .line 264
    .local v1, "result":[B
    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    return-object v1
.end method

.method getRawData()[B
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 215
    const/4 v3, 0x2

    new-array v1, v3, [B

    invoke-virtual {p0}, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->getVersionNumber()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    aput-byte v6, v1, v4

    .line 217
    .local v1, "header":[B
    iget-boolean v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->isPasswordBased:Z

    if-eqz v3, :cond_0

    .line 218
    aget-byte v3, v1, v4

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 224
    :cond_0
    iget-boolean v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->isPasswordBased:Z

    if-eqz v3, :cond_1

    .line 225
    array-length v3, v1

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    array-length v4, v4

    add-int v0, v3, v4

    .line 231
    .local v0, "dataSize":I
    :goto_0
    new-array v2, v0, [B

    .line 233
    .local v2, "result":[B
    array-length v3, v1

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-boolean v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->isPasswordBased:Z

    if-eqz v3, :cond_2

    .line 236
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    array-length v4, v1

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    array-length v4, v1

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v4, v1

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    array-length v4, v1

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    array-length v4, v1

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    :goto_1
    return-object v2

    .line 228
    .end local v0    # "dataSize":I
    .end local v2    # "result":[B
    :cond_1
    array-length v3, v1

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    array-length v4, v4

    add-int v0, v3, v4

    .restart local v0    # "dataSize":I
    goto :goto_0

    .line 248
    .restart local v2    # "result":[B
    :cond_2
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v4, v1

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    array-length v4, v1

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    array-length v4, v1

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    array-length v5, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method abstract getVersionNumber()I
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 343
    const/16 v0, 0x1f

    .line 344
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 345
    .local v1, "result":I
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->ciphertext:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 346
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->encryptionSalt:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 347
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 348
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmacSalt:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 349
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->isPasswordBased:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int v1, v3, v2

    .line 350
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->iv:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 351
    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->options:B

    add-int v1, v2, v3

    .line 352
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->version:I

    add-int v1, v2, v3

    .line 353
    return v1

    .line 349
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0
.end method

.method setHmac([B)V
    .locals 0
    .param p1, "hmac"    # [B

    .prologue
    .line 333
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;->hmac:[B

    .line 334
    return-void
.end method
