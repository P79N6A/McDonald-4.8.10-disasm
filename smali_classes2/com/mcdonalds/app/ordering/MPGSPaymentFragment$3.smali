.class Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;
.super Ljava/lang/Object;
.source "MPGSPaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->registerCard(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

.field final synthetic val$scheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->val$scheme:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/PaymentCard;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 243
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 245
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$700(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v0

    const-string v1, "EXTRA_ONE_TIME_PAYMENT_CARD_DATA"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->val$scheme:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$800(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Lcom/mcdonalds/sdk/modules/models/PaymentCard;Ljava/lang/String;)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 251
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

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

    .line 239
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$3;->onResponse(Lcom/mcdonalds/sdk/modules/models/PaymentCard;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
