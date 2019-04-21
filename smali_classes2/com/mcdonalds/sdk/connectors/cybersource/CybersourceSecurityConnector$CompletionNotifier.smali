.class Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;
.super Ljava/lang/Object;
.source "CybersourceSecurityConnector.java"

# interfaces
.implements Lcom/threatmetrix/TrustDefender/EndNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompletionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;->this$0:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;
    .param p2, "x1"    # Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;-><init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;)V

    return-void
.end method


# virtual methods
.method public complete(Lcom/threatmetrix/TrustDefender/ProfilingResult;)V
    .locals 4
    .param p1, "profilingResult"    # Lcom/threatmetrix/TrustDefender/ProfilingResult;

    .prologue
    .line 72
    const-string v1, "CYBER SOURCE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile completed with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ProfilingResult;->getStatus()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ProfilingResult;->getStatus()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;-><init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;Lcom/threatmetrix/TrustDefender/ProfilingResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getInstance()Lcom/threatmetrix/TrustDefender/TrustDefender;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender;->doPackageScan(I)Z

    .line 94
    return-void
.end method
