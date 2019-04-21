.class public Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
.super Landroid/databinding/BaseObservable;
.source "CheckoutPresenter.java"

# interfaces
.implements Lcom/mcdonalds/app/util/DeliveryTimePresenter;
.implements Lcom/mcdonalds/app/util/InvoicePresenter;
.implements Lcom/mcdonalds/app/util/OrderRemarkPresenter;
.implements Lcom/mcdonalds/app/util/PickupLocationPresenter;


# instance fields
.field private mBagCharge:D

.field private mCashPaymentMethodId:I

.field private mComingFromBagCharges:Z

.field private mContext:Landroid/content/Context;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDeliveryFee:D

.field private mDeliveryHeaderText:Landroid/text/Spanned;

.field private mDeliveryStoreListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscount:D

.field private mLoading:Z

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mPaymentMethodListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPaymentMethods:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mShowQRScanFirstTime:Z

.field private mStoreName:Ljava/lang/String;

.field private mSubtotal:D

.field private mTax:D

.field private mTimeRestrictionWarning:Ljava/lang/String;

.field private mTotal:D

.field private mTotalizeListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUnavailablePODsMessage:Ljava/lang/String;

.field private mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

.field public onMaxCardAlertPositiveClicked:Landroid/content/DialogInterface$OnClickListener;

.field public onMaxCardsAlertNegativeClicked:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/ordering/checkout/CheckoutView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 797
    new-instance v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$1;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->onMaxCardAlertPositiveClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 805
    new-instance v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$2;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->onMaxCardsAlertNegativeClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 875
    new-instance v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$3;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDeliveryStoreListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 894
    new-instance v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$4;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mPaymentMethodListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 920
    new-instance v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$5;-><init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTotalizeListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 97
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)Lcom/mcdonalds/app/ordering/checkout/CheckoutView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutPresenter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutPresenter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Ljava/util/Date;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "x2"    # Ljava/util/Date;
    .param p3, "x3"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutPresenter"

    const-string v2, "access$200"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setDeliveryHeaderText(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)Ljava/util/LinkedHashSet;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutPresenter"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mPaymentMethods:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutPresenter"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iput p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCashPaymentMethodId:I

    return p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutPresenter"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkOrder()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutPresenter"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkProductErrors()V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkout.CheckoutPresenter"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setupTotals()V

    return-void
.end method

.method private checkOrder()V
    .locals 2

    .prologue
    const-string v0, "checkOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 690
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->isLargeOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.showLargerOrderNotification"

    .line 691
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showLargeOrderWarning()V

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkOrderErrors()V

    goto :goto_0
.end method

.method private checkOrderErrors()V
    .locals 15

    .prologue
    const v14, 0x7f0905c1

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v7, "checkOrderErrors"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    .line 708
    .local v5, "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsError()Ljava/util/List;

    move-result-object v3

    .line 710
    .local v3, "offerErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 711
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v3}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 712
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v2, v7, -0x1

    .line 714
    .local v2, "offerError":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "ecp_error_%d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "messageKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "string"

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 716
    .local v6, "resId":I
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    .end local v1    # "messageKey":Ljava/lang/String;
    .end local v2    # "offerError":I
    .end local v6    # "resId":I
    :cond_0
    if-eqz v0, :cond_1

    .line 730
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v7, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showFatalError(Ljava/lang/String;)V

    .line 732
    :cond_1
    return-void

    .line 719
    :cond_2
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 721
    .local v4, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v8

    if-nez v8, :cond_4

    .line 722
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f0901c8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v8, v14, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 723
    :cond_4
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v8

    if-nez v8, :cond_3

    .line 724
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v11, 0x7f09062c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v8, v14, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkPaymentAndContinue()V
    .locals 3

    .prologue
    const-string v0, "checkPaymentAndContinue"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v2, "/checkout/restaurant"

    .line 772
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 773
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "Continue"

    .line 774
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 770
    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 777
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->isContinueEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showNoPaymentSelectedError()V

    .line 784
    :goto_0
    return-void

    .line 783
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->completeOrderAndNavigate()V

    goto :goto_0
