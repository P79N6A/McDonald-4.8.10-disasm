.class Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1;
.super Ljava/lang/Object;
.source "PaymentPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->restaurantMismatchResolved()V
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
        "Ljava/lang/Object;",
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
    .line 262
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Object;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$000(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$002(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;Z)Z

    .line 267
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1$1;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1;)V

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateProductsForOrder(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 277
    :cond_0
    return-void
.end method
