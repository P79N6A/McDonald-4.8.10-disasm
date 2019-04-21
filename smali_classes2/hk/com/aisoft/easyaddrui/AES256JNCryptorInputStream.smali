.class public Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;
.super Ljava/io/InputStream;
.source "AES256JNCryptorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$1;,
        Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$MacUpdateInputStream;
    }
.end annotation


# instance fields
.field private decryptionKey:Ljavax/crypto/SecretKey;

.field private endOfStreamHandled:Z

.field private hmacKey:Ljavax/crypto/SecretKey;

.field private final in:Ljava/io/InputStream;

.field private final isPasswordEncrypted:Z

.field private mac:Ljavax/crypto/Mac;

.field private password:[C

.field private pushbackInputStream:Ljava/io/PushbackInputStream;

.field private trailerIn:Lhk/com/aisoft/easyaddrui/TrailerInputStream;


# direct methods
.method private static closeIfNotNull(Ljava/io/InputStream;)V
    .locals 0
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 341
    :cond_0
    return-void
.end method

.method private completeRead(I)I
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhk/com/aisoft/easyaddrui/StreamIntegrityException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 289
    if-ne p1, v2, :cond_0

    .line 290
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->handleEndOfStream()V

    .line 301
    :goto_0
    return p1

    .line 293
    :cond_0
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->pushbackInputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 294
    .local v0, "c":I
    if-ne v0, v2, :cond_1

    .line 295
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->handleEndOfStream()V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->pushbackInputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_0
.end method

.method private handleEndOfStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhk/com/aisoft/easyaddrui/StreamIntegrityException;
        }
    .end annotation

    .prologue
    .line 311
    iget-boolean v2, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->endOfStreamHandled:Z

    if-eqz v2, :cond_1

    .line 323
    :cond_0
    return-void

    .line 315
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->endOfStreamHandled:Z

    .line 317
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->trailerIn:Lhk/com/aisoft/easyaddrui/TrailerInputStream;

    invoke-virtual {v2}, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->getTrailer()[B

    move-result-object v1

    .line 318
    .local v1, "originalHMAC":[B
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 320
    .local v0, "calculateHMAC":[B
    invoke-static {v1, v0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->arraysEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    new-instance v2, Lhk/com/aisoft/easyaddrui/StreamIntegrityException;

    const-string v3, "MAC validation failed."

    invoke-direct {v2, v3}, Lhk/com/aisoft/easyaddrui/StreamIntegrityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initializeStream()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->isPasswordEncrypted:Z

    if-eqz v13, :cond_0

    .line 106
    const/16 v6, 0x22

    .line 115
    .local v6, "headerDataSize":I
    :goto_0
    new-array v5, v6, [B

    .line 116
    .local v5, "headerData":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v13, v5}, Lhk/com/aisoft/easyaddrui/StreamUtils;->readAllBytesOrFail(Ljava/io/InputStream;[B)V

    .line 118
    const/4 v9, 0x0

    .line 119
    .local v9, "offset":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    aget-byte v12, v5, v9

    .line 121
    .local v12, "version":B
    const/4 v13, 0x3

    if-eq v12, v13, :cond_1

    .line 122
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Expected version %d but found %d."

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 111
    .end local v5    # "headerData":[B
    .end local v6    # "headerDataSize":I
    .end local v10    # "offset":I
    .end local v12    # "version":B
    :cond_0
    const/16 v6, 0x12

    .restart local v6    # "headerDataSize":I
    goto :goto_0

    .line 126
    .restart local v5    # "headerData":[B
    .restart local v10    # "offset":I
    .restart local v12    # "version":B
    :cond_1
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    aget-byte v11, v5, v10

    .line 128
    .local v11, "options":B
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->isPasswordEncrypted:Z

    if-eqz v13, :cond_4

    .line 129
    const/4 v13, 0x1

    if-eq v11, v13, :cond_2

    .line 130
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Expected password flag missing."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 133
    :cond_2
    const/16 v13, 0x8

    new-array v3, v13, [B

    .line 134
    .local v3, "decryptionSalt":[B
    const/4 v13, 0x0

    array-length v14, v3

    invoke-static {v5, v9, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    array-length v13, v3

    add-int/lit8 v9, v13, 0x2

    .line 138
    const/16 v13, 0x8

    new-array v7, v13, [B

    .line 139
    .local v7, "hmacSalt":[B
    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v5, v9, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v13, v7

    add-int/2addr v9, v13

    .line 143
    new-instance v1, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;

    invoke-direct {v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;-><init>()V

    .line 145
    .local v1, "cryptor":Lhk/com/aisoft/easyaddrui/JNCryptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->password:[C

    invoke-interface {v1, v13, v3}, Lhk/com/aisoft/easyaddrui/JNCryptor;->keyForPassword([C[B)Ljavax/crypto/SecretKey;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->decryptionKey:Ljavax/crypto/SecretKey;

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->password:[C

    invoke-interface {v1, v13, v7}, Lhk/com/aisoft/easyaddrui/JNCryptor;->keyForPassword([C[B)Ljavax/crypto/SecretKey;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->hmacKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Lhk/com/aisoft/easyaddrui/CryptorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "cryptor":Lhk/com/aisoft/easyaddrui/JNCryptor;
    .end local v3    # "decryptionSalt":[B
    .end local v7    # "hmacSalt":[B
    :cond_3
    const/16 v13, 0x10

    new-array v8, v13, [B

    .line 158
    .local v8, "iv":[B
    const/4 v13, 0x0

    array-length v14, v8

    invoke-static {v5, v9, v8, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    new-instance v13, Lhk/com/aisoft/easyaddrui/TrailerInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->in:Ljava/io/InputStream;

    const/16 v15, 0x20

    invoke-direct {v13, v14, v15}, Lhk/com/aisoft/easyaddrui/TrailerInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->trailerIn:Lhk/com/aisoft/easyaddrui/TrailerInputStream;

    .line 163
    :try_start_1
    const-string v13, "AES/CBC/PKCS7Padding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 165
    .local v2, "decryptCipher":Ljavax/crypto/Cipher;
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->decryptionKey:Ljavax/crypto/SecretKey;

    new-instance v15, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v15, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v13, v14, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 168
    const-string v13, "HmacSHA256"

    invoke-static {v13}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->mac:Ljavax/crypto/Mac;

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p0

    iget-object v14, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->hmacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v13, v14}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v13, v5}, Ljavax/crypto/Mac;->update([B)V

    .line 176
    new-instance v13, Ljava/io/PushbackInputStream;

    new-instance v14, Ljavax/crypto/CipherInputStream;

    new-instance v15, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$MacUpdateInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->trailerIn:Lhk/com/aisoft/easyaddrui/TrailerInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->mac:Ljavax/crypto/Mac;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$MacUpdateInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Mac;Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$1;)V

    invoke-direct {v14, v15, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->pushbackInputStream:Ljava/io/PushbackInputStream;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    return-void

    .line 147
    .end local v2    # "decryptCipher":Ljavax/crypto/Cipher;
    .end local v8    # "iv":[B
    .restart local v1    # "cryptor":Lhk/com/aisoft/easyaddrui/JNCryptor;
    .restart local v3    # "decryptionSalt":[B
    .restart local v7    # "hmacSalt":[B
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Lhk/com/aisoft/easyaddrui/CryptorException;
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Failed to derive keys from password."

    invoke-direct {v13, v14, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 152
    .end local v1    # "cryptor":Lhk/com/aisoft/easyaddrui/JNCryptor;
    .end local v3    # "decryptionSalt":[B
    .end local v4    # "e":Lhk/com/aisoft/easyaddrui/CryptorException;
    .end local v7    # "hmacSalt":[B
    :cond_4
    if-eqz v11, :cond_3

    .line 153
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Expected options byte to be zero."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 180
    .restart local v8    # "iv":[B
    :catch_1
    move-exception v4

    .line 181
    .local v4, "e":Ljava/security/GeneralSecurityException;
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Failed to initiate cipher."

    invoke-direct {v13, v14, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    :try_start_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->pushbackInputStream:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->closeIfNotNull(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->trailerIn:Lhk/com/aisoft/easyaddrui/TrailerInputStream;

    invoke-static {v0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->closeIfNotNull(Ljava/io/InputStream;)V

    .line 335
    return-void

    .line 333
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->trailerIn:Lhk/com/aisoft/easyaddrui/TrailerInputStream;

    invoke-static {v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->closeIfNotNull(Ljava/io/InputStream;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhk/com/aisoft/easyaddrui/StreamIntegrityException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->trailerIn:Lhk/com/aisoft/easyaddrui/TrailerInputStream;

    if-nez v1, :cond_0

    .line 200
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->initializeStream()V

    .line 203
    :cond_0
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->pushbackInputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 204
    .local v0, "result":I
    invoke-direct {p0, v0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->completeRead(I)I

    move-result v1

    return v1
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhk/com/aisoft/easyaddrui/StreamIntegrityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 226
    const-string v0, "Array cannot be null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    const-string v1, "Byte array cannot be null."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    if-ltz p2, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Offset cannot be negative."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 263
    if-ltz p3, :cond_1

    move v1, v2

    :goto_1
    const-string v4, "Length cannot be negative."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 264
    add-int v1, p3, p2

    array-length v4, p1

    if-gt v1, v4, :cond_2

    :goto_2
    const-string v1, "Length plus offset cannot be longer than byte array."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    if-nez p3, :cond_3

    .line 276
    :goto_3
    return v3

    :cond_0
    move v1, v3

    .line 262
    goto :goto_0

    :cond_1
    move v1, v3

    .line 263
    goto :goto_1

    :cond_2
    move v2, v3

    .line 264
    goto :goto_2

    .line 271
    :cond_3
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->trailerIn:Lhk/com/aisoft/easyaddrui/TrailerInputStream;

    if-nez v1, :cond_4

    .line 272
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->initializeStream()V

    .line 275
    :cond_4
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->pushbackInputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    .line 276
    .local v0, "result":I
    invoke-direct {p0, v0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;->completeRead(I)I

    move-result v3

    goto :goto_3
.end method