.end method

.method private checkProductErrors()V
    .locals 7

    .prologue
    const-string v4, "checkProductErrors"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    .line 738
    .local v1, "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getErrorCode()I

    move-result v3

    .line 740
    .local v3, "productError":I
    if-nez v3, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    const/4 v0, -0x1

    .line 746
    .local v0, "errorType":I
    sparse-switch v3, :sswitch_data_0

    .line 752
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v2, "outOfStockProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 753
    invoke-static {v4, v5}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 756
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 755
    invoke-static {v4, v5}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOfferCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 757
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductsOutOfStock(Ljava/util/List;)V

    .line 759
    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->setProductErrorCode(I)V

    .line 761
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 762
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    .line 764
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getProblematicProductsCodes()Ljava/util/List;

    move-result-object v5

    .line 765
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->shouldHidePositive()Z

    move-result v6

    .line 762
    invoke-interface {v4, v0, v3, v5, v6}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showOrderErrors(IILjava/util/List;Z)V

    goto :goto_0

    .line 749
    .end local v2    # "outOfStockProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_1

    .line 746
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40b -> :sswitch_0
        -0x3ff -> :sswitch_0
    .end sparse-switch
.end method

.method private checkTimeRestrictions()V
    .locals 9

    .prologue
    const-string v4, "checkTimeRestrictions"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f090768

    .line 596
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 599
    .local v1, "hasTimeRestrictions":Z
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v4, :cond_1

    .line 600
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 602
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getTimeRestriction()Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    move-result-object v3

    .line 603
    .local v3, "timeRestriction":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    if-eqz v3, :cond_0

    .line 605
    const-string v5, " %s - %s "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getFromTime()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 606
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getToTime()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 605
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const/4 v1, 0x1

    goto :goto_0

    .line 613
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "timeRestriction":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    :cond_1
    if-eqz v1, :cond_2

    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setTimeRestrictionWarning(Ljava/lang/String;)V

    .line 616
    :cond_2
    return-void
.end method

