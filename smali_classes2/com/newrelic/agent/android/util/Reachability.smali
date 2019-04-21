.class public Lcom/newrelic/agent/android/util/Reachability;
.super Ljava/lang/Object;
.source "Reachability.java"


# static fields
.field private static final REACHABILITY_TIMEOUT:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasReachableMobileConnection(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 61
    const/4 v4, 0x0

    .line 63
    .local v4, "isReachable":Z
    :try_start_0
    const-string v7, "connectivity"

    .line 64
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 66
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 67
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    .line 69
    .local v3, "isMobile":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    .line 76
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "isMobile":Z
    :cond_0
    :goto_1
    return v4

    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    move v3, v6

    .line 68
    goto :goto_0

    .restart local v3    # "isMobile":Z
    :cond_2
    move v4, v6

    .line 69
    goto :goto_1

    .line 72
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "isMobile":Z
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static hasReachableNetworkConnection(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reachableHost"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 13
    const/4 v6, 0x0

    .line 15
    .local v6, "isReachable":Z
    :try_start_0
    const-string v10, "connectivity"

    .line 16
    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 18
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 20
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-nez v10, :cond_2

    move v5, v9

    .line 21
    .local v5, "isMobile":Z
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v10, v9, :cond_3

    move v7, v9

    .line 23
    .local v7, "isWiFi":Z
    :goto_1
    if-nez v5, :cond_0

    if-eqz v7, :cond_4

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    move v6, v9

    .line 35
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "isMobile":Z
    .end local v7    # "isWiFi":Z
    :cond_1
    :goto_2
    return v6

    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    move v5, v8

    .line 20
    goto :goto_0

    .restart local v5    # "isMobile":Z
    :cond_3
    move v7, v8

    .line 21
    goto :goto_1

    .restart local v7    # "isWiFi":Z
    :cond_4
    move v6, v8

    .line 23
    goto :goto_2

    .line 25
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "isMobile":Z
    .end local v7    # "isWiFi":Z
    :catch_0
    move-exception v3

    .line 27
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 28
    .local v1, "addr":Ljava/net/InetAddress;
    const/16 v8, 0x1f4

    invoke-virtual {v1, v8}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    goto :goto_2

    .line 29
    .end local v1    # "addr":Ljava/net/InetAddress;
    :catch_1
    move-exception v4

    .line 30
    .local v4, "e1":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static hasReachableWifiConnection(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, "isReachable":Z
    :try_start_0
    const-string v7, "connectivity"

    .line 42
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 44
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 46
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v4, v5

    .line 48
    .local v4, "isWiFi":Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    move v3, v5

    .line 57
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "isWiFi":Z
    :cond_0
    :goto_1
    return v3

    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    move v4, v6

    .line 47
    goto :goto_0

    .restart local v4    # "isWiFi":Z
    :cond_2
    move v3, v6

    .line 48
    goto :goto_1

    .line 53
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "isWiFi":Z
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method
