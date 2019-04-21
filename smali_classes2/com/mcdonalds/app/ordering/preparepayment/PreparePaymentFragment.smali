.class public Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;
.super Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;
.source "PreparePaymentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final DO_NOT_SHOW_TAX_KEY:Ljava/lang/String;

.field private mBagCharge:Landroid/widget/TextView;

.field private mBagChargeContainer:Landroid/view/View;

.field private mCashPayment:Ljava/lang/Boolean;

.field private mChosePaymentLabel:Landroid/widget/TextView;

.field private mCompanyName:Landroid/widget/EditText;

.field private mContainerTotals:Landroid/view/View;

.field private mDeliveryFee:Ljava/lang/Double;

.field private mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

.field private mDiscount:Landroid/widget/TextView;

.field private mDiscountContainer:Landroid/view/View;

.field private mEnergyTotal:Landroid/widget/TextView;

.field private mInvoiceChecked:Z

.field private mIsComingFromBagCharge:Z

.field private mNoPaymentRequiredLabel:Landroid/view/View;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mOrderTotal:Landroid/widget/TextView;

.field private mPayWithLabel:Landroid/widget/TextView;

.field private mPaymentButton:Landroid/view/View;

.field private mPaymentMethodId:Ljava/lang/Integer;

.field private mPaymentTypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mPickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

.field private mPodWarning:Landroid/widget/TextView;

.field private mProgress:Landroid/view/View;

.field private mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

.field private mTax:Landroid/widget/TextView;

.field private mTimeRestrictionWarning:Landroid/widget/TextView;

