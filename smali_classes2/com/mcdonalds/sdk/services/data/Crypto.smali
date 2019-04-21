.class public Lcom/mcdonalds/sdk/services/data/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final ENCRYPTION:Ljava/lang/String; = "AES"

.field private static final FILENAME:Ljava/lang/String; = "fknjew.kdf"

.field private static final IV_LENGTH:I = 0x10

.field private static final KEY_LENGTH:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSecretKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/mcdonalds/sdk/services/data/Crypto;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/Crypto;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/Crypto;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/Crypto;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 50
    return-void
.end method

.method private bytesFromStorableString(Ljava/lang/String;)[B
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private bytesToStorableString([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decryptToBytes(Ljavax/crypto/SecretKey;Ljava/lang/String;)[B
    .locals 12
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "ciphertext"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 161
    :try_start_0
    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "parts":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 163
    .local v3, "iv":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 165
    .local v1, "ctext":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/services/data/Crypto;->bytesFromStorableString(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 167
    .local v4, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 168
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 170
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/services/data/Crypto;->bytesFromStorableString(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 181
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "ctext":Ljava/lang/String;
    .end local v3    # "iv":Ljava/lang/String;
    .end local v4    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "parts":[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 172
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v6, Lcom/mcdonalds/sdk/services/data/Crypto;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Unable to decrypt data: %s : %s"

    new-array v8, v8, [Ljava/lang/Object;

    .line 176
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mcdonalds/sdk/services/data/Crypto;->bytesToStorableString([B)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object p2, v8, v11

    .line 175
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-static {v6, v7, v2}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    new-array v6, v10, [B

    goto :goto_0

    .line 180
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/RuntimeException;
    new-array v6, v10, [B

    goto :goto_0
.end method

.method private generateIv()[B
    .locals 2

    .prologue
    .line 151
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 152
    .local v0, "bytes":[B
    sget-object v1, Lcom/mcdonalds/sdk/services/data/Crypto;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 154
    return-object v0
.end method

.method private generateNewKey()Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 115
    const/16 v1, 0x100

    .line 118
    .local v1, "outputKeyLength":I
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 119
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v2, 0x100

    sget-object v3, Lcom/mcdonalds/sdk/services/data/Crypto;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 121
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2
.end method

.method private getSecretKey()Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;

    if-nez v1, :cond_0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/Crypto;->readSecretFromLocalStorage()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;

    if-nez v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/Crypto;->generateNewKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 105
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/services/data/Crypto;->writeSecretToLocalStorage(Ljavax/crypto/SecretKey;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;

    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/mcdonalds/sdk/services/data/Crypto;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error retrieving secret key"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private readSecretFromLocalStorage()Ljavax/crypto/SecretKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 133
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mContext:Landroid/content/Context;

    const-string v6, "fknjew.kdf"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 134
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v1, v5, [B

    .line 138
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 139
    invoke-virtual {v0, v1, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 143
    .local v2, "bytes":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 144
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 146
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    array-length v6, v2

    const-string v7, "AES"

    invoke-direct {v5, v2, v8, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v5
.end method

.method private writeSecretToLocalStorage(Ljavax/crypto/SecretKey;)V
    .locals 4
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mContext:Landroid/content/Context;

    const-string v2, "fknjew.kdf"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 127
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 128
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 129
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-direct {p0, v2, p1}, Lcom/mcdonalds/sdk/services/data/Crypto;->decryptToBytes(Ljavax/crypto/SecretKey;Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 60
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/Crypto;->generateIv()[B

    move-result-object v3

    .line 61
    .local v3, "iv":[B
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 63
    .local v4, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 64
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/Crypto;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v9, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 68
    :try_start_0
    const-string v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    .local v1, "ciphertext":[B
    :goto_0
    const-string v5, "%s:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/services/data/Crypto;->bytesToStorableString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/services/data/Crypto;->bytesToStorableString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 69
    .end local v1    # "ciphertext":[B
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .restart local v1    # "ciphertext":[B
    goto :goto_0
.end method
