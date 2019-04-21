.class public Lcom/admaster/square/api/ConvMobiSDK;
.super Ljava/lang/Object;
.source "ConvMobiSDK.java"


# static fields
.field private static volatile a:Lcom/admaster/square/api/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static declared-synchronized a()Lcom/admaster/square/api/e;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/admaster/square/api/ConvMobiSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admaster/square/api/ConvMobiSDK;->a:Lcom/admaster/square/api/e;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/admaster/square/api/e;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/api/ConvMobiSDK;->a:Lcom/admaster/square/api/e;

    .line 22
    :cond_0
    sget-object v0, Lcom/admaster/square/api/ConvMobiSDK;->a:Lcom/admaster/square/api/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static doCustomerEvent(Lcom/admaster/square/api/CustomEvent;J)V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0, p1, p2}, Lcom/admaster/square/api/e;->a(Lcom/admaster/square/api/CustomEvent;J)V

    .line 106
    return-void
.end method

.method public static doLoginEvent(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0, p1, p2}, Lcom/admaster/square/api/e;->b(Ljava/lang/String;J)V

    .line 97
    return-void
.end method

.method public static doRegisterEvent(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0, p1, p2}, Lcom/admaster/square/api/e;->a(Ljava/lang/String;J)V

    .line 88
    return-void
.end method

.method public static initial(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lcom/admaster/square/api/e;->b(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static initial(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0, p1}, Lcom/admaster/square/api/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0, p1, p2}, Lcom/admaster/square/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/admaster/square/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public static initial(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p0, p1, p2}, Lcom/admaster/square/api/e;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/admaster/square/api/e;->b()V

    .line 132
    return-void
.end method

.method public static orderPaySucc(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0, p1}, Lcom/admaster/square/api/e;->b(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V

    .line 125
    return-void
.end method

.method public static placeOrder(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p0, p1}, Lcom/admaster/square/api/e;->a(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V

    .line 116
    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p0}, Lcom/admaster/square/api/e;->a(Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Lcom/admaster/square/api/e;->a(Z)V

    .line 79
    return-void
.end method

.method public static setIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p0}, Lcom/admaster/square/api/e;->a(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static setReferrer(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/admaster/square/api/ConvMobiSDK;->a()Lcom/admaster/square/api/e;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p0}, Lcom/admaster/square/api/e;->a(Ljava/lang/String;)V

    .line 147
    return-void
.end method
