.class Lorg/acra/ErrorReporter$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/ErrorReporter;->report(Lorg/acra/ErrorReporter$ReportBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/ErrorReporter;

.field final synthetic val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

.field final synthetic val$reportFileName:Ljava/lang/String;

.field final synthetic val$showDirectDialog:Z

.field final synthetic val$worker:Lorg/acra/SendWorker;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;Lorg/acra/SendWorker;ZLjava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iput-object p2, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    iput-boolean p3, p0, Lorg/acra/ErrorReporter$5;->val$showDirectDialog:Z

    iput-object p4, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    iput-object p5, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 806
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Waiting for Toast"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_0
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {v0}, Lorg/acra/ErrorReporter;->access$1100(Lorg/acra/ErrorReporter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 814
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Finished waiting for Toast"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    if-eqz v0, :cond_2

    .line 818
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Waiting for Worker"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_1
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    invoke-virtual {v0}, Lorg/acra/SendWorker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 822
    :catch_1
    move-exception v0

    .line 823
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 826
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Finished waiting for Worker"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_2
    iget-boolean v0, p0, Lorg/acra/ErrorReporter$5;->val$showDirectDialog:Z

    if-eqz v0, :cond_3

    .line 833
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating CrashReportDialog for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iget-object v1, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v0, v1, v2}, Lorg/acra/ErrorReporter;->access$1200(Lorg/acra/ErrorReporter;Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v0

    .line 835
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 836
    iget-object v1, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {v1}, Lorg/acra/ErrorReporter;->access$400(Lorg/acra/ErrorReporter;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 839
    :cond_3
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wait for Toast + worker ended. Kill Application ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v3}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 842
    iget-object v0, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iget-object v1, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/acra/ErrorReporter;->access$1300(Lorg/acra/ErrorReporter;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 844
    :cond_4
    return-void
.end method
