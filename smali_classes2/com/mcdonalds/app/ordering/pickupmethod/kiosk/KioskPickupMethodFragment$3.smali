.class Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;
.super Ljava/lang/Object;
.source "KioskPickupMethodFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

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
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->isActivityAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 164
    if-nez p3, :cond_4

    .line 165
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$200(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPreparePaymentResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 167
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$200(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    .line 168
    .local v0, "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPaymentDataId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentDataId(I)V

    .line 171
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getRequiresCVV()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$302(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;Z)Z

    .line 172
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getRequiresPassword()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$402(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;Z)Z

    .line 174
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$300(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$500(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$600(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$400(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$000(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$700(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)V

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$400(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$000(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$000(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$800(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;Ljava/lang/String;)V

    .line 192
    .end local v0    # "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    :cond_2
    :goto_0
    return-void

    .line 184
    .restart local v0    # "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$400(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$800(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0    # "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    :cond_4
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 189
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

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

    .line 158
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$3;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
