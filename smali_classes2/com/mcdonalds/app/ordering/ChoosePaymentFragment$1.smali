.class Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;
.super Ljava/lang/Object;
.source "ChoosePaymentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v3, "onClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    .line 121
    .local v1, "method":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;-><init>()V

    .line 122
    .local v2, "payment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentMethodId(I)V

    .line 123
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->access$000(Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 124
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->access$000(Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 127
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x37

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 132
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->access$000(Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "supportedPaymentMethods.thirdParty.displayName"

    .line 134
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 141
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 142
    return-void

    .line 135
    :cond_0
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->WeChat:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->access$000(Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "supportedPaymentMethods.wechatPayment.displayName"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->access$000(Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    goto :goto_0
.end method
