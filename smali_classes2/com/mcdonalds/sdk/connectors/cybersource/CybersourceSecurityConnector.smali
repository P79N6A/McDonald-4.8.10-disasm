.class public Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "CybersourceSecurityConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/SecurityConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;
    }
.end annotation


# static fields
.field private static final KEY_CYBERSOURCE_MERCHANT_ID:Ljava/lang/String; = "connectors.CybersourceSecurity.merchantId"

.field private static final KEY_CYBERSOURCE_ORG_ID:Ljava/lang/String; = "connectors.CybersourceSecurity.orgId"

.field public static final NAME:Ljava/lang/String; = "cybersourcesecurity"


# instance fields
.field private merchantId:Ljava/lang/String;

.field private sessionListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;->sessionListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;->merchantId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public retriveSecurityToken(Landroid/content/Context;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "merchantId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "sessionIdListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 32
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "connectors.CybersourceSecurity.orgId"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 33
    .local v2, "orgId":Ljava/lang/String;
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;->merchantId:Ljava/lang/String;

    .line 35
    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 36
    new-instance v6, Lcom/threatmetrix/TrustDefender/Config;

    invoke-direct {v6}, Lcom/threatmetrix/TrustDefender/Config;-><init>()V

    invoke-virtual {v6, v2}, Lcom/threatmetrix/TrustDefender/Config;->setOrgId(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/Config;

    move-result-object v6

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/threatmetrix/TrustDefender/Config;->setContext(Landroid/content/Context;)Lcom/threatmetrix/TrustDefender/Config;

    move-result-object v0

    .line 38
    .local v0, "config":Lcom/threatmetrix/TrustDefender/Config;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getInstance()Lcom/threatmetrix/TrustDefender/TrustDefender;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->init(Lcom/threatmetrix/TrustDefender/Config;)Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v1

    .line 40
    .local v1, "initStatus":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    sget-object v6, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-eq v1, v6, :cond_0

    sget-object v6, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Already_Initialised:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v1, v6, :cond_3

    .line 41
    :cond_0
    const-string v6, "CYBER SOURCE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Succesfully init-ed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->getDesc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v6, "CYBER SOURCE"

    const-string v7, "Using 4.0-90"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "profileSessionid":Ljava/lang/String;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getInstance()Lcom/threatmetrix/TrustDefender/TrustDefender;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;

    invoke-direct {v7, p0, v10}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;-><init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$1;)V

    invoke-virtual {v6, v3, v7}, Lcom/threatmetrix/TrustDefender/TrustDefender;->doProfileRequest(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/EndNotifier;)Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v5

    .line 47
    .local v5, "status":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    sget-object v6, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v5, v6, :cond_2

    .line 48
    const-string v6, "CYBER SOURCE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session ID is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getInstance()Lcom/threatmetrix/TrustDefender/TrustDefender;

    move-result-object v8

    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefender/ProfilingResult;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getInstance()Lcom/threatmetrix/TrustDefender/TrustDefender;

    move-result-object v6

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ProfilingResult;->getSessionID()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "sessionId":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, p2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-interface {p3, v4, v10, v10}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 65
    .end local v0    # "config":Lcom/threatmetrix/TrustDefender/Config;
    .end local v1    # "initStatus":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .end local v3    # "profileSessionid":Ljava/lang/String;
    .end local v4    # "sessionId":Ljava/lang/String;
    .end local v5    # "status":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :cond_1
    :goto_0
    return-void

    .line 53
    .restart local v0    # "config":Lcom/threatmetrix/TrustDefender/Config;
    .restart local v1    # "initStatus":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .restart local v3    # "profileSessionid":Ljava/lang/String;
    .restart local v5    # "status":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :cond_2
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;->sessionListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 54
    sget-object v6, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 59
    .end local v3    # "profileSessionid":Ljava/lang/String;
    .end local v5    # "status":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :cond_3
    const-string v6, "CYBER SOURCE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init was not successfull, cannot perform profiling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->getDesc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v0    # "config":Lcom/threatmetrix/TrustDefender/Config;
    .end local v1    # "initStatus":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :cond_4
    invoke-interface {p3, v10, v10, v10}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
