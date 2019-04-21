.class public Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityCheckoutBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final activityCheckout:Landroid/widget/FrameLayout;

.field public final bagCharge:Landroid/widget/TextView;

.field public final bagChargeContainer:Landroid/widget/LinearLayout;

.field public final bagChargeValue:Landroid/widget/TextView;

.field public final basketList:Landroid/widget/ListView;

.field public final choosePaymentLabel:Landroid/widget/TextView;

.field public final containerTotals:Landroid/widget/LinearLayout;

.field public final continueButton:Landroid/widget/Button;

.field public final deliveryFee:Landroid/widget/TextView;

.field public final deliveryFeeValue:Landroid/widget/TextView;

.field public final deliveryRow:Landroid/widget/LinearLayout;

.field public final deliveryView:Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

.field public final discount:Landroid/widget/TextView;

.field public final discountContainer:Landroid/widget/LinearLayout;

.field public final discountValue:Landroid/widget/TextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final invoiceContainer:Lcom/mcdonalds/app/databinding/InvoiceBinding;

.field public final ivAliImg:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

.field private final mboundView19:Landroid/widget/FrameLayout;

.field private final mboundView2:Landroid/widget/FrameLayout;

.field private final mboundView20:Landroid/widget/FrameLayout;

.field private final mboundView24:Landroid/widget/FrameLayout;

.field private final mboundView3:Landroid/widget/FrameLayout;

.field public final noPaymentRequiredLabel:Landroid/widget/TextView;

.field public final orderTotal:Landroid/widget/TextView;

.field public final orderTotalValue:Landroid/widget/TextView;

.field public final payWithLabel:Landroid/widget/TextView;

.field public final paymentContainer:Landroid/widget/LinearLayout;

.field public final pickupView:Lcom/mcdonalds/app/databinding/PickupLocationBinding;

.field public final progress:Landroid/widget/ProgressBar;

.field public final qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

.field public final remarkContainer:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

.field public final subtotalContainer:Landroid/widget/LinearLayout;

.field public final tax:Landroid/widget/TextView;

.field public final taxContainer:Landroid/widget/LinearLayout;

.field public final taxValue:Landroid/widget/TextView;

.field public final timeRestrictionWarning:Landroid/widget/TextView;

.field public final total:Landroid/widget/TextView;

.field public final totalContainer:Landroid/widget/LinearLayout;

.field public final totalEnergy:Landroid/widget/TextView;

.field public final totalValue:Landroid/widget/TextView;

