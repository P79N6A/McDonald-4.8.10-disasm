.class Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$10;
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
    .line 1153
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$10;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 1156
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1157
    if-nez p3, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$10;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 1159
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$10;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$300(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    .line 1163
    :goto_0
    return-void

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$10;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showFatalError(Ljava/lang/String;)V

    goto :goto_0
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

    .line 1153
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$10;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
