.class Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$1;
.super Ljava/lang/Object;
.source "PrepareOneTimePaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->refreshStoreInfoAndDeliveryFee()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
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

    .line 227
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->access$002(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;D)D

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->access$100(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V

    .line 232
    return-void
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

    .line 224
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
