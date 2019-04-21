.class Lhk/com/aisoft/easyaddrui/eaView$19;
.super Ljava/lang/Object;
.source "eaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhk/com/aisoft/easyaddrui/eaView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhk/com/aisoft/easyaddrui/eaView;


# direct methods
.method constructor <init>(Lhk/com/aisoft/easyaddrui/eaView;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$19;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 670
    sget-boolean v1, Lhk/com/aisoft/easyaddrui/eaView;->eaNetErr:Z

    if-eqz v1, :cond_1

    .line 671
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v2, "zh-HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorC:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 692
    :goto_0
    return-void

    .line 674
    :cond_0
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorE:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 677
    :cond_1
    sget-wide v2, Lhk/com/aisoft/easyaddrui/eaView;->sGPSX:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_5

    sget-wide v2, Lhk/com/aisoft/easyaddrui/eaView;->sGPSY:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_5

    .line 678
    const-string v1, "G"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sListMode:Ljava/lang/String;

    .line 679
    const-string v1, ""

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 681
    new-instance v0, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;

    sget-wide v2, Lhk/com/aisoft/easyaddrui/eaView;->sGPSX:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    sget-wide v2, Lhk/com/aisoft/easyaddrui/eaView;->sGPSY:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .local v0, "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 683
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/eaView$19;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->uat_gps_search:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_2

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 687
    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :goto_1
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->access$100()V

    goto :goto_0

    .line 683
    .restart local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 685
    .restart local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :cond_3
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/eaView$19;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->url_gps_search:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_4

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_4
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 689
    :cond_5
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->msgInComAddr:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