.field private mTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;-><init>()V

    .line 76
    const-string v0, "modules.ordering.doNotShowTaxWithTotal"

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->DO_NOT_SHOW_TAX_KEY:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCashPayment:Ljava/lang/Boolean;

    .line 105
    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mInvoiceChecked:Z

    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;
    .param p1, "x1"    # Ljava/lang/Double;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PreparePaymentFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryFee:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PreparePaymentFragment"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mInvoiceChecked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PreparePaymentFragment"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentMethodId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;)Ljava/util/LinkedHashSet;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PreparePaymentFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentTypes:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PreparePaymentFragment"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->showOutofStockAlert(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PreparePaymentFragment"

    const-string v2, "access$500"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->setDeliveryHeader(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V

    return-void
.end method

.method private checkForTimeRestrictions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string v3, "checkForTimeRestrictions"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x7f090768

    .line 386
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v3, :cond_1

    .line 389
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 391
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getTimeRestriction()Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    move-result-object v2

    .line 392
    .local v2, "timeRestriction":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    if-eqz v2, :cond_0

    .line 394
    const-string v4, " %s - %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getFromTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    .line 395
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getToTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 394
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTimeRestrictionWarning:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 402
    .end local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "timeRestriction":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTimeRestrictionWarning:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method private checkPaymentAndContinue()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "checkPaymentAndContinue"

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "/checkout/restaurant"

    .line 444
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "On click"

    .line 445
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "Continue"

    .line 446
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 447
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v2

    .line 442
    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 449
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCashPayment:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f09061a

    .line 452
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f09062b

    .line 453
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    .line 454
    invoke-virtual {v1, v2, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 457
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 470
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 462
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->setOrderPayment(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 466
    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mInvoiceChecked:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setInvoiceRequested(Z)V

    .line 467
    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mInvoiceChecked:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCompanyName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setCompanyName(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->completeOrderAndNavigate()V

    goto :goto_0

    .line 467
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private checkUnavailablePODs()V
    .locals 4

    .prologue
    const-string v2, "checkUnavailablePODs"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getOrderUnavailablePODs()Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 296
    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getUnavailablePODMessage(Ljava/util/List;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPodWarning:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPodWarning:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 305
    .restart local v1    # "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPodWarning:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private completeOrderAndNavigate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-string v7, "completeOrderAndNavigate"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    .line 500
    .local v2, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    .line 502
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPODs()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;-><init>(Ljava/util/List;)V

    .line 503
    .local v6, "storeCapabilties":Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;->filterAvailableCapabilities()Ljava/util/List;

    move-result-object v0

    .line 505
    .local v0, "availableCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;>;"
    const/4 v4, 0x0

    .line 506
    .local v4, "shouldSkipPickupScreen":Z
    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 507
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->isHasScanner()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 508
    const/4 v4, 0x1

    .line 514
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 515
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->showFirstTimeQrScan()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 516
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 530
    :goto_1
    return-void

    .line 510
    :cond_1
    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    const/4 v4, 0x1

    goto :goto_0

    .line 521
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    .line 523
    .local v3, "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateTender()V

    .line 525
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 526
    .local v1, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v7, 0x37

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentMethodId:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Check-in at restaurant"

    invoke-static {v7, v8, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 529
    invoke-direct {p0, v4, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->navigateToCheckin(ZLcom/mcdonalds/sdk/modules/storelocator/Store;)V

    goto :goto_1
.end method

.method private navigateToCheckin(ZLcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 6
    .param p1, "shouldSkipPickupScreen"    # Z
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v5, 0x1

    const-string v1, "navigateToCheckin"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isInterimCheckinFlow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    const-class v1, Lcom/mcdonalds/app/ordering/instorepickup/ChoosePickUpActivity;

    const-string v2, "choose_pick_up"

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 562
    :goto_0
    return-void

    .line 540
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mIsComingFromBagCharge:Z

    if-nez v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 542
    const-class v1, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodActivity;

    sget-object v2, Lcom/mcdonalds/app/ordering/pickupmethod/PickupMethodFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 546
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    new-instance v2, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Landroid/os/Bundle;)V

    invoke-virtual {v1, p2, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getStoreOrderingCapabilties(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private refreshStoreInfo()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v3, "refreshStoreInfo"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    .line 613
    .local v2, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-nez v3, :cond_2

    .line 616
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 621
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    .end local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-void

    .line 625
    .restart local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 630
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "<tap to choose a pickup location>"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 636
    .end local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 642
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v3

    .line 643
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-direct {p0, v3, v4}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->setDeliveryHeader(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V

    goto :goto_1

    .line 649
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const-string v4, "Retrieving delivery information"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 651
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 652
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v4

    .line 653
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 654
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;

    invoke-direct {v7, p0, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 651
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_1
.end method

.method private static setCard(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 5
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p1, "selectedCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PreparePaymentFragment"

    const-string v2, "setCard"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 495
    :cond_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->fromPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 496
    return-void
.end method

.method private setDeliveryHeader(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V
    .locals 4
    .param p1, "customerAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "deliveryTime"    # Ljava/lang/String;

    .prologue
    const-string v1, "setDeliveryHeader"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    const v1, 0x7f0901cd

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "headerString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901d0

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->setDeliveryHeaderText(Landroid/text/Spanned;)V

    .line 697
    return-void
.end method

.method private setOrderPayment(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 3
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const-string v0, "setOrderPayment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCashPayment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentMethodId:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->fromCashPayment(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 476
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-static {p1, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->setCard(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 486
    :cond_0
    return-void

    .line 478
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    goto :goto_0
.end method

.method private showOutofStockAlert(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    const/4 v5, 0x1

    const-string v1, "showOutofStockAlert"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 793
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 794
    sget-object v1, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->PARAMETER_HIDE_POSITIVE:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 795
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 796
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 797
    const-class v1, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v2, "check_out_items_unavailable"

    const/16 v3, 0x25

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 798
    return-void
.end method

.method private totalizeCurrentOrder(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "currentStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "totalizeCurrentOrder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    if-nez p1, :cond_0

    .line 567
    const-string v0, "You don\'t have a current store selected."

    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    .line 606
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->totalize(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method


# virtual methods
.method public cashAsPayment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "cashAsPayment"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iput-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 719
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCashPayment:Ljava/lang/Boolean;

    .line 720
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    const v0, 0x7f09086d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialize()V
    .locals 2

    .prologue
    const-string v0, "initialize"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->checkUnavailablePODs()V

    .line 286
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->tryTotalize()V

    .line 287
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onClick(Landroid/view/View;)V

    .line 410
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 411
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "DATA_PASSER_KEY"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 414
    const-class v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionActivity;

    const-string v2, "select_payment"

    const/16 v3, 0xff1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 423
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getPickupStoreView()Landroid/view/View;

    move-result-object v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    .line 424
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getDeliveryTimeView()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 427
    :cond_1
    const-class v1, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const-string v2, "menu_grid"

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 429
    :cond_2
    return-void
.end method

.method protected onContinue()V
    .locals 2

    .prologue
    const-string v0, "onContinue"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->checkPaymentAndContinue()V

    .line 434
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentTypes:Ljava/util/LinkedHashSet;

    .line 119
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x0

    .line 125
    const v8, 0x7f0400a1

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 127
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f110099

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContainerTotals:Landroid/view/View;

    .line 128
    const v8, 0x7f1100bb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mProgress:Landroid/view/View;

    .line 130
    new-instance v8, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    const v10, 0x7f11009a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;-><init>(Landroid/view/View;)V

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    .line 131
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPickupLocationHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getDisclosureIcon()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    new-instance v8, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    const v10, 0x7f11009b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;-><init>(Landroid/view/View;)V

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    .line 134
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getDisclosureIcon()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getDeliveryTimeView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v8, 0x7f1100b9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTimeRestrictionWarning:Landroid/widget/TextView;

    .line 140
    const v8, 0x7f11009d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 141
    .local v4, "mDeliveryRow":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v10

    new-instance v11, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$1;

    invoke-direct {v11, p0, v7}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$1;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Landroid/view/View;)V

    invoke-virtual {v8, v10, v11}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 168
    :cond_0
    const v8, 0x7f1100b0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    .line 169
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v8, 0x7f1100b1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPayWithLabel:Landroid/widget/TextView;

    .line 172
    const v8, 0x7f1100b3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mChosePaymentLabel:Landroid/widget/TextView;

    .line 173
    const v8, 0x7f1100b5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mNoPaymentRequiredLabel:Landroid/view/View;

    .line 175
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 176
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "paymentMethodDisplayName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 178
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mChosePaymentLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_1
    const v8, 0x7f1100a2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrderTotal:Landroid/widget/TextView;

    .line 182
    const v8, 0x7f1100a5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mBagCharge:Landroid/widget/TextView;

    .line 183
    const v8, 0x7f1100a8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDiscount:Landroid/widget/TextView;

    .line 185
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v10, "modules.ordering.doNotShowTaxWithTotal"

    invoke-virtual {v8, v10, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v1

    .line 186
    .local v1, "hideTotalTax":Z
    if-nez v1, :cond_2

    .line 187
    const v8, 0x7f1100ab

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTax:Landroid/widget/TextView;

    .line 188
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTax:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_2
    const v8, 0x7f1100af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTotal:Landroid/widget/TextView;

    .line 192
    const v8, 0x7f1100ae

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mEnergyTotal:Landroid/widget/TextView;

    .line 194
    const v8, 0x7f1100a3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mBagChargeContainer:Landroid/view/View;

    .line 195
    const v8, 0x7f1100a6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDiscountContainer:Landroid/view/View;

    .line 197
    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->setUpQrScanFirstTimeView(Landroid/view/View;)V

    .line 199
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 200
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    const-string v8, "FROM_BAG_CHARGE"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mIsComingFromBagCharge:Z

    .line 203
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    .line 204
    .local v5, "manager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    iget-boolean v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mIsComingFromBagCharge:Z

    if-eqz v8, :cond_5

    .line 205
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const v10, 0x7f090165

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    .line 212
    :goto_1
    const v8, 0x7f1100b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 213
    .local v3, "invoiceContainer":Landroid/view/View;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v10, "modules.ordering.requestTaxInvoice"

    invoke-virtual {v8, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 214
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 215
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v8, 0x7f110430

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 217
    .local v2, "invoiceChoice":Landroid/widget/Switch;
    new-instance v8, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$2;

    invoke-direct {v8, p0, v7}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$2;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Landroid/view/View;)V

    invoke-virtual {v2, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    .end local v2    # "invoiceChoice":Landroid/widget/Switch;
    :cond_3
    const v8, 0x7f110432

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCompanyName:Landroid/widget/EditText;

    .line 227
    const v8, 0x7f1100b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPodWarning:Landroid/widget/TextView;

    .line 231
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->refreshStoreInfo()V

    .line 233
    return-object v7

    .end local v3    # "invoiceContainer":Landroid/view/View;
    .end local v5    # "manager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    :cond_4
    move v8, v9

    .line 200
    goto :goto_0

    .line 206
    .restart local v5    # "manager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    :cond_5
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 207
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const v10, 0x7f09073a

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 209
    :cond_6
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const v10, 0x7f090160

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v3, "onNewIntent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 268
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 269
    const-string v3, "FROM_BAG_CHARGE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const v4, 0x7f090165

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 274
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 275
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "paymentMethodDisplayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    const v4, 0x7f1100b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 277
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->initialize()V

    .line 280
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 239
    invoke-super {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onResume()V

    .line 241
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCashPayment:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    const v7, 0x7f1100b3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 244
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090157

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "cashLabel":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    .line 263
    .end local v2    # "cashLabel":Ljava/lang/String;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    if-eqz v6, :cond_2

    .line 250
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->updatedPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 256
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 257
    .local v0, "cardItem":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isPreferred()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 258
    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 259
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->updatedPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 255
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected onScanContinue()V
    .locals 2

    .prologue
    const-string v0, "onScanContinue"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->checkPaymentAndContinue()V

    .line 439
    return-void
.end method

.method public tryTotalize()V
    .locals 6

    .prologue
    const-string v3, "tryTotalize"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const v4, 0x7f09065c

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 314
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 381
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 321
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->checkForTimeRestrictions()V

    .line 323
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 327
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    .line 328
    .local v2, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->totalizeCurrentOrder(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 352
    .end local v2    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    :goto_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const v4, 0x7f0906b4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 354
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    new-instance v4, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$3;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$3;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;)V

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethods(Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "EXTRA_RESULT_FRAGMENT_NAME"

    const-string v4, "mcdmobileapp://prepare_payment"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v3, "EXTRA_RESULT_CONTAINER_CLASS"

    const-class v4, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 343
    const-class v3, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v4, "signin"

    const/16 v5, 0xff2

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1
.end method

.method public updateTotals()V
    .locals 22

    .prologue
    const-string v13, "updateTotals"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v5

    .line 725
    .local v5, "formatter":Ljava/text/NumberFormat;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v12

    .line 727
    .local v12, "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderValue()Ljava/lang/Double;

    move-result-object v13

    if-nez v13, :cond_4

    const-wide/16 v14, 0x0

    .line 729
    .local v14, "orderValue":D
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v11

    .line 730
    .local v11, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 731
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getBagProductInOrder()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    .line 732
    .local v4, "bagProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v4, :cond_1

    .line 733
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mBagChargeContainer:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 735
    invoke-static {v4}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v2

    .line 736
    .local v2, "bagChargeValue":D
    cmpl-double v13, v14, v2

    if-ltz v13, :cond_0

    .line 737
    sub-double/2addr v14, v2

    .line 739
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mBagCharge:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .end local v2    # "bagChargeValue":D
    .end local v4    # "bagProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrderTotal:Landroid/widget/TextView;

    invoke-virtual {v5, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v13

    if-nez v13, :cond_5

    const-wide/16 v8, 0x0

    .line 746
    .local v8, "discount":D
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDiscount:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v13, v18, v20

    if-nez v13, :cond_6

    :cond_2
    const/4 v10, 0x1

    .line 750
    .local v10, "hidden":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDiscountContainer:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v10, :cond_7

    const/16 v13, 0x8

    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTax:Landroid/widget/TextView;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTax:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_3

    .line 753
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTax:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalTax()Ljava/lang/Double;

    move-result-object v18

    if-nez v18, :cond_8

    const-wide/16 v18, 0x0

    :goto_4
    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    :cond_3
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v13

    if-nez v13, :cond_9

    const-wide/16 v16, 0x0

    .line 757
    .local v16, "totalValue":D
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryFee:Ljava/lang/Double;

    if-nez v13, :cond_a

    const-wide/16 v6, 0x0

    .line 759
    .local v6, "deliveryFee":D
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mTotal:Landroid/widget/TextView;

    add-double v18, v16, v6

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v13

    if-nez v13, :cond_b

    .line 763
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mEnergyTotal:Landroid/widget/TextView;

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mEnergyTotal:Landroid/widget/TextView;

    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v18

    .line 765
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/OrderUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/lang/String;

    move-result-object v19

    .line 764
    invoke-static/range {v18 .. v19}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrder(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    :goto_7
    const-wide/16 v18, 0x0

    cmpg-double v13, v16, v18

    if-gtz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v18

    cmpl-double v13, v8, v18

    if-ltz v13, :cond_c

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e0048

    invoke-static/range {v18 .. v19}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPayWithLabel:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e004a

    invoke-static/range {v18 .. v19}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mChosePaymentLabel:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e004a

    invoke-static/range {v18 .. v19}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mNoPaymentRequiredLabel:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setZeroPriced(Z)V

    .line 777
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 787
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContainerTotals:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 788
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mProgress:Landroid/view/View;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 789
    return-void

    .line 727
    .end local v6    # "deliveryFee":D
    .end local v8    # "discount":D
    .end local v10    # "hidden":Z
    .end local v11    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .end local v14    # "orderValue":D
    .end local v16    # "totalValue":D
    :cond_4
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderValue()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto/16 :goto_0

    .line 745
    .restart local v11    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .restart local v14    # "orderValue":D
    :cond_5
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    goto/16 :goto_1

    .line 748
    .restart local v8    # "discount":D
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 750
    .restart local v10    # "hidden":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 753
    :cond_8
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalTax()Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    goto/16 :goto_4

    .line 756
    :cond_9
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    goto/16 :goto_5

    .line 757
    .restart local v16    # "totalValue":D
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mDeliveryFee:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto/16 :goto_6

    .line 767
    .restart local v6    # "deliveryFee":D
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mEnergyTotal:Landroid/widget/TextView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 779
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 780
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x106000b

    invoke-static/range {v18 .. v19}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPayWithLabel:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e0032

    invoke-static/range {v18 .. v19}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mChosePaymentLabel:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e008d

    invoke-static/range {v18 .. v19}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mNoPaymentRequiredLabel:Landroid/view/View;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setZeroPriced(Z)V

    goto/16 :goto_8
.end method

.method public updatedPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 4
    .param p1, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const/4 v3, 0x0

    const-string v1, "updatedPaymentCard"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 703
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mCashPayment:Ljava/lang/Boolean;

    .line 704
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->setCard(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 706
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mPaymentButton:Landroid/view/View;

    const v2, 0x7f1100b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 707
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    .line 714
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    goto :goto_0
.end method
