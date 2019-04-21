.class public Lhk/com/aisoft/easyaddrui/AES256JNCryptor;
.super Ljava/lang/Object;
.source "AES256JNCryptor.java"

# interfaces
.implements Lhk/com/aisoft/easyaddrui/JNCryptor;


# static fields
.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private iterations:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/16 v0, 0x64

    iput v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->iterations:I

    .line 136
    return-void
.end method

.method static arraysEqual([B[B)Z
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    .line 454
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 455
    const/4 v1, 0x0

    .line 464
    :cond_0
    return v1

    .line 458
    :cond_1
    const/4 v1, 0x1

    .line 459
    .local v1, "isEqual":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 460
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_2

    .line 461
    const/4 v1, 0x0

    .line 459
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getSecureRandomData(I)[B
    .locals 2
    .param p0, "length"    # I

    .prologue
    .line 372
    new-array v0, p0, [B

    .line 373
    .local v0, "result":[B
    sget-object v1, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 374
    return-object v0
.end method


# virtual methods
.method encryptData([BLhk/com/aisoft/easyaddrui/PasswordKey;Lhk/com/aisoft/easyaddrui/PasswordKey;[B)[B
    .locals 9
    .param p1, "plaintext"    # [B
    .param p2, "encryptionKey"    # Lhk/com/aisoft/easyaddrui/PasswordKey;
    .param p3, "hmacKey"    # Lhk/com/aisoft/easyaddrui/PasswordKey;
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhk/com/aisoft/easyaddrui/CryptorException;
        }
    .end annotation

    .prologue
    .line 480
    :try_start_0
    const-string v6, "AES/CBC/PKCS7Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 481
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {p2}, Lhk/com/aisoft/easyaddrui/PasswordKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 482
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 484
    .local v1, "ciphertext":[B
    new-instance v5, Lhk/com/aisoft/easyaddrui/AES256v3Ciphertext;

    invoke-virtual {p2}, Lhk/com/aisoft/easyaddrui/PasswordKey;->getSalt()[B

    move-result-object v6

    invoke-virtual {p3}, Lhk/com/aisoft/easyaddrui/PasswordKey;->getSalt()[B

    move-result-object v7

    invoke-direct {v5, v6, v7, p4, v1}, Lhk/com/aisoft/easyaddrui/AES256v3Ciphertext;-><init>([B[B[B[B)V

    .line 487
    .local v5, "output":Lhk/com/aisoft/easyaddrui/AES256v3Ciphertext;
    const-string v6, "HmacSHA256"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 488
    .local v4, "mac":Ljavax/crypto/Mac;
    invoke-virtual {p3}, Lhk/com/aisoft/easyaddrui/PasswordKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 489
    invoke-virtual {v5}, Lhk/com/aisoft/easyaddrui/AES256v3Ciphertext;->getDataToHMAC()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 490
    .local v3, "hmac":[B
    invoke-virtual {v5, v3}, Lhk/com/aisoft/easyaddrui/AES256v3Ciphertext;->setHmac([B)V

    .line 491
    invoke-virtual {v5}, Lhk/com/aisoft/easyaddrui/AES256v3Ciphertext;->getRawData()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    .line 493
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "ciphertext":[B
    .end local v3    # "hmac":[B
    .end local v4    # "mac":Ljavax/crypto/Mac;
    .end local v5    # "output":Lhk/com/aisoft/easyaddrui/AES256v3Ciphertext;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Lhk/com/aisoft/easyaddrui/CryptorException;

    const-string v7, "Caught InvalidKeyException. Do you have unlimited strength jurisdiction files installed?"

    invoke-direct {v6, v7, v2}, Lhk/com/aisoft/easyaddrui/CryptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 497
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v2

    .line 498
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Lhk/com/aisoft/easyaddrui/CryptorException;

    const-string v7, "Failed to generate ciphertext."

    invoke-direct {v6, v7, v2}, Lhk/com/aisoft/easyaddrui/CryptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public encryptData([B[C)[B
    .locals 7
    .param p1, "plaintext"    # [B
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhk/com/aisoft/easyaddrui/CryptorException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 353
    const-string v0, "Plaintext cannot be null."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    const-string v0, "Password cannot be null."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Password cannot be empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-static {v6}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->getSecureRandomData(I)[B

    move-result-object v3

    .line 358
    .local v3, "encryptionSalt":[B
    invoke-static {v6}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->getSecureRandomData(I)[B

    move-result-object v4

    .line 359
    .local v4, "hmacSalt":[B
    const/16 v0, 0x10

    invoke-static {v0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->getSecureRandomData(I)[B

    move-result-object v5

    .local v5, "iv":[B
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 361
    invoke-virtual/range {v0 .. v5}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->encryptData([B[C[B[B[B)[B

    move-result-object v0

    return-object v0

    .end local v3    # "encryptionSalt":[B
    .end local v4    # "hmacSalt":[B
    .end local v5    # "iv":[B
    :cond_0
    move v0, v1

    .line 355
    goto :goto_0
.end method

.method public encryptData([B[C[B[B[B)[B
    .locals 6
    .param p1, "plaintext"    # [B
    .param p2, "password"    # [C
    .param p3, "encryptionSalt"    # [B
    .param p4, "hmacSalt"    # [B
    .param p5, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhk/com/aisoft/easyaddrui/CryptorException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 333
    const-string v2, "Plaintext cannot be null."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    const-string v2, "Password cannot be null."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2, v2, v4}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v4, "Password cannot be empty."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    const-string v2, "Encryption salt"

    invoke-static {p3, v5, v2}, Lhk/com/aisoft/easyaddrui/Validate;->isCorrectLength([BILjava/lang/String;)V

    .line 339
    const-string v2, "HMAC salt"

    invoke-static {p4, v5, v2}, Lhk/com/aisoft/easyaddrui/Validate;->isCorrectLength([BILjava/lang/String;)V

    .line 340
    const/16 v2, 0x10

    const-string v3, "IV"

    invoke-static {p5, v2, v3}, Lhk/com/aisoft/easyaddrui/Validate;->isCorrectLength([BILjava/lang/String;)V

    .line 342
    invoke-virtual {p0, p2, p3}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->keyForPassword([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 343
    .local v0, "encryptionKey":Ljavax/crypto/SecretKey;
    invoke-virtual {p0, p2, p4}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->keyForPassword([C[B)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 345
    .local v1, "hmacKey":Ljavax/crypto/SecretKey;
    new-instance v2, Lhk/com/aisoft/easyaddrui/PasswordKey;

    invoke-direct {v2, v0, p3}, Lhk/com/aisoft/easyaddrui/PasswordKey;-><init>(Ljavax/crypto/SecretKey;[B)V

    new-instance v3, Lhk/com/aisoft/easyaddrui/PasswordKey;

    invoke-direct {v3, v1, p4}, Lhk/com/aisoft/easyaddrui/PasswordKey;-><init>(Ljavax/crypto/SecretKey;[B)V

    invoke-virtual {p0, p1, v2, v3, p5}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->encryptData([BLhk/com/aisoft/easyaddrui/PasswordKey;Lhk/com/aisoft/easyaddrui/PasswordKey;[B)[B

    move-result-object v2

    return-object v2

    .end local v0    # "encryptionKey":Ljavax/crypto/SecretKey;
    .end local v1    # "hmacKey":Ljavax/crypto/SecretKey;
    :cond_0
    move v2, v3

    .line 336
    goto :goto_0
.end method

.method public declared-synchronized getPBKDFIterations()I
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->iterations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keyForPassword([C[B)Ljavax/crypto/SecretKey;
    .locals 9
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhk/com/aisoft/easyaddrui/CryptorException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    const-string v3, "Salt value cannot be null."

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p2, v3, v6}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    array-length v3, p2

    if-ne v3, v8, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Salt value must be %d bytes."

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const-string v3, "Password cannot be null."

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1, v3, v6}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    array-length v3, p1

    if-lez v3, :cond_1

    move v3, v4

    :goto_1
    const-string v6, "Password cannot be empty."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 164
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;->getPBKDFIterations()I

    move-result v6

    const/16 v7, 0x100

    invoke-direct {v3, p1, p2, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v1, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 166
    .local v2, "tmp":Ljavax/crypto/SecretKey;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v3, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .end local v1    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "tmp":Ljavax/crypto/SecretKey;
    :cond_0
    move v3, v5

    .line 156
    goto :goto_0

    :cond_1
    move v3, v5

    .line 159
    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lhk/com/aisoft/easyaddrui/CryptorException;

    const-string v6, "Failed to generate key from password using %s."

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "PBKDF2WithHmacSHA1"

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lhk/com/aisoft/easyaddrui/CryptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
