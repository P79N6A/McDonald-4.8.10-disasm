.class Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;
.super Ljava/lang/Object;
.source "PaymentPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 11
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const v10, 0x7f090308

    const/16 v9, -0x17a9

    const/4 v8, 0x1

    const v7, 0x7f09078e

    const/4 v6, 0x2

    const-string v3, "onResponse"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v8

    aput-object p3, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1508(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)I

    .line 1177
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    invoke-interface {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->stopActivityIndicator()V

    .line 1178
    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 1180
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1600(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    .line 1182
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1183
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 1184
    .local v1, "paymentMethodDisplayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    .line 1187
    .end local v1    # "paymentMethodDisplayName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->isLargeOrder(Lcom/mcdonalds/sdk/modules/models/OrderView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1188
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    invoke-interface {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showLargeOrderAlert()V

    .line 1236
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    invoke-interface {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->continueToOrderSummary()V

    goto :goto_0

    .line 1192
    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v3

    if-ne v3, v9, :cond_4

    .line 1193
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1500(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)I

    move-result v3

    if-ge v3, v6, :cond_3

    .line 1194
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    goto :goto_0

    .line 1196
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0900b4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showFatalError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1199
    :cond_4
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1800(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)I

    move-result v2

    .line 1200
    .local v2, "status":I
    if-eqz p1, :cond_6

    .line 1201
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getErrorCode()I

    move-result v0

    .line 1203
    .local v0, "errorCode":I
    const/16 v3, -0x178a

    if-eq v0, v3, :cond_5

    const/16 v3, -0x178b

    if-eq v0, v3, :cond_5

    const/16 v3, -0x17a8

    if-ne v0, v3, :cond_7

    .line 1205
    :cond_5
    const-string v3, "Error"

    const-string v4, "On Check In"

    const-string v5, "Payment"

    invoke-static {v3, v4, v5}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    .end local v0    # "errorCode":I
    :cond_6
    if-ne v2, v8, :cond_a

    .line 1228
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showFatalError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    .restart local v0    # "errorCode":I
    :cond_7
    if-ne v0, v9, :cond_8

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1500(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)I

    move-result v3

    if-ge v3, v6, :cond_8

    .line 1208
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    goto/16 :goto_0

    .line 1210
    :cond_8
    const/16 v3, -0x3ec

    if-ne v0, v3, :cond_6

    .line 1211
    if-ne v2, v8, :cond_9

    .line 1214
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .line 1215
    invoke-static {v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1214
    invoke-interface {v3, v4, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showPaymentError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1217
    :cond_9
    if-ne v2, v6, :cond_6

    .line 1219
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .line 1220
    invoke-static {v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090312

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1219
    invoke-interface {v3, v4, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showPaymentError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1229
    .end local v0    # "errorCode":I
    :cond_a
    if-ne v2, v6, :cond_b

    .line 1231
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090312

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showFatalError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1233
    :cond_b
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showFatalError(Ljava/lang/String;)V

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

    .line 1173
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
