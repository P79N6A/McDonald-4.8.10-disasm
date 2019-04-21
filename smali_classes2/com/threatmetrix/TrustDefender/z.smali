.class Lcom/threatmetrix/TrustDefender/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threatmetrix/TrustDefender/am;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/z$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/threatmetrix/TrustDefender/z$a;

.field private static final d:Ljava/lang/String;


# instance fields
.field a:Lokhttp3/OkHttpClient;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/threatmetrix/TrustDefender/z$a;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/z$a;-><init>()V

    sput-object v0, Lcom/threatmetrix/TrustDefender/z;->c:Lcom/threatmetrix/TrustDefender/z$a;

    .line 88
    const-class v0, Lcom/threatmetrix/TrustDefender/z;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/z;->d:Ljava/lang/String;

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
.method public final a(Lcom/threatmetrix/TrustDefender/e;)Lcom/threatmetrix/TrustDefender/aq;
    .locals 1
    .param p1, "state"    # Lcom/threatmetrix/TrustDefender/e;

    .prologue
    .line 163
    new-instance v0, Lcom/threatmetrix/TrustDefender/aa;

    invoke-direct {v0, p0, p1}, Lcom/threatmetrix/TrustDefender/aa;-><init>(Lcom/threatmetrix/TrustDefender/z;Lcom/threatmetrix/TrustDefender/e;)V

    return-object v0
.end method

.method public final a()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/z;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final a(ILjava/lang/String;ZZ)V
    .locals 10
    .param p1, "timeout"    # I
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "enablePostCompression"    # Z
    .param p4, "enableCustomTLSFactory"    # Z

    .prologue
    const/4 v9, 0x1

    .line 96
    sget-object v3, Lcom/threatmetrix/TrustDefender/z;->d:Ljava/lang/String;

    const-string v4, "Creating OkHttpClient instance"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/z;->b:Ljava/lang/String;

    .line 99
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 100
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    int-to-long v4, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lokhttp3/ConnectionPool;

    const/4 v5, 0x3

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v4, v5, v6, v7, v8}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 109
    sget v3, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v4, Lcom/threatmetrix/TrustDefender/g$b$b;->i:I

    if-lt v3, v4, :cond_0

    sget v3, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v4, Lcom/threatmetrix/TrustDefender/g$b$b;->n:I

    if-ge v3, v4, :cond_0

    if-eqz p4, :cond_0

    .line 114
    new-instance v3, Lcom/threatmetrix/TrustDefender/TLSSocketFactory;

    invoke-direct {v3}, Lcom/threatmetrix/TrustDefender/TLSSocketFactory;-><init>()V

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 117
    :cond_0
    new-instance v2, Lcom/threatmetrix/TrustDefender/ae;

    invoke-direct {v2}, Lcom/threatmetrix/TrustDefender/ae;-><init>()V

    .line 118
    .local v2, "proxyWrapper":Lcom/threatmetrix/TrustDefender/ae;
    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/ae;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 120
    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/ae;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/ae;->b()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 123
    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/threatmetrix/TrustDefender/z;->c:Lcom/threatmetrix/TrustDefender/z$a;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "plist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lokhttp3/Protocol;>;"
    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 133
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    iput-object v3, p0, Lcom/threatmetrix/TrustDefender/z;->a:Lokhttp3/OkHttpClient;

    .line 134
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/z;->b:Ljava/lang/String;

    return-object v0
.end method
