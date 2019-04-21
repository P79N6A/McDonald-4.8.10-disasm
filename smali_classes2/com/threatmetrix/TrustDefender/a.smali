.class Lcom/threatmetrix/TrustDefender/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/threatmetrix/TrustDefender/a;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Lcom/threatmetrix/TrustDefender/g$a;

    new-instance v2, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v2}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/threatmetrix/TrustDefender/g$a;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/g$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "sourceDir":Ljava/lang/String;
    sget-object v1, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sourceDir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 19
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 21
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    :goto_0
    return-object v5

    .line 24
    :cond_0
    sget-object v9, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    .line 28
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 39
    .local v2, "digest":Ljava/security/MessageDigest;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 47
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 49
    .local v5, "md5String":Ljava/lang/String;
    const/16 v9, 0x2000

    new-array v1, v9, [B

    .line 53
    .local v1, "buffer":[B
    :goto_1
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    if-lez v8, :cond_1

    .line 55
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 63
    .end local v8    # "read":I
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v9, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 79
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    sget-object v9, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "md5String":Ljava/lang/String;
    :catch_1
    move-exception v9

    sget-object v9, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 43
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    :catch_2
    move-exception v9

    sget-object v9, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 57
    .restart local v1    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "md5String":Ljava/lang/String;
    .restart local v8    # "read":I
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 58
    .local v6, "md5sum":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v0, v9, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 59
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "output":Ljava/lang/String;
    const-string v9, "%32s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x20

    const/16 v11, 0x30

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 71
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 75
    :catch_3
    move-exception v9

    sget-object v9, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    goto :goto_2

    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v6    # "md5sum":[B
    .end local v7    # "output":Ljava/lang/String;
    .end local v8    # "read":I
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    sget-object v9, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    goto :goto_2

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 71
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 76
    :goto_3
    throw v9

    .line 75
    :catch_5
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefender/a;->a:Ljava/lang/String;

    goto :goto_3
.end method
