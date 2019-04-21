.class Lcom/threatmetrix/TrustDefender/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Landroid/webkit/WebView;

.field private static final b:Ljava/util/concurrent/locks/Lock;

.field private static c:Landroid/content/Context;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    sput-object v1, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    .line 33
    sput-object v1, Lcom/threatmetrix/TrustDefender/ag;->c:Landroid/content/Context;

    .line 35
    const-class v0, Lcom/threatmetrix/TrustDefender/ag;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ag;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$o;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v1

    .line 46
    :cond_1
    sget-object v2, Lcom/threatmetrix/TrustDefender/ag;->c:Landroid/content/Context;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/threatmetrix/TrustDefender/ag;->c:Landroid/content/Context;

    if-eq v2, p0, :cond_2

    .line 48
    sget-object v2, Lcom/threatmetrix/TrustDefender/ag;->d:Ljava/lang/String;

    const-string v3, "Mismatched context: Only application context should be used, and it should always be consistent between calls"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 62
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;

    if-nez v1, :cond_5

    .line 66
    :try_start_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;

    if-nez v1, :cond_3

    .line 69
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;

    .line 70
    sput-object p0, Lcom/threatmetrix/TrustDefender/ag;->c:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_3
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 107
    :goto_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_1
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_4

    .line 90
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->d:Ljava/lang/String;

    const-string v2, "WebView not available: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_2
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 94
    :cond_4
    :try_start_2
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->d:Ljava/lang/String;

    const-string v2, "WebView not available: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 100
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 105
    :cond_5
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->d:Ljava/lang/String;

    const-string v2, "Reusing webview"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 119
    :try_start_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 120
    sget-object v0, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 124
    :goto_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 130
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$o;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    .local v0, "handler":Landroid/os/Handler;
    .local v1, "tempWebView":Landroid/webkit/WebView;
    :goto_0
    return-void

    .line 136
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "tempWebView":Landroid/webkit/WebView;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 137
    sget-object v2, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    .line 142
    sget-object v1, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;

    .line 144
    .restart local v1    # "tempWebView":Landroid/webkit/WebView;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    .restart local v0    # "handler":Landroid/os/Handler;
    new-instance v2, Lcom/threatmetrix/TrustDefender/ag$1;

    invoke-direct {v2, v1}, Lcom/threatmetrix/TrustDefender/ag$1;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lcom/threatmetrix/TrustDefender/ag;->a:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    sget-object v2, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/threatmetrix/TrustDefender/ag;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method
