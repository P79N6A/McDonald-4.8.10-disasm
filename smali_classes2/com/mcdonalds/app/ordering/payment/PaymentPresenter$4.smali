.class Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$4;
.super Ljava/lang/Object;
.source "PaymentPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->updatePaymentType()V
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 919
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$4;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    const-string v4, "onResponse"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    if-eqz p1, :cond_2

    .line 925
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 927
    .local v2, "paymentModes":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 928
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    .line 931
    .local v1, "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    sget-object v4, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-eq v1, v4, :cond_0

    .line 933
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    .end local v1    # "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showPaymentSelection(Ljava/util/LinkedHashSet;)V

    .line 940
    .end local v0    # "i":I
    .end local v2    # "paymentModes":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;>;"
    .end local v3    # "size":I
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v4

    invoke-interface {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->stopActivityIndicator()V

    .line 941
    return-void
.end method
