.class Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;
.super Ljava/lang/Object;
.source "CybersourceSecurityConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;->complete(Lcom/threatmetrix/TrustDefender/ProfilingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;

.field final synthetic val$profilingResult:Lcom/threatmetrix/TrustDefender/ProfilingResult;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;Lcom/threatmetrix/TrustDefender/ProfilingResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;->this$1:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;->val$profilingResult:Lcom/threatmetrix/TrustDefender/ProfilingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;->this$1:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;->this$0:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;->access$100(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    const-string v0, ""

    .line 82
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;->val$profilingResult:Lcom/threatmetrix/TrustDefender/ProfilingResult;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ProfilingResult;->getStatus()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v1

    sget-object v2, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;->val$profilingResult:Lcom/threatmetrix/TrustDefender/ProfilingResult;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ProfilingResult;->getSessionID()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;->this$1:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;->this$0:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;->access$200(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier$1;->this$1:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector$CompletionNotifier;->this$0:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;->access$100(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v1

    invoke-interface {v1, v0, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 89
    .end local v0    # "sessionId":Ljava/lang/String;
    :cond_1
    return-void
.end method
