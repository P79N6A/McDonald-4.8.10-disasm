.class Lcom/newrelic/agent/android/crash/CrashReporter$2;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/crash/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/crash/Crash;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/agent/android/crash/CrashReporter;

.field final synthetic val$crash:Lcom/newrelic/agent/android/crash/Crash;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/crash/CrashReporter;Lcom/newrelic/agent/android/crash/Crash;)V
    .locals 0
    .param p1, "this$0"    # Lcom/newrelic/agent/android/crash/CrashReporter;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/newrelic/agent/android/crash/CrashReporter$2;->this$0:Lcom/newrelic/agent/android/crash/CrashReporter;

    iput-object p2, p0, Lcom/newrelic/agent/android/crash/CrashReporter$2;->val$crash:Lcom/newrelic/agent/android/crash/Crash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/newrelic/agent/android/payload/PayloadSender;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "payloadSender"    # Lcom/newrelic/agent/android/payload/PayloadSender;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 121
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->access$100()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crash upload failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onResponse(Lcom/newrelic/agent/android/payload/PayloadSender;)V
    .locals 2
    .param p1, "payloadSender"    # Lcom/newrelic/agent/android/payload/PayloadSender;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/PayloadSender;->isSuccessfulResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter$2;->this$0:Lcom/newrelic/agent/android/crash/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crash/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter$2;->this$0:Lcom/newrelic/agent/android/crash/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crash/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    iget-object v1, p0, Lcom/newrelic/agent/android/crash/CrashReporter$2;->val$crash:Lcom/newrelic/agent/android/crash/Crash;

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/crash/CrashStore;->delete(Lcom/newrelic/agent/android/crash/Crash;)V

    .line 117
    :cond_0
    return-void
.end method
