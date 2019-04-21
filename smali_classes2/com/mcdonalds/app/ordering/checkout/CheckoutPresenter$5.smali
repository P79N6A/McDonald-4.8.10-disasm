.class Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;
.super Ljava/lang/Object;
.source "CheckoutPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Boolean;
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

    .line 923
    if-nez p3, :cond_0

    .line 924
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->access$500(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    .line 925
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->access$600(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    .line 926
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->access$700(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    .line 934
    :goto_0
    return-void

    .line 927
    :cond_0
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x40b

    if-ne v0, v1, :cond_1

    .line 928
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->access$000(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showOutOfStockAlert(I)V

    goto :goto_0

    .line 929
    :cond_1
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x646

    if-ne v0, v1, :cond_2

    .line 930
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->access$000(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showZeroOrNegativePriceError()V

    goto :goto_0

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->access$000(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showFatalError(Ljava/lang/String;)V

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

    .line 920
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
