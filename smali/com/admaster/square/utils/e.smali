.class public Lcom/admaster/square/utils/e;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "ConnectUtil.java"


# static fields
.field private static b:Lcom/admaster/square/utils/e;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/square/utils/e;->b:Lcom/admaster/square/utils/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 411
    invoke-direct {p0, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 406
    iput-object v4, p0, Lcom/admaster/square/utils/e;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 413
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 414
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/admaster/square/utils/g;

    invoke-direct {v3, p0}, Lcom/admaster/square/utils/g;-><init>(Lcom/admaster/square/utils/e;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 415
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/utils/e;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 416
    new-instance v0, Lcom/admaster/square/utils/f;

    invoke-direct {v0, p0}, Lcom/admaster/square/utils/f;-><init>(Lcom/admaster/square/utils/e;)V

    invoke-virtual {p0, v0}, Lcom/admaster/square/utils/e;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 438
    return-void
.end method

.method public static a()Lcom/admaster/square/utils/e;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/admaster/square/utils/e;->b:Lcom/admaster/square/utils/e;

    if-nez v0, :cond_0

    .line 443
    :try_start_0
    new-instance v0, Lcom/admaster/square/utils/e;

    invoke-direct {v0}, Lcom/admaster/square/utils/e;-><init>()V

    sput-object v0, Lcom/admaster/square/utils/e;->b:Lcom/admaster/square/utils/e;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3

    .line 454
    :cond_0
    :goto_0
    sget-object v0, Lcom/admaster/square/utils/e;->b:Lcom/admaster/square/utils/e;

    return-object v0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 446
    :catch_1
    move-exception v0

    .line 447
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    .line 448
    :catch_2
    move-exception v0

    .line 449
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 450
    :catch_3
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 473
    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "hostName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 474
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 475
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/admaster/square/utils/e;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 465
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/admaster/square/utils/e;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/admaster/square/utils/e;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
