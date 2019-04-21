.class Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$1;
.super Ljava/lang/Object;
.source "PreparePaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v3, "onResponse"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 152
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$1;->val$view:Landroid/view/View;

    const v4, 0x7f11009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    .local v0, "deliveryFeeText":Landroid/widget/TextView;
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v2

    .line 156
    .local v2, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    .line 155
    :goto_0
    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "fee":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->access$002(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 164
    .end local v0    # "deliveryFeeText":Landroid/widget/TextView;
    .end local v1    # "fee":Ljava/lang/String;
    .end local v2    # "formatter":Ljava/text/NumberFormat;
    :cond_0
    return-void

    .line 156
    .restart local v0    # "deliveryFeeText":Landroid/widget/TextView;
    .restart local v2    # "formatter":Ljava/text/NumberFormat;
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

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

    .line 145
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
