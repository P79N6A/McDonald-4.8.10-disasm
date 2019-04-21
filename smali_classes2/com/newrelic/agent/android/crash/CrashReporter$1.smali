.class Lcom/newrelic/agent/android/crash/CrashReporter$1;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/crash/CrashReporter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/agent/android/crash/CrashReporter;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/crash/CrashReporter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/newrelic/agent/android/crash/CrashReporter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/newrelic/agent/android/crash/CrashReporter$1;->this$0:Lcom/newrelic/agent/android/crash/CrashReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/newrelic/agent/android/crash/CrashReporter$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter$1;->this$0:Lcom/newrelic/agent/android/crash/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crash/CrashReporter;->reportSavedCrashes()V

    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/crash/CrashReporter$1;->this$0:Lcom/newrelic/agent/android/crash/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crash/CrashReporter;->access$000(Lcom/newrelic/agent/android/crash/CrashReporter;)V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method
