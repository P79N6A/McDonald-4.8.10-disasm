.class Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;
.super Ljava/lang/Object;
.source "PaymentSelectionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->updateWithProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "onItemClick"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 149
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->getPaymentType(I)Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$102(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    goto :goto_0

    .line 157
    :pswitch_1
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$app$ordering$preparepayment$PaymentSelectionListAdapterHeaders$CardRow:[I

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->getCardRowType(I)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$102(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->getPaymentCard(I)Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$202(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$200(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isNewCardStub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$300(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)V

    goto :goto_0

    .line 170
    :pswitch_3
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->getPaymentMethodID(I)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->onAddPayment(IZ)V

    goto :goto_0

    .line 174
    :pswitch_4
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$000(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;->getPaymentMethodID(I)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->onAddPayment(IZ)V

    goto :goto_0

    .line 182
    :pswitch_5
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->access$102(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 157
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
