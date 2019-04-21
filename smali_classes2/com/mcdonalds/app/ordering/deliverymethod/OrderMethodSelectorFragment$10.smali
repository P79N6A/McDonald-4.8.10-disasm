.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;
.super Ljava/lang/Object;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

.field final synthetic val$schedDeliveryDateText:Landroid/widget/TextView;

.field final synthetic val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

.field final synthetic val$schedDeliveryTimeText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/app/widget/CheckableRelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->val$schedDeliveryDateText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "onClick"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 547
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 549
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 550
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->val$schedDeliveryTimeSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setVisibility(I)V

    .line 551
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->val$schedDeliveryDateText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0906c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->val$schedDeliveryTimeText:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 555
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "asap":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "formatted":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$900(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$900(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    .end local v0    # "asap":Ljava/lang/String;
    .end local v1    # "formatted":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 566
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2, v5}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1902(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 567
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2, v5}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2002(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 568
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2, v6}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1802(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 569
    return-void
.end method