.field public final unavailablePods:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "pickup_location"

    aput-object v3, v2, v6

    new-array v3, v7, [I

    const/16 v4, 0x1a

    aput v4, v3, v6

    new-array v4, v7, [I

    const v5, 0x7f040179

    aput v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 15
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "invoice"

    aput-object v3, v2, v6

    new-array v3, v7, [I

    const/16 v4, 0x1d

    aput v4, v3, v6

    new-array v4, v7, [I

    const v5, 0x7f040134

    aput v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 19
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "view_checkin_tutorial"

    aput-object v3, v2, v6

    new-array v3, v7, [I

    const/16 v4, 0x1e

    aput v4, v3, v6

    new-array v4, v7, [I

    const v5, 0x7f04019d

    aput v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 23
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "delivery_location"

    aput-object v3, v2, v6

    new-array v3, v7, [I

    const/16 v4, 0x1b

    aput v4, v3, v6

    new-array v4, v7, [I

    const v5, 0x7f04005a

    aput v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 27
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "order_remark"

    aput-object v3, v2, v6

    new-array v3, v7, [I

    const/16 v4, 0x1c

    aput v4, v3, v6

    new-array v4, v7, [I

    const v5, 0x7f040170

    aput v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 31
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 32
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f11009c

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f11009e

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100a1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100a4

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100a7

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100aa

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100ac

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100ad

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100b1

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100b2

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100b4

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 6
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v5}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 888
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 95
    const/16 v1, 0x2a

    sget-object v2, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->activityCheckout:Landroid/widget/FrameLayout;

    .line 97
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->activityCheckout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 98
    const/16 v1, 0x22

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->bagCharge:Landroid/widget/TextView;

    .line 99
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->bagChargeContainer:Landroid/widget/LinearLayout;

    .line 100
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->bagChargeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 101
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->bagChargeValue:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->bagChargeValue:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 103
    const/16 v1, 0x1f

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->basketList:Landroid/widget/ListView;

    .line 104
    const/16 v1, 0x11

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->choosePaymentLabel:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->choosePaymentLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 106
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->containerTotals:Landroid/widget/LinearLayout;

    .line 107
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->containerTotals:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 108
    const/16 v1, 0x17

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->continueButton:Landroid/widget/Button;

    .line 109
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->continueButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 110
    const/16 v1, 0x20

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryFee:Landroid/widget/TextView;

    .line 111
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryFeeValue:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryFeeValue:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 113
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryRow:Landroid/widget/LinearLayout;

    .line 114
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 115
    const/16 v1, 0x1b

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryView:Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    .line 116
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryView:Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 117
    const/16 v1, 0x23

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->discount:Landroid/widget/TextView;

    .line 118
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->discountContainer:Landroid/widget/LinearLayout;

    .line 119
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->discountContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 120
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->discountValue:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->discountValue:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 122
    const/16 v1, 0x29

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->imageView:Landroid/widget/ImageView;

    .line 123
    const/16 v1, 0x1d

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/databinding/InvoiceBinding;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->invoiceContainer:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    .line 124
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->invoiceContainer:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 125
    const/16 v1, 0x28

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->ivAliImg:Landroid/widget/ImageView;

    .line 126
    const/16 v1, 0x13

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView19:Landroid/widget/FrameLayout;

    .line 127
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView19:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 128
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView2:Landroid/widget/FrameLayout;

    .line 129
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 130
    const/16 v1, 0x14

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView20:Landroid/widget/FrameLayout;

    .line 131
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView20:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    const/16 v1, 0x18

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView24:Landroid/widget/FrameLayout;

    .line 133
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView24:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 134
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView3:Landroid/widget/FrameLayout;

    .line 135
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView3:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 136
    const/16 v1, 0x12

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->noPaymentRequiredLabel:Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->noPaymentRequiredLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 138
    const/16 v1, 0x21

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->orderTotal:Landroid/widget/TextView;

    .line 139
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->orderTotalValue:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->orderTotalValue:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 141
    const/16 v1, 0x27

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->payWithLabel:Landroid/widget/TextView;

    .line 142
    const/16 v1, 0x10

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->paymentContainer:Landroid/widget/LinearLayout;

    .line 143
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->paymentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 144
    const/16 v1, 0x1a

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->pickupView:Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    .line 145
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->pickupView:Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 146
    const/16 v1, 0x19

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->progress:Landroid/widget/ProgressBar;

    .line 147
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 148
    const/16 v1, 0x1e

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    .line 149
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 150
    const/16 v1, 0x1c

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->remarkContainer:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    .line 151
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->remarkContainer:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 152
    aget-object v1, v0, v5

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->subtotalContainer:Landroid/widget/LinearLayout;

    .line 153
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->subtotalContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 154
    const/16 v1, 0x24

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->tax:Landroid/widget/TextView;

    .line 155
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->taxContainer:Landroid/widget/LinearLayout;

    .line 156
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->taxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 157
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->taxValue:Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->taxValue:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 159
    const/16 v1, 0x16

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->timeRestrictionWarning:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->timeRestrictionWarning:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 161
    const/16 v1, 0x26

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->total:Landroid/widget/TextView;

    .line 162
    const/16 v1, 0x25

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->totalContainer:Landroid/widget/LinearLayout;

    .line 163
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->totalEnergy:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->totalEnergy:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 165
    const/16 v1, 0xf

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->totalValue:Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->totalValue:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 167
    const/16 v1, 0x15

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->unavailablePods:Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->unavailablePods:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->setRootTag(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->invalidateAll()V

    .line 172
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.ActivityCheckoutBinding"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    const-string v0, "layout/activity_checkout_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view tag isn\'t correct on view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;

    invoke-direct {v0, p1, p0}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method private onChangeDeliveryView(Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;I)Z
    .locals 6
    .param p1, "DeliveryView"    # Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onChangeDeliveryView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 476
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 484
    :goto_0
    return v0

    .line 478
    :pswitch_0
    monitor-enter p0

    .line 479
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 480
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onChangeInvoiceContainer(Lcom/mcdonalds/app/databinding/InvoiceBinding;I)Z
    .locals 6
    .param p1, "InvoiceContainer"    # Lcom/mcdonalds/app/databinding/InvoiceBinding;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onChangeInvoiceContainer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 465
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 473
    :goto_0
    return v0

    .line 467
    :pswitch_0
    monitor-enter p0

    .line 468
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 469
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onChangePickupView(Lcom/mcdonalds/app/databinding/PickupLocationBinding;I)Z
    .locals 6
    .param p1, "PickupView"    # Lcom/mcdonalds/app/databinding/PickupLocationBinding;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onChangePickupView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 454
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 462
    :goto_0
    return v0

    .line 456
    :pswitch_0
    monitor-enter p0

    .line 457
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x8

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 458
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onChangePresenter(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;I)Z
    .locals 6
    .param p1, "Presenter"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "onChangePresenter"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 253
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 429
    :goto_0
    return v0

    .line 255
    :pswitch_1
    monitor-enter p0

    .line 256
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 257
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 261
    :pswitch_2
    monitor-enter p0

    .line 262
    :try_start_1
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 263
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 267
    :pswitch_3
    monitor-enter p0

    .line 268
    :try_start_2
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 269
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 273
    :pswitch_4
    monitor-enter p0

    .line 274
    :try_start_3
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 275
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 279
    :pswitch_5
    monitor-enter p0

    .line 280
    :try_start_4
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x400

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 281
    monitor-exit p0

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 285
    :pswitch_6
    monitor-enter p0

    .line 286
    :try_start_5
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x800

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 287
    monitor-exit p0

    goto :goto_0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    .line 291
    :pswitch_7
    monitor-enter p0

    .line 292
    :try_start_6
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 293
    monitor-exit p0

    goto :goto_0

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    .line 297
    :pswitch_8
    monitor-enter p0

    .line 298
    :try_start_7
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 299
    monitor-exit p0

    goto :goto_0

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    .line 303
    :pswitch_9
    monitor-enter p0

    .line 304
    :try_start_8
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x4000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 305
    monitor-exit p0

    goto :goto_0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v0

    .line 309
    :pswitch_a
    monitor-enter p0

    .line 310
    :try_start_9
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 311
    monitor-exit p0

    goto :goto_0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v0

    .line 315
    :pswitch_b
    monitor-enter p0

    .line 316
    :try_start_a
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x10000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 317
    monitor-exit p0

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v0

    .line 321
    :pswitch_c
    monitor-enter p0

    .line 322
    :try_start_b
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x20000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 323
    monitor-exit p0

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v0

    .line 327
    :pswitch_d
    monitor-enter p0

    .line 328
    :try_start_c
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x40000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 329
    monitor-exit p0

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v0

    .line 333
    :pswitch_e
    monitor-enter p0

    .line 334
    :try_start_d
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x80000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 335
    monitor-exit p0

    goto/16 :goto_0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v0

    .line 339
    :pswitch_f
    monitor-enter p0

    .line 340
    :try_start_e
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x100000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 341
    monitor-exit p0

    goto/16 :goto_0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v0

    .line 345
    :pswitch_10
    monitor-enter p0

    .line 346
    :try_start_f
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x200000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 347
    monitor-exit p0

    goto/16 :goto_0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v0

    .line 351
    :pswitch_11
    monitor-enter p0

    .line 352
    :try_start_10
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x400000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 353
    monitor-exit p0

    goto/16 :goto_0

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v0

    .line 357
    :pswitch_12
    monitor-enter p0

    .line 358
    :try_start_11
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x800000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 359
    monitor-exit p0

    goto/16 :goto_0

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v0

    .line 363
    :pswitch_13
    monitor-enter p0

    .line 364
    :try_start_12
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x1000000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 365
    monitor-exit p0

    goto/16 :goto_0

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v0

    .line 369
    :pswitch_14
    monitor-enter p0

    .line 370
    :try_start_13
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x2000000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 371
    monitor-exit p0

    goto/16 :goto_0

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v0

    .line 375
    :pswitch_15
    monitor-enter p0

    .line 376
    :try_start_14
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x4000000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 377
    monitor-exit p0

    goto/16 :goto_0

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v0

    .line 381
    :pswitch_16
    monitor-enter p0

    .line 382
    :try_start_15
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x8000000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 383
    monitor-exit p0

    goto/16 :goto_0

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v0

    .line 387
    :pswitch_17
    monitor-enter p0

    .line 388
    :try_start_16
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x10000000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 389
    monitor-exit p0

    goto/16 :goto_0

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v0

    .line 393
    :pswitch_18
    monitor-enter p0

    .line 394
    :try_start_17
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x20000000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 395
    monitor-exit p0

    goto/16 :goto_0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw v0

    .line 399
    :pswitch_19
    monitor-enter p0

    .line 400
    :try_start_18
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/32 v4, 0x40000000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 401
    monitor-exit p0

    goto/16 :goto_0

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw v0

    .line 405
    :pswitch_1a
    monitor-enter p0

    .line 406
    :try_start_19
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide v4, 0x80000000L

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 407
    monitor-exit p0

    goto/16 :goto_0

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    throw v0

    .line 411
    :pswitch_1b
    monitor-enter p0

    .line 412
    :try_start_1a
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide v4, 0x100000000L

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 413
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    throw v0

    .line 417
    :pswitch_1c
    monitor-enter p0

    .line 418
    :try_start_1b
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide v4, 0x200000000L

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 419
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    throw v0

    .line 423
    :pswitch_1d
    monitor-enter p0

    .line 424
    :try_start_1c
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 425
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    throw v0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_9
        :pswitch_0
        :pswitch_1b
        :pswitch_5
        :pswitch_0
        :pswitch_b
        :pswitch_1a
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_11
        :pswitch_2
        :pswitch_1c
        :pswitch_6
        :pswitch_0
        :pswitch_c
        :pswitch_19
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_18
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method private onChangeQrScanFtuView(Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;I)Z
    .locals 6
    .param p1, "QrScanFtuView"    # Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onChangeQrScanFtuView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 432
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 440
    :goto_0
    return v0

    .line 434
    :pswitch_0
    monitor-enter p0

    .line 435
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 436
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onChangeRemarkContainer(Lcom/mcdonalds/app/databinding/OrderRemarkBinding;I)Z
    .locals 6
    .param p1, "RemarkContainer"    # Lcom/mcdonalds/app/databinding/OrderRemarkBinding;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onChangeRemarkContainer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 443
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 451
    :goto_0
    return v0

    .line 445
    :pswitch_0
    monitor-enter p0

    .line 446
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 447
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected executeBindings()V
    .locals 40

    .prologue
    const-string v36, "executeBindings"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    const-wide/16 v6, 0x0

    .line 490
    .local v6, "dirtyFlags":J
    monitor-enter p0

    .line 491
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 492
    const-wide/16 v36, 0x0

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 493
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    const/16 v23, 0x0

    .line 495
    .local v23, "presenterShowPaymentContainer":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .line 496
    .local v5, "presenter":Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
    const/16 v20, 0x0

    .line 497
    .local v20, "presenterShowInvoice":Z
    const/4 v14, 0x0

    .line 498
    .local v14, "presenterIsLoading":Z
    const/16 v17, 0x0

    .line 499
    .local v17, "presenterShowDeliveryFee":Z
    const/16 v27, 0x0

    .line 500
    .local v27, "presenterShowTax":Z
    const/4 v9, 0x0

    .line 501
    .local v9, "presenterContinueButtonText":Ljava/lang/String;
    const/16 v28, 0x0

    .line 502
    .local v28, "presenterShowTimeRestrictionWarning":Z
    const/16 v32, 0x0

    .line 503
    .local v32, "presenterTimeRestrictionWarning":Ljava/lang/String;
    const/4 v11, 0x0

    .line 504
    .local v11, "presenterDiscount":Ljava/lang/String;
    const/16 v35, 0x0

    .line 505
    .local v35, "presenterUnavailablePODsMessage":Ljava/lang/String;
    const/4 v10, 0x0

    .line 506
    .local v10, "presenterDeliveryFee":Ljava/lang/String;
    const/4 v4, 0x0

    .line 507
    .local v4, "PresenterIsLoading1":Z
    const/16 v30, 0x0

    .line 508
    .local v30, "presenterSubtotal":Ljava/lang/String;
    const/16 v24, 0x0

    .line 509
    .local v24, "presenterShowPickupLocation":Z
    const/16 v21, 0x0

    .line 510
    .local v21, "presenterShowNoPaymentRequired":Z
    const/16 v22, 0x0

    .line 511
    .local v22, "presenterShowOrderRemark":Z
    const/16 v25, 0x0

    .line 512
    .local v25, "presenterShowQRScanFirstTime":Z
    const/16 v26, 0x0

    .line 513
    .local v26, "presenterShowSubtotal":Z
    const/4 v8, 0x0

    .line 514
    .local v8, "presenterBagCharge":Ljava/lang/String;
    const/4 v15, 0x0

    .line 515
    .local v15, "presenterPaymentMethodName":Ljava/lang/String;
    const/16 v31, 0x0

    .line 516
    .local v31, "presenterTax":Ljava/lang/String;
    const/16 v33, 0x0

    .line 517
    .local v33, "presenterTotal":Ljava/lang/String;
    const/16 v19, 0x0

    .line 518
    .local v19, "presenterShowDiscount":Z
    const/16 v16, 0x0

    .line 519
    .local v16, "presenterShowBagCharge":Z
    const/16 v18, 0x0

    .line 520
    .local v18, "presenterShowDeliveryLocation":Z
    const/4 v13, 0x0

    .line 521
    .local v13, "presenterEnablePaymentContainer":Z
    const/4 v12, 0x0

    .line 522
    .local v12, "presenterEnableContinueButton":Z
    const/16 v29, 0x0

    .line 523
    .local v29, "presenterShowUnavailablePODs":Z
    const/16 v34, 0x0

    .line 525
    .local v34, "presenterTotalCalories":Ljava/lang/String;
    const-wide v36, 0x7ffffffc1L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_1c

    .line 528
    const-wide v36, 0x400400001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_0

    .line 530
    if-eqz v5, :cond_0

    .line 532
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowPaymentContainer()Z

    move-result v23

    .line 535
    :cond_0
    const-wide v36, 0x404000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_1

    .line 537
    if-eqz v5, :cond_1

    .line 539
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowInvoice()Z

    move-result v20

    .line 542
    :cond_1
    const-wide v36, 0x400000201L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_2

    .line 544
    if-eqz v5, :cond_2

    .line 546
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowDeliveryFee()Z

    move-result v17

    .line 549
    :cond_2
    const-wide v36, 0x400020001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_3

    .line 551
    if-eqz v5, :cond_3

    .line 553
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowTax()Z

    move-result v27

    .line 556
    :cond_3
    const-wide v36, 0x500000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_4

    .line 558
    if-eqz v5, :cond_4

    .line 560
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getContinueButtonText()Ljava/lang/String;

    move-result-object v9

    .line 563
    :cond_4
    const-wide v36, 0x440000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_5

    .line 565
    if-eqz v5, :cond_5

    .line 567
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowTimeRestrictionWarning()Z

    move-result v28

    .line 570
    :cond_5
    const-wide v36, 0x420000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_6

    .line 572
    if-eqz v5, :cond_6

    .line 574
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getTimeRestrictionWarning()Ljava/lang/String;

    move-result-object v32

    .line 577
    :cond_6
    const-wide v36, 0x400010001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_7

    .line 579
    if-eqz v5, :cond_7

    .line 581
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getDiscount()Ljava/lang/String;

    move-result-object v11

    .line 584
    :cond_7
    const-wide v36, 0x408000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_8

    .line 586
    if-eqz v5, :cond_8

    .line 588
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getUnavailablePODsMessage()Ljava/lang/String;

    move-result-object v35

    .line 591
    :cond_8
    const-wide v36, 0x400000401L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_9

    .line 593
    if-eqz v5, :cond_9

    .line 595
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getDeliveryFee()Ljava/lang/String;

    move-result-object v10

    .line 598
    :cond_9
    const-wide v36, 0x400000041L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_b

    .line 600
    if-eqz v5, :cond_a

    .line 602
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getIsLoading()Z

    move-result v4

    .line 607
    :cond_a
    if-nez v4, :cond_3a

    const/4 v14, 0x1

    .line 609
    :cond_b
    :goto_0
    const-wide v36, 0x400001001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_c

    .line 611
    if-eqz v5, :cond_c

    .line 613
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getSubtotal()Ljava/lang/String;

    move-result-object v30

    .line 616
    :cond_c
    const-wide v36, 0x400000081L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_d

    .line 618
    if-eqz v5, :cond_d

    .line 620
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowPickupLocation()Z

    move-result v24

    .line 623
    :cond_d
    const-wide v36, 0x401000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_e

    .line 625
    if-eqz v5, :cond_e

    .line 627
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowNoPaymentRequired()Z

    move-result v21

    .line 630
    :cond_e
    const-wide v36, 0x402000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_f

    .line 632
    if-eqz v5, :cond_f

    .line 634
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowOrderRemark()Z

    move-result v22

    .line 637
    :cond_f
    const-wide v36, 0x600000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_10

    .line 639
    if-eqz v5, :cond_10

    .line 641
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowQRScanFirstTime()Z

    move-result v25

    .line 644
    :cond_10
    const-wide v36, 0x400000801L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_11

    .line 646
    if-eqz v5, :cond_11

    .line 648
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowSubtotal()Z

    move-result v26

    .line 651
    :cond_11
    const-wide v36, 0x400004001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_12

    .line 653
    if-eqz v5, :cond_12

    .line 655
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getBagCharge()Ljava/lang/String;

    move-result-object v8

    .line 658
    :cond_12
    const-wide v36, 0x400800001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_13

    .line 660
    if-eqz v5, :cond_13

    .line 662
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getPaymentMethodName()Ljava/lang/String;

    move-result-object v15

    .line 665
    :cond_13
    const-wide v36, 0x400040001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_14

    .line 667
    if-eqz v5, :cond_14

    .line 669
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getTax()Ljava/lang/String;

    move-result-object v31

    .line 672
    :cond_14
    const-wide v36, 0x400100001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_15

    .line 674
    if-eqz v5, :cond_15

    .line 676
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getTotal()Ljava/lang/String;

    move-result-object v33

    .line 679
    :cond_15
    const-wide v36, 0x400008001L    # 8.487999354E-314

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_16

    .line 681
    if-eqz v5, :cond_16

    .line 683
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowDiscount()Z

    move-result v19

    .line 686
    :cond_16
    const-wide v36, 0x400002001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_17

    .line 688
    if-eqz v5, :cond_17

    .line 690
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowBagCharge()Z

    move-result v16

    .line 693
    :cond_17
    const-wide v36, 0x400000101L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_18

    .line 695
    if-eqz v5, :cond_18

    .line 697
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowDeliveryLocation()Z

    move-result v18

    .line 700
    :cond_18
    const-wide v36, 0x400200001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_19

    .line 702
    if-eqz v5, :cond_19

    .line 704
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getEnablePaymentContainer()Z

    move-result v13

    .line 707
    :cond_19
    const-wide v36, 0x480000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_1a

    .line 709
    if-eqz v5, :cond_1a

    .line 711
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getEnableContinueButton()Z

    move-result v12

    .line 714
    :cond_1a
    const-wide v36, 0x410000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_1b

    .line 716
    if-eqz v5, :cond_1b

    .line 718
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getShowUnavailablePODs()Z

    move-result v29

    .line 721
    :cond_1b
    const-wide v36, 0x400080001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_1c

    .line 723
    if-eqz v5, :cond_1c

    .line 725
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getTotalCalories()Ljava/lang/String;

    move-result-object v34

    .line 730
    :cond_1c
    const-wide v36, 0x400002001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_1d

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->bagChargeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 735
    :cond_1d
    const-wide v36, 0x400004001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_1e

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->bagChargeValue:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 740
    :cond_1e
    const-wide v36, 0x400800001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_1f

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->choosePaymentLabel:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 745
    :cond_1f
    const-wide v36, 0x400000041L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_20

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->containerTotals:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v14}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 751
    :cond_20
    const-wide v36, 0x480000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_21

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->continueButton:Landroid/widget/Button;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 756
    :cond_21
    const-wide v36, 0x500000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_22

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->continueButton:Landroid/widget/Button;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 761
    :cond_22
    const-wide v36, 0x400000401L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_23

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryFeeValue:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 766
    :cond_23
    const-wide v36, 0x400000201L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_24

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryRow:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 771
    :cond_24
    const-wide v36, 0x400000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_25

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryView:Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;->setPresenter(Lcom/mcdonalds/app/util/DeliveryTimePresenter;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->invoiceContainer:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->setPresenter(Lcom/mcdonalds/app/util/InvoicePresenter;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->pickupView:Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->setPresenter(Lcom/mcdonalds/app/util/PickupLocationPresenter;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->remarkContainer:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/databinding/OrderRemarkBinding;->setPresenter(Lcom/mcdonalds/app/util/OrderRemarkPresenter;)V

    .line 779
    :cond_25
    const-wide v36, 0x400008001L    # 8.487999354E-314

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_26

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->discountContainer:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 784
    :cond_26
    const-wide v36, 0x400010001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_27

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->discountValue:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 789
    :cond_27
    const-wide v36, 0x402000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_28

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView19:Landroid/widget/FrameLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 794
    :cond_28
    const-wide v36, 0x400000081L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_29

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView2:Landroid/widget/FrameLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 799
    :cond_29
    const-wide v36, 0x404000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_2a

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView20:Landroid/widget/FrameLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 804
    :cond_2a
    const-wide v36, 0x600000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_2b

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView24:Landroid/widget/FrameLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 809
    :cond_2b
    const-wide v36, 0x400000101L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_2c

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mboundView3:Landroid/widget/FrameLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 814
    :cond_2c
    const-wide v36, 0x401000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_2d

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->noPaymentRequiredLabel:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 819
    :cond_2d
    const-wide v36, 0x400001001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_2e

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->orderTotalValue:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 824
    :cond_2e
    const-wide v36, 0x400200001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_2f

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->paymentContainer:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 829
    :cond_2f
    const-wide v36, 0x400400001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_30

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->paymentContainer:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 834
    :cond_30
    const-wide v36, 0x400000801L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_31

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->subtotalContainer:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 839
    :cond_31
    const-wide v36, 0x400020001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_32

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->taxContainer:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 844
    :cond_32
    const-wide v36, 0x400040001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_33

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->taxValue:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 849
    :cond_33
    const-wide v36, 0x420000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_34

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->timeRestrictionWarning:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 854
    :cond_34
    const-wide v36, 0x440000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_35

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->timeRestrictionWarning:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 859
    :cond_35
    const-wide v36, 0x400080001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_36

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->totalEnergy:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 864
    :cond_36
    const-wide v36, 0x400100001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_37

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->totalValue:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 869
    :cond_37
    const-wide v36, 0x408000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_38

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->unavailablePods:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 874
    :cond_38
    const-wide v36, 0x410000001L

    and-long v36, v36, v6

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_39

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->unavailablePods:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 879
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->pickupView:Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryView:Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->remarkContainer:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->invoiceContainer:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 884
    return-void

    .line 493
    .end local v4    # "PresenterIsLoading1":Z
    .end local v5    # "presenter":Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
    .end local v8    # "presenterBagCharge":Ljava/lang/String;
    .end local v9    # "presenterContinueButtonText":Ljava/lang/String;
    .end local v10    # "presenterDeliveryFee":Ljava/lang/String;
    .end local v11    # "presenterDiscount":Ljava/lang/String;
    .end local v12    # "presenterEnableContinueButton":Z
    .end local v13    # "presenterEnablePaymentContainer":Z
    .end local v14    # "presenterIsLoading":Z
    .end local v15    # "presenterPaymentMethodName":Ljava/lang/String;
    .end local v16    # "presenterShowBagCharge":Z
    .end local v17    # "presenterShowDeliveryFee":Z
    .end local v18    # "presenterShowDeliveryLocation":Z
    .end local v19    # "presenterShowDiscount":Z
    .end local v20    # "presenterShowInvoice":Z
    .end local v21    # "presenterShowNoPaymentRequired":Z
    .end local v22    # "presenterShowOrderRemark":Z
    .end local v23    # "presenterShowPaymentContainer":Z
    .end local v24    # "presenterShowPickupLocation":Z
    .end local v25    # "presenterShowQRScanFirstTime":Z
    .end local v26    # "presenterShowSubtotal":Z
    .end local v27    # "presenterShowTax":Z
    .end local v28    # "presenterShowTimeRestrictionWarning":Z
    .end local v29    # "presenterShowUnavailablePODs":Z
    .end local v30    # "presenterSubtotal":Ljava/lang/String;
    .end local v31    # "presenterTax":Ljava/lang/String;
    .end local v32    # "presenterTimeRestrictionWarning":Ljava/lang/String;
    .end local v33    # "presenterTotal":Ljava/lang/String;
    .end local v34    # "presenterTotalCalories":Ljava/lang/String;
    .end local v35    # "presenterUnavailablePODsMessage":Ljava/lang/String;
    :catchall_0
    move-exception v36

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v36

    .line 607
    .restart local v4    # "PresenterIsLoading1":Z
    .restart local v5    # "presenter":Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
    .restart local v8    # "presenterBagCharge":Ljava/lang/String;
    .restart local v9    # "presenterContinueButtonText":Ljava/lang/String;
    .restart local v10    # "presenterDeliveryFee":Ljava/lang/String;
    .restart local v11    # "presenterDiscount":Ljava/lang/String;
    .restart local v12    # "presenterEnableContinueButton":Z
    .restart local v13    # "presenterEnablePaymentContainer":Z
    .restart local v14    # "presenterIsLoading":Z
    .restart local v15    # "presenterPaymentMethodName":Ljava/lang/String;
    .restart local v16    # "presenterShowBagCharge":Z
    .restart local v17    # "presenterShowDeliveryFee":Z
    .restart local v18    # "presenterShowDeliveryLocation":Z
    .restart local v19    # "presenterShowDiscount":Z
    .restart local v20    # "presenterShowInvoice":Z
    .restart local v21    # "presenterShowNoPaymentRequired":Z
    .restart local v22    # "presenterShowOrderRemark":Z
    .restart local v23    # "presenterShowPaymentContainer":Z
    .restart local v24    # "presenterShowPickupLocation":Z
    .restart local v25    # "presenterShowQRScanFirstTime":Z
    .restart local v26    # "presenterShowSubtotal":Z
    .restart local v27    # "presenterShowTax":Z
    .restart local v28    # "presenterShowTimeRestrictionWarning":Z
    .restart local v29    # "presenterShowUnavailablePODs":Z
    .restart local v30    # "presenterSubtotal":Ljava/lang/String;
    .restart local v31    # "presenterTax":Ljava/lang/String;
    .restart local v32    # "presenterTimeRestrictionWarning":Ljava/lang/String;
    .restart local v33    # "presenterTotal":Ljava/lang/String;
    .restart local v34    # "presenterTotalCalories":Ljava/lang/String;
    .restart local v35    # "presenterUnavailablePODsMessage":Ljava/lang/String;
    :cond_3a
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public hasPendingBindings()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-string v1, "hasPendingBindings"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 191
    monitor-exit p0

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->pickupView:Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    invoke-virtual {v1}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryView:Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    invoke-virtual {v1}, Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->remarkContainer:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    invoke-virtual {v1}, Lcom/mcdonalds/app/databinding/OrderRemarkBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->invoiceContainer:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    invoke-virtual {v1}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    invoke-virtual {v1}, Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .prologue
    const-string v0, "invalidateAll"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    monitor-enter p0

    .line 177
    const-wide v0, 0x400000000L

    :try_start_0
    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->pickupView:Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->invalidateAll()V

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->deliveryView:Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;->invalidateAll()V

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->remarkContainer:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/OrderRemarkBinding;->invalidateAll()V

    .line 182
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->invoiceContainer:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invalidateAll()V

    .line 183
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->qrScanFtuView:Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;->invalidateAll()V

    .line 184
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->requestRebind()V

    .line 185
    return-void

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 5
    .param p1, "localFieldId"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldId"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "onFieldChange"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 250
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 238
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->onChangePresenter(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;I)Z

    move-result v0

    goto :goto_0

    .line 240
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->onChangeQrScanFtuView(Lcom/mcdonalds/app/databinding/ViewCheckinTutorialBinding;I)Z

    move-result v0

    goto :goto_0

    .line 242
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->onChangeRemarkContainer(Lcom/mcdonalds/app/databinding/OrderRemarkBinding;I)Z

    move-result v0

    goto :goto_0

    .line 244
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->onChangePickupView(Lcom/mcdonalds/app/databinding/PickupLocationBinding;I)Z

    move-result v0

    goto :goto_0

    .line 246
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Lcom/mcdonalds/app/databinding/InvoiceBinding;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->onChangeInvoiceContainer(Lcom/mcdonalds/app/databinding/InvoiceBinding;I)Z

    move-result v0

    goto :goto_0

    .line 248
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->onChangeDeliveryView(Lcom/mcdonalds/app/databinding/DeliveryLocationBinding;I)Z

    move-result v0

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setPresenter(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V
    .locals 4
    .param p1, "Presenter"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0, v2, p1}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 223
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mPresenter:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->mDirtyFlags:J

    .line 226
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/databinding/ActivityCheckoutBinding;->notifyPropertyChanged(I)V

    .line 228
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 229
    return-void

    .line 226
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
