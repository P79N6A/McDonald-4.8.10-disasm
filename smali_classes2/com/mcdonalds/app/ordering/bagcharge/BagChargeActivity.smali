.class public Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "BagChargeActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 21
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v3, 0x7f040020

    invoke-static {p0, v3}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;

    .line 24
    .local v0, "binding":Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;
    new-instance v1, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;-><init>(Lcom/mcdonalds/app/ordering/bagcharge/BagChargeView;)V

    .line 25
    .local v1, "presenter":Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->setPresenter(Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;)V

    .line 27
    const v3, 0x7f09010a

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;->setTitle(I)V

    .line 29
    iget-object v2, v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->productDetails:Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    .line 30
    .local v2, "productDetails":Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;
    iget-object v3, v2, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->productCheckBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/widget/InertCheckBox;->setVisibility(I)V

    .line 31
    iget-object v3, v2, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->infoButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 32
    iget-object v3, v2, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->hatButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 34
    iget-object v3, v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    iget-object v3, v3, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->increaseQuantity:Landroid/widget/Button;

    new-instance v4, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$1;-><init>(Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v3, v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    iget-object v3, v3, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->decreaseQuantity:Landroid/widget/Button;

    new-instance v4, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$2;-><init>(Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v3, v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->dismissButton:Landroid/widget/Button;

    new-instance v4, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$3;-><init>(Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v3, v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->continueButton:Landroid/widget/Button;

    new-instance v4, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$4;-><init>(Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public proceedToCheckout()V
    .locals 4

    .prologue
    const-string v2, "proceedToCheckout"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "FROM_BAG_CHARGE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    return-void
.end method
