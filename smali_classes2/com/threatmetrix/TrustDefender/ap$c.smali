.class final Lcom/threatmetrix/TrustDefender/ap$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/ap;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/ap;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ap$c;->a:Lcom/threatmetrix/TrustDefender/ap;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 498
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$g;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    :try_start_0
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 505
    .local v3, "connectivityService":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/net/ConnectivityManager;

    if-eqz v6, :cond_0

    .line 507
    move-object v0, v3

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 508
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 510
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    .line 511
    .local v5, "isConnected":Z
    :goto_1
    if-nez v5, :cond_3

    .line 513
    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/ap$c;->a:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ap;->a()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 521
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "connectivityService":Ljava/lang/Object;
    .end local v5    # "isConnected":Z
    :catch_0
    move-exception v4

    .line 524
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/ap;->f()Ljava/lang/String;

    goto :goto_0

    .line 510
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "connectivityService":Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 517
    .restart local v5    # "isConnected":Z
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/ap$c;->a:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ap;->b()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 526
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "connectivityService":Ljava/lang/Object;
    .end local v5    # "isConnected":Z
    :catch_1
    move-exception v4

    .line 528
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/ap;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
