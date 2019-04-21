.class public Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;
.super Landroid/widget/FrameLayout;
.source "ExternalDeliveryView.java"


# instance fields
.field private mBasketWarning:Landroid/view/View;

.field private final mOnClickLaunchDelivery:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView$1;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->mOnClickLaunchDelivery:Landroid/view/View$OnClickListener;

    .line 34
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->inflate(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView$1;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->mOnClickLaunchDelivery:Landroid/view/View$OnClickListener;

    .line 39
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->inflate(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "inflate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const v1, 0x7f04019f

    invoke-static {p1, v1, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const v1, 0x7f110533

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "button":Landroid/view/View;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->mOnClickLaunchDelivery:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f110534

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->mBasketWarning:Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->refresh()V

    .line 54
    .end local v0    # "button":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    const-string v2, "refresh"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 64
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v0

    .line 66
    .local v0, "hasItemsInBasket":Z
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->mBasketWarning:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .end local v0    # "hasItemsInBasket":Z
    :cond_0
    return-void

    .line 66
    .restart local v0    # "hasItemsInBasket":Z
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method
