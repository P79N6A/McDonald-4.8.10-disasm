.class Landroid/databinding/DataBinderMapper;
.super Ljava/lang/Object;
.source "DataBinderMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/DataBinderMapper$InnerBrLookup;
    }
.end annotation


# static fields
.field static final TARGET_MIN_SDK:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layoutId"    # I

    .prologue
    .line 9
    sparse-switch p3, :sswitch_data_0

    .line 35
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11
    :sswitch_0
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    move-result-object v0

    goto :goto_0

    .line 13
    :sswitch_1
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    move-result-object v0

    goto :goto_0

    .line 15
    :sswitch_2
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    move-result-object v0

    goto :goto_0

    .line 17
    :sswitch_3
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    move-result-object v0

    goto :goto_0

    .line 19
    :sswitch_4
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    move-result-object v0

    goto :goto_0

    .line 21
    :sswitch_5
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    move-result-object v0

    goto :goto_0

    .line 23
    :sswitch_6
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

    move-result-object v0

    goto :goto_0

    .line 25
    :sswitch_7
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;

    move-result-object v0

    goto :goto_0

    .line 27
    :sswitch_8
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/InvoiceBinding;

    move-result-object v0

    goto :goto_0

    .line 29
    :sswitch_9
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;

    move-result-object v0

    goto :goto_0

    .line 31
    :sswitch_a
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    move-result-object v0

    goto :goto_0

    .line 33
    :sswitch_b
    invoke-static {p2, p1}, Lcom/mcdonalds/app/databinding/OrderRemarkBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    move-result-object v0

    goto :goto_0

    .line 9
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f040020 -> :sswitch_7
        0x7f040022 -> :sswitch_3
        0x7f040023 -> :sswitch_9
        0x7f04002a -> :sswitch_0
        0x7f040042 -> :sswitch_1
        0x7f04005a -> :sswitch_a
        0x7f040134 -> :sswitch_8
        0x7f040170 -> :sswitch_b
        0x7f040179 -> :sswitch_4
        0x7f040180 -> :sswitch_2
        0x7f04019a -> :sswitch_6
        0x7f04019d -> :sswitch_5
    .end sparse-switch
.end method

.method getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "views"    # [Landroid/view/View;
    .param p3, "layoutId"    # I

    .prologue
    .line 38
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
