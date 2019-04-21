.class Lcom/threatmetrix/TrustDefender/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threatmetrix/TrustDefender/am;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/ab$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/threatmetrix/TrustDefender/ab$a;

.field private static final d:Ljava/lang/String;


# instance fields
.field a:Lcom/squareup/okhttp/OkHttpClient;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/threatmetrix/TrustDefender/ab$a;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/ab$a;-><init>()V

    sput-object v0, Lcom/threatmetrix/TrustDefender/ab;->c:Lcom/threatmetrix/TrustDefender/ab$a;

    .line 88
    const-class v0, Lcom/threatmetrix/TrustDefender/ab;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ab;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method public final a(Lcom/threatmetrix/TrustDefender/e;)Lcom/threatmetrix/TrustDefender/aq;
    .locals 1
    .param p1, "state"    # Lcom/threatmetrix/TrustDefender/e;

    .prologue
    .line 163
    new-instance v0, Lcom/threatmetrix/TrustDefender/ac;

    invoke-direct {v0, p0, p1}, Lcom/threatmetrix/TrustDefender/ac;-><init>(Lcom/threatmetrix/TrustDefender/ab;Lcom/threatmetrix/TrustDefender/e;)V

    return-object v0
.end method

.method public final a(ILjava/lang/String;ZZ)V
    .locals 9
    .param p1, "timeout"    # I
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "enablePostCompression"    # Z
    .param p4, "enableCustomTLSFactory"    # Z

    .prologue
    const/4 v8, 0x1

    .line 96
    sget-object v2, Lcom/threatmetrix/TrustDefender/ab;->d:Ljava/lang/String;

    const-string v3, "Creating OkHttpClient instance"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    .line 101
    sget v2, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v3, Lcom/threatmetrix/TrustDefender/g$b$b;->i:I

    if-lt v2, v3, :cond_0

    sget v2, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v3, Lcom/threatmetrix/TrustDefender/g$b$b;->n:I

    if-ge v2, v3, :cond_0

    if-eqz p4, :cond_0

    .line 106
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v3, Lcom/threatmetrix/TrustDefender/TLSSocketFactory;

    invoke-direct {v3}, Lcom/threatmetrix/TrustDefender/TLSSocketFactory;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v4, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 110
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v4, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 111
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v4, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 112
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v8}, Lcom/squareup/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    .line 113
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v8}, Lcom/squareup/okhttp/OkHttpClient;->setFollowSslRedirects(Z)Lcom/squareup/okhttp/OkHttpClient;

    .line 115
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v3, Lcom/squareup/okhttp/ConnectionPool;

    const/4 v4, 0x3

    const-wide/16 v6, 0x7530

    invoke-direct {v3, v4, v6, v7}, Lcom/squareup/okhttp/ConnectionPool;-><init>(IJ)V

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectionPool(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/OkHttpClient;

    .line 117
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/ab;->b:Ljava/lang/String;

    .line 119
    new-instance v1, Lcom/threatmetrix/TrustDefender/ae;

    invoke-direct {v1}, Lcom/threatmetrix/TrustDefender/ae;-><init>()V

    .line 120
    .local v1, "proxyWrapper":Lcom/threatmetrix/TrustDefender/ae;
    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ae;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ae;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ae;->b()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/threatmetrix/TrustDefender/ab;->c:Lcom/threatmetrix/TrustDefender/ab$a;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "plist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/squareup/okhttp/Protocol;>;"
    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 133
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ab;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v8}, Lcom/squareup/okhttp/OkHttpClient;->setRetryOnConnectionFailure(Z)V

    .line 134
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ab;->b:Ljava/lang/String;

    return-object v0
.end method