.method private checkUnavailablePODs()V
    .locals 3

    .prologue
    const-string v1, "checkUnavailablePODs"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getOrderUnavailablePODs()Ljava/util/List;

    move-result-object v0

    .line 581
    .local v0, "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    .line 584
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 583
    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getUnavailablePODMessage(Ljava/util/List;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 591
    .end local v0    # "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private completeOrderAndNavigate()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const-string v6, "completeOrderAndNavigate"

    const/4 v8, 0x0

    invoke-static {p0, v6, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    .line 821
    .local v2, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    .line 823
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v5, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPODs()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;-><init>(Ljava/util/List;)V

    .line 824
    .local v5, "storeCapabilties":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->filterAvailableCapabilities()Ljava/util/List;

    move-result-object v0

    .line 826
    .local v0, "availableCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 827
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->isHasScanner()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v3, v7

    .line 829
    .local v3, "shouldSkipPickupScreen":Z
    :cond_1
    if-eqz v3, :cond_2

    .line 830
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->shouldShowQRScanFirstTime()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 831
    invoke-direct {p0, v7}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setShowQRScanFirstTime(Z)V

    .line 843
    :goto_0
    return-void

    .line 836
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateTender()V

    .line 838
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 839
    .local v1, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v6, 0x37

    iget v7, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCashPaymentMethodId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 840
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Check-in at restaurant"

    invoke-static {v6, v7, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 842
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->navigateToCheckin(Z)V

    goto :goto_0
.end method

.method private formatCurrencyValue(D)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # D

    .prologue
    const-string v1, "formatCurrencyValue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    .line 527
    .local v0, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f09086d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isContinueEnabled()Z
    .locals 2

    .prologue
    const-string v0, "isContinueEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 815
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneTimePaymentFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 814
    :goto_0
    return v0

    .line 816
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLargeOrder()Z
    .locals 2

    .prologue
    const-string v0, "isLargeOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->isIsLargeOrder()Z

    move-result v0

    .line 700
    return v0
.end method

.method private markScanFtuAsSeen()V
    .locals 2

    .prologue
    const-string v0, "markScanFtuAsSeen"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setFirstTimeQrScan(Z)V

    .line 869
    return-void
.end method

.method private navigateToCheckin(Z)V
    .locals 4
    .param p1, "shouldSkipPickupScreen"    # Z

    .prologue
    const-string v0, "navigateToCheckin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isInterimCheckinFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mComingFromBagCharges:Z

    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->startInterinCheckinFlow()V

    .line 859
    :goto_0
    return-void

    .line 852
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mComingFromBagCharges:Z

    if-nez v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showPickupMethodSelector()V

    goto :goto_0

    .line 854
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneTimePaymentFlow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->startOneTimePaymentCheckinFlow()V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->startRegularCheckinFlow()V

    goto :goto_0
.end method

.method private safeDouble(Ljava/lang/Double;)D
    .locals 3
    .param p1, "source"    # Ljava/lang/Double;

    .prologue
    const-string v0, "safeDouble"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method private setAsapDeliveryDate(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    .locals 8
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v3, "setAsapDeliveryDate"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f0902ed

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "time":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNowInStoreLocalTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    .line 197
    .local v1, "nowInStoreTime":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 200
    .local v0, "edtInStoreTime":Ljava/util/Date;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTimeInMinutes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .end local v0    # "edtInStoreTime":Ljava/util/Date;
    .end local v1    # "nowInStoreTime":Ljava/util/Date;
    :cond_0
    return-object v2
.end method

.method private setBagCharge(D)V
    .locals 5
    .param p1, "bagCharge"    # D

    .prologue
    const/4 v4, 0x1

    const-string v0, "setBagCharge"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mBagCharge:D

    .line 265
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 266
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 267
    return-void
.end method

.method private setDeliveryFee(D)V
    .locals 5
    .param p1, "deliveryFee"    # D

    .prologue
    const-string v0, "setDeliveryFee"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDeliveryFee:D

    .line 233
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 234
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 235
    return-void
.end method

.method private setDeliveryHeaderText(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11
    .param p1, "customerAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "deliveryDate"    # Ljava/util/Date;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v4, "setDeliveryHeaderText"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v10

    aput-object p2, v5, v9

    aput-object p3, v5, v7

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const-string v2, ""

    .line 163
    .local v2, "headerString":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 165
    .local v0, "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setAsapDeliveryDate(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f090344

    new-array v6, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .end local v0    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v3    # "time":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDeliveryHeaderText:Landroid/text/Spanned;

    .line 190
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 191
    return-void

    .line 169
    .restart local v0    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f090343

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 172
    .end local v0    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4, p2, p3, v9}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "deliveryTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0901cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v6, 0x7f0901d0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f090341

    new-array v6, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 187
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 186
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private setDiscount(D)V
    .locals 5
    .param p1, "discount"    # D

    .prologue
    const-string v0, "setDiscount"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDiscount:D

    .line 281
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 282
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 283
    return-void
.end method

.method private setLoading(Z)V
    .locals 4
    .param p1, "loading"    # Z

    .prologue
    const-string v0, "setLoading"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mLoading:Z

    .line 507
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 508
    return-void
.end method

.method private setShowQRScanFirstTime(Z)V
    .locals 4
    .param p1, "showQRScanFirstTime"    # Z

    .prologue
    const-string v0, "setShowQRScanFirstTime"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mShowQRScanFirstTime:Z

    .line 517
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 518
    return-void
.end method

.method private setStoreName(Ljava/lang/String;)V
    .locals 3
    .param p1, "storeName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setStoreName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mStoreName:Ljava/lang/String;

    .line 218
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 219
    return-void
.end method

.method private setSubtotal(D)V
    .locals 5
    .param p1, "subtotal"    # D

    .prologue
    const-string v0, "setSubtotal"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mSubtotal:D

    .line 249
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 250
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 251
    return-void
.end method

.method private setTimeRestrictionWarning(Ljava/lang/String;)V
    .locals 3
    .param p1, "timeRestrictionWarning"    # Ljava/lang/String;

    .prologue
    const-string v0, "setTimeRestrictionWarning"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTimeRestrictionWarning:Ljava/lang/String;

    .line 480
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 481
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 482
    return-void
.end method

.method private setupDelivery()V
    .locals 6

    .prologue
    const-string v2, "setupDelivery"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    const-string v2, "delivery"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 544
    .local v0, "deliveryModule":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 547
    .local v1, "deliveryStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    .line 548
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 549
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v4

    .line 547
    invoke-direct {p0, v2, v3, v4}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setDeliveryHeaderText(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Ljava/util/Date;)V

    .line 556
    .end local v1    # "deliveryStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 552
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 553
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDeliveryStoreListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 551
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private setupPickup()V
    .locals 3

    .prologue
    const-string v1, "setupPickup"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 532
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 534
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setStoreName(Ljava/lang/String;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setStoreName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupTotals()V
    .locals 22

    .prologue
    const-string v20, "setupTotals"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v13

    .line 625
    .local v13, "totalizeResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    if-nez v13, :cond_0

    .line 678
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->safeDouble(Ljava/lang/Double;)D

    move-result-wide v8

    .line 630
    .local v8, "deliveryFee":D
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setDeliveryFee(D)V

    .line 632
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderValue()Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->safeDouble(Ljava/lang/Double;)D

    move-result-wide v14

    .line 634
    .local v14, "subtotal":D
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    .line 635
    .local v7, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 636
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getBagProductInOrder()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    .line 637
    .local v6, "bagProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v6, :cond_2

    .line 639
    invoke-static {v6}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v4

    .line 640
    .local v4, "bagChargeValue":D
    cmpl-double v20, v14, v4

    if-ltz v20, :cond_1

    .line 641
    sub-double/2addr v14, v4

    .line 643
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setBagCharge(D)V

    .line 647
    .end local v4    # "bagChargeValue":D
    .end local v6    # "bagProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setSubtotal(D)V

    .line 649
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->safeDouble(Ljava/lang/Double;)D

    move-result-wide v10

    .line 650
    .local v10, "discount":D
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setDiscount(D)V

    .line 652
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalTax()Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->safeDouble(Ljava/lang/Double;)D

    move-result-wide v16

    .line 653
    .local v16, "tax":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setTax(D)V

    .line 657
    add-double v20, v14, v8

    sub-double v20, v20, v10

    add-double v20, v20, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->safeDouble(Ljava/lang/Double;)D

    move-result-wide v18

    .line 658
    .local v18, "totalValue":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setTotal(D)V

    .line 660
    const-string v20, "ordering"

    invoke-static/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 662
    .local v12, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    const-wide/16 v20, 0x0

    cmpg-double v20, v18, v20

    if-gtz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v20

    cmpl-double v20, v10, v20

    if-ltz v20, :cond_3

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->allowZeroPricedOrder()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->setZeroPricedOrder(Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/sdk/modules/models/Order;->setZeroPriced(Z)V

    .line 665
    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 666
    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 667
    const/16 v20, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 676
    :goto_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setLoading(Z)V

    goto/16 :goto_0

    .line 669
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->setZeroPricedOrder(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/sdk/modules/models/Order;->setZeroPriced(Z)V

    .line 671
    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 672
    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 673
    const/16 v20, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    goto :goto_1
.end method

.method private shouldShowQRScanFirstTime()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowQRScanFirstTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isFirstTimeQrScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isInterimCheckinFlow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 864
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 862
    :goto_0
    return v0

    .line 864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private totalize()V
    .locals 3

    .prologue
    const-string/jumbo v1, "totalize"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 620
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTotalizeListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->totalize(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 621
    return-void
.end method


# virtual methods
.method public checkIfUserHasMoreThanMaxCards()V
    .locals 3

    .prologue
    const-string v1, "checkIfUserHasMoreThanMaxCards"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.ordering.enforceMaxCards"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 790
    .local v0, "numberOfCards":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getMaxAllowedCards()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showMaxCardsAlert()V

    .line 795
    .end local v0    # "numberOfCards":I
    :cond_0
    return-void
.end method

.method public chosePaymentClicked()V
    .locals 2

    .prologue
    const-string v0, "chosePaymentClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mPaymentMethods:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->showPaymentSelection(Ljava/util/LinkedHashSet;)V

    .line 133
    return-void
.end method

.method public continueClicked()V
    .locals 2

    .prologue
    const-string v0, "continueClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkPaymentAndContinue()V

    .line 137
    return-void
.end method

.method public continueWithLargeOrder()V
    .locals 2

    .prologue
    const-string v0, "continueWithLargeOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkOrderErrors()V

    .line 382
    return-void
.end method

.method public firstTimeScanContinue()V
    .locals 2

    .prologue
    const-string v0, "firstTimeScanContinue"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->markScanFtuAsSeen()V

    .line 146
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkPaymentAndContinue()V

    .line 147
    return-void
.end method

.method public firstTimeScanDismissed()V
    .locals 2

    .prologue
    const-string v0, "firstTimeScanDismissed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->markScanFtuAsSeen()V

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setShowQRScanFirstTime(Z)V

    .line 142
    return-void
.end method

.method public getBagCharge()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getBagCharge"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mBagCharge:D

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->formatCurrencyValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinueButtonText()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getContinueButtonText"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mComingFromBagCharges:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f09073a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeliveryFee()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getDeliveryFee"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDeliveryFee:D

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->formatCurrencyValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryHeaderText()Landroid/text/Spanned;
    .locals 2

    .prologue
    const-string v0, "getDeliveryHeaderText"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDeliveryHeaderText:Landroid/text/Spanned;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getDiscount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDiscount:D

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->formatCurrencyValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnableContinueButton()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getEnableContinueButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->isContinueEnabled()Z

    move-result v0

    return v0
.end method

.method public getEnablePaymentContainer()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getEnablePaymentContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInvoiceEnabled()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getInvoiceEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->invoiceRequested()Z

    move-result v0

    return v0
.end method

.method public getIsLoading()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getIsLoading"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mLoading:Z

    return v0
.end method

.method public getPayer()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getPayer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentMethodName()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v1, "getPaymentMethodName"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "paymentMethodDisplayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 390
    .end local v0    # "paymentMethodDisplayName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "paymentMethodDisplayName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f09016b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getRemark"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderRemarkString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemarkEnabled()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getRemarkEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isOrderRemarkAvailable()Z

    move-result v0

    return v0
.end method

.method public getShowBagCharge()Z
    .locals 4
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowBagCharge"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mBagCharge:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowDeliveryFee()Z
    .locals 4
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowDeliveryFee"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDeliveryFee:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowDeliveryLocation()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowDeliveryLocation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    return v0
.end method

.method public getShowDiscount()Z
    .locals 4
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowDiscount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mDiscount:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowInvoice()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowInvoice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.ordering.requestTaxInvoice"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 402
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    .line 402
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowNoPaymentRequired()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowNoPaymentRequired"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v0

    return v0
.end method

.method public getShowOrderRemark()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowOrderRemark"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    return v0
.end method

.method public getShowPaymentContainer()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowPaymentContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneTimePaymentFlow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowPickupLocation()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowPickupLocation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowQRScanFirstTime()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowQRScanFirstTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mShowQRScanFirstTime:Z

    return v0
.end method

.method public getShowSubtotal()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowSubtotal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public getShowTax()Z
    .locals 5
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "getShowTax"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 293
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v3, "modules.ordering.doNotShowTaxWithTotal"

    invoke-virtual {v0, v3, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v1

    .line 294
    .local v1, "doNotShow":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public getShowTimeRestrictionWarning()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowTimeRestrictionWarning"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTimeRestrictionWarning:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowUnavailablePODs()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowUnavailablePODs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mUnavailablePODsMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getStoreName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mStoreName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getSubtotal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mSubtotal:D

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->formatCurrencyValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTax()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getTax"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTax:D

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->formatCurrencyValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeRestrictionWarning()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getTimeRestrictionWarning"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTimeRestrictionWarning:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getTotal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-wide v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTotal:D

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->formatCurrencyValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCalories()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v1, "getTotalCalories"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "energyUnit":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrder(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUnavailablePODsMessage()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getUnavailablePODsMessage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mUnavailablePODsMessage:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    const-string v0, "initialize"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mPaymentMethods:Ljava/util/LinkedHashSet;

    .line 109
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 111
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 112
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mView:Lcom/mcdonalds/app/ordering/checkout/CheckoutView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutView;->navigateToSignIn()V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setupPickup()V

    .line 124
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setLoading(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setupPaymentModes()V

    .line 126
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkUnavailablePODs()V

    .line 127
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->checkTimeRestrictions()V

    .line 128
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->totalize()V

    .line 129
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setupDelivery()V

    goto :goto_1
.end method

.method public setAlipayPayment()V
    .locals 3

    .prologue
    const-string v1, "setAlipayPayment"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->fromCashPayment(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 369
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    .line 371
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0900cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "cashLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    .line 374
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 375
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 376
    return-void
.end method

.method public setCashPayment()V
    .locals 3

    .prologue
    const-string v1, "setCashPayment"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCashPaymentMethodId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->fromCashPayment(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 357
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    .line 359
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "cashLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    .line 362
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 363
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 364
    return-void
.end method

.method public setComingFromBagCharges(Z)V
    .locals 4
    .param p1, "comingFromBagCharges"    # Z

    .prologue
    const-string v0, "setComingFromBagCharges"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mComingFromBagCharges:Z

    .line 103
    return-void
.end method

.method public setInvoiceEnabled(Z)V
    .locals 4
    .param p1, "activated"    # Z

    .prologue
    const-string v0, "setInvoiceEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setInvoiceRequested(Z)V

    .line 414
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 415
    return-void
.end method

.method public setPayer(Ljava/lang/String;)V
    .locals 3
    .param p1, "payer"    # Ljava/lang/String;

    .prologue
    const-string v0, "setPayer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setCompanyName(Ljava/lang/String;)V

    .line 426
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 427
    return-void
.end method

.method public setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 3
    .param p1, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const-string v0, "setPaymentCard"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->fromPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 342
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    .line 343
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 345
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    .line 351
    :goto_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 352
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 353
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 3
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    const-string v0, "setRemark"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setOrderRemark(Ljava/lang/String;)V

    .line 454
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 455
    return-void
.end method

.method public setRemarkEnabled(Z)V
    .locals 4
    .param p1, "activated"    # Z

    .prologue
    const-string v0, "setRemarkEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setOrderRemarkAvailable(Z)V

    .line 443
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 444
    return-void
.end method

.method public setTax(D)V
    .locals 5
    .param p1, "tax"    # D

    .prologue
    const-string v0, "setTax"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTax:D

    .line 299
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 300
    return-void
.end method

.method public setTotal(D)V
    .locals 5
    .param p1, "total"    # D

    .prologue
    const-string v0, "setTotal"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mTotal:D

    .line 320
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->notifyPropertyChanged(I)V

    .line 321
    return-void
.end method

.method public setupPaymentModes()V
    .locals 5

    .prologue
    const-string v3, "setupPaymentModes"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    const-string v3, "ordering"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 562
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v3

    if-nez v3, :cond_1

    .line 563
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v0

    .line 564
    .local v0, "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 566
    .local v2, "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isPreferred()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 567
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    goto :goto_0

    .line 573
    .end local v0    # "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .end local v2    # "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->mPaymentMethodListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethods(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 574
    return-void
.end method
