.class Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$3;
.super Ljava/lang/Object;
.source "PreparePaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->tryTotalize()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

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

    .line 354
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
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

    .line 359
    if-eqz p1, :cond_1

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "customerPaymentMethodIdUpdated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 363
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    .line 366
    .local v2, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-ne v4, v5, :cond_0

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 370
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->access$202(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 374
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->access$300(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "customerPaymentMethodIdUpdated":Z
    .end local v1    # "i":I
    .end local v2    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .end local v3    # "size":I
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 379
    return-void
.end method
