.class public Lcom/mcdonalds/sdk/connectors/baidu/BaiduConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "BaiduConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/NotificationConnector;


# static fields
.field public static final NAME:Ljava/lang/String; = "baidu"


# instance fields
.field mContext:Landroid/content/Context;

.field mRegistrationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/baidu/BaiduConnector;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized register()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.Baidu.apiKey"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "apiKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 35
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/baidu/BaiduConnector;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 38
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/baidu/BaiduConnector;->mRegistrationId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_0
    monitor-exit p0

    return-object v2

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 43
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 33
    .end local v0    # "apiKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRegistrationId(Ljava/lang/String;)V
    .locals 1
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/baidu/BaiduConnector;->mRegistrationId:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
