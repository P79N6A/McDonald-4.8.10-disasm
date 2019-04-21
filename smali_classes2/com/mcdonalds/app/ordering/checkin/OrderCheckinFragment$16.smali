.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;
.super Ljava/lang/Object;
.source "OrderCheckinFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 13
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v8, "onResponse"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1422
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1530
    :goto_0
    return-void

    .line 1426
    :cond_0
    if-nez p3, :cond_5

    .line 1427
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1429
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderDate()Ljava/util/Date;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1430
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1431
    .local v1, "calendar":Ljava/util/Calendar;
    const-string v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1432
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setOrderDate(Ljava/util/Date;)V

    .line 1436
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1437
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v8, v8, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setCheckoutResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 1442
    :goto_1
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v8, v8, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {p1, v8}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackTransaction(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 1444
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v8}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1200(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1446
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1447
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderView;->isIsLargeOrder()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1448
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderView;->isConfirmationNeeded()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1449
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/AppUtils;->showLargeOrderAlert(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0

    .line 1439
    :cond_2
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v8, v8, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setCheckinResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    goto :goto_1

    .line 1451
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getEstimatedDeliveryTime()Ljava/util/Date;

    move-result-object v0

    .line 1452
    .local v0, "EDT":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1453
    .restart local v1    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1455
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1456
    .local v3, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1458
    .local v4, "minute":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1459
    .local v7, "time":Ljava/lang/String;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v9, 0x7f09043e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1460
    .local v5, "msg":Ljava/lang/String;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 1461
    invoke-virtual {v8, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f0905d4

    new-instance v10, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16$1;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16$1;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;)V

    .line 1462
    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const/4 v9, 0x0

    .line 1468
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 1469
    invoke-virtual {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 1470
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1473
    .end local v0    # "EDT":Ljava/util/Date;
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v3    # "hour":I
    .end local v4    # "minute":I
    .end local v5    # "msg":Ljava/lang/String;
    .end local v7    # "time":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->continueToOrderSummary()V

    goto/16 :goto_0

    .line 1475
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getErrorCode()I

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_6

    .line 1477
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1302(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Z)Z

    goto/16 :goto_0

    .line 1479
    :cond_6
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v8}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1400(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)I

    move-result v6

    .line 1480
    .local v6, "status":I
    if-eqz p1, :cond_8

    .line 1481
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getErrorCode()I

    move-result v2

    .line 1484
    .local v2, "errorCode":I
    const/16 v8, -0x178a

    if-eq v2, v8, :cond_7

    const/16 v8, -0x178b

    if-eq v2, v8, :cond_7

    const/16 v8, -0x17a8

    if-ne v2, v8, :cond_9

    .line 1486
    :cond_7
    const-string v8, "Error"

    const-string v9, "On Check In"

    const-string v10, "Payment"

    invoke-static {v8, v9, v10}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    .end local v2    # "errorCode":I
    :cond_8
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1506
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1302(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Z)Z

    .line 1508
    const/4 v8, 0x1

    if-ne v6, v8, :cond_b

    .line 1510
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v10, 0x7f09078e

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v11, 0x7f090308

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1500(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1488
    .restart local v2    # "errorCode":I
    :cond_9
    const/16 v8, -0x177a

    if-ne v2, v8, :cond_8

    .line 1489
    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    .line 1491
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1492
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1302(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Z)Z

    .line 1493
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v10, 0x7f09078e

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v11, 0x7f090308

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1500(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1495
    :cond_a
    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    .line 1497
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1498
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1302(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Z)Z

    .line 1499
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v10, 0x7f09078e

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v11, 0x7f090312

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1500(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1511
    .end local v2    # "errorCode":I
    :cond_b
    const/4 v8, 0x2

    if-ne v6, v8, :cond_c

    .line 1513
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v10, 0x7f09078e

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v11, 0x7f090312

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1500(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1515
    :cond_c
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v10, 0x7f09030d

    .line 1516
    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 1517
    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v10, 0x7f090121

    .line 1518
    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16$2;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16$2;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;)V

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 1527
    invoke-virtual {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1419
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
