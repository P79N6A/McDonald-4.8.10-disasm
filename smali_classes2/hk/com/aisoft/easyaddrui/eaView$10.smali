.class Lhk/com/aisoft/easyaddrui/eaView$10;
.super Ljava/lang/Object;
.source "eaView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 480
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$10;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 26
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 494
    if-lez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lhk/com/aisoft/easyaddrui/eaView$10;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget v3, v3, Lhk/com/aisoft/easyaddrui/eaView;->sLastScrollCnt:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    .line 495
    add-int v3, p2, p3

    move/from16 v0, p4

    if-ne v3, v0, :cond_1

    .line 496
    sput p3, Lhk/com/aisoft/easyaddrui/eaView;->sVisibleCnt:I

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lhk/com/aisoft/easyaddrui/eaView$10;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    move/from16 v0, p4

    iput v0, v3, Lhk/com/aisoft/easyaddrui/eaView;->sLastScrollCnt:I

    .line 498
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    if-eqz v3, :cond_1

    .line 499
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    :cond_0
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v4, "G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 505
    new-instance v2, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;

    sget-wide v4, Lhk/com/aisoft/easyaddrui/eaView;->sGPSX:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Lhk/com/aisoft/easyaddrui/eaView;->sGPSY:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v5, v5, Lhk/com/aisoft/easyaddrui/ResponseQK;->sPage:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .local v2, "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v4, "Y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 507
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lhk/com/aisoft/easyaddrui/eaView$10;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v7, Lhk/com/aisoft/easyaddrui/R$string;->uat_addr_more:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[DOMAIN]"

    sget-object v8, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    instance-of v5, v2, Landroid/os/AsyncTask;

    if-nez v5, :cond_2

    invoke-virtual {v2, v3, v4}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 511
    .end local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :goto_0
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->access$100()V

    .line 524
    :cond_1
    :goto_1
    return-void

    .line 507
    .restart local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :cond_2
    check-cast v2, Landroid/os/AsyncTask;

    .end local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 509
    .restart local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :cond_3
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lhk/com/aisoft/easyaddrui/eaView$10;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v7, Lhk/com/aisoft/easyaddrui/R$string;->url_addr_more:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[DOMAIN]"

    sget-object v8, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    instance-of v5, v2, Landroid/os/AsyncTask;

    if-nez v5, :cond_4

    invoke-virtual {v2, v3, v4}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    check-cast v2, Landroid/os/AsyncTask;

    .end local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 512
    :cond_5
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v4, "D"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v4, "E"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    :cond_6
    new-instance v2, Lhk/com/aisoft/easyaddrui/DownloadSearchMore;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v4, v4, Lhk/com/aisoft/easyaddrui/ResponseQK;->sPage:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sEACity:Ljava/lang/String;

    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sAreaE:Ljava/lang/String;

    sget-object v8, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v8, v8, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v8, v8, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    sget-object v9, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v9, v9, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v9, v9, Lhk/com/aisoft/easyaddrui/Address;->sDistrictE:Ljava/lang/String;

    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v11, v11, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v11, v11, Lhk/com/aisoft/easyaddrui/Address;->sStreetE:Ljava/lang/String;

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    sget-object v13, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v13, v13, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v13, v13, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    sget-object v17, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    move-object/from16 v0, v17

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    move-object/from16 v0, v18

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/Address;->sEstateE:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    sget-object v22, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    move-object/from16 v0, v22

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    move-object/from16 v22, v0

    sget-object v23, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    move-object/from16 v0, v23

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/Address;->sBldgE:Ljava/lang/String;

    move-object/from16 v23, v0

    sget-object v24, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    move-object/from16 v0, v24

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v25, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    move-object/from16 v0, v25

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/Address;->sBlockE:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v2 .. v25}, Lhk/com/aisoft/easyaddrui/DownloadSearchMore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v2, "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v4, "Y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 515
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lhk/com/aisoft/easyaddrui/eaView$10;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v7, Lhk/com/aisoft/easyaddrui/R$string;->uat_addr_more:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[DOMAIN]"

    sget-object v8, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    instance-of v5, v2, Landroid/os/AsyncTask;

    if-nez v5, :cond_7

    invoke-virtual {v2, v3, v4}, Lhk/com/aisoft/easyaddrui/DownloadSearchMore;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 519
    .end local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    :goto_2
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->access$100()V

    goto/16 :goto_1

    .line 515
    .restart local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    :cond_7
    check-cast v2, Landroid/os/AsyncTask;

    .end local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 517
    .restart local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    :cond_8
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lhk/com/aisoft/easyaddrui/eaView$10;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v7, Lhk/com/aisoft/easyaddrui/R$string;->url_addr_more:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[DOMAIN]"

    sget-object v8, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    instance-of v5, v2, Landroid/os/AsyncTask;

    if-nez v5, :cond_9

    invoke-virtual {v2, v3, v4}, Lhk/com/aisoft/easyaddrui/DownloadSearchMore;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_9
    check-cast v2, Landroid/os/AsyncTask;

    .end local v2    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 483
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 485
    :try_start_0
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 486
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v1

    goto :goto_0
.end method
