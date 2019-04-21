.class Lcom/threatmetrix/TrustDefender/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/threatmetrix/TrustDefender/i;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/i;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/i;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private declared-synchronized a(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "inetAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/i;->b:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 24
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefender/i;->c:Ljava/lang/String;

    const-string v3, "Starting DNS lookup"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/i;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 26
    .local v0, "addr":Ljava/net/InetAddress;
    sget-object v2, Lcom/threatmetrix/TrustDefender/i;->c:Ljava/lang/String;

    const-string v3, "DNS lookup complete"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, v0}, Lcom/threatmetrix/TrustDefender/i;->a(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/threatmetrix/TrustDefender/i;->c:Ljava/lang/String;

    const-string v3, "Failed DNS lookup"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
