.class Lcom/newrelic/agent/android/agentdata/AgentDataReporter$2;
.super Ljava/lang/Object;
.source "AgentDataReporter.java"

# interfaces
.implements Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportAgentData(Lcom/newrelic/agent/android/payload/Payload;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/agent/android/agentdata/AgentDataReporter;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/agentdata/AgentDataReporter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$2;->this$0:Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/newrelic/agent/android/payload/PayloadSender;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "payloadSender"    # Lcom/newrelic/agent/android/payload/PayloadSender;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 139
    invoke-static {}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->access$000()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgentDataReporter.reportAgentData(Payload): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onResponse(Lcom/newrelic/agent/android/payload/PayloadSender;)V
    .locals 2
    .param p1, "payloadSender"    # Lcom/newrelic/agent/android/payload/PayloadSender;

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/PayloadSender;->isSuccessfulResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$2;->this$0:Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter$2;->this$0:Lcom/newrelic/agent/android/agentdata/AgentDataReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/PayloadSender;->getPayload()Lcom/newrelic/agent/android/payload/Payload;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/payload/PayloadStore;->delete(Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method
