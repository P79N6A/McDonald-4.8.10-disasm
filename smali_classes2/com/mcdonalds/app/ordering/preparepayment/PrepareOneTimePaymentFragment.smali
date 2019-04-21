.class public Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;
.super Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;
.source "PrepareOneTimePaymentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final DO_NOT_SHOW_TAX_KEY:Ljava/lang/String;

.field public final HIDE_ORDER_TOTAL:Ljava/lang/String;

.field private deliveryFee:D

.field private mCompanyName:Landroid/widget/EditText;

.field private mDeliveryFeeValue:Landroid/widget/TextView;

.field private mDeliveryLocation:Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;

.field private mDeliveryRow:Landroid/widget/LinearLayout;

.field private mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

.field private mDiscount:Landroid/widget/TextView;

.field private mDiscountContainer:Landroid/view/View;

.field private mHeaderIsDelivery:Z

.field private mInvoiceChecked:Z

.field private mListView:Landroid/widget/ListView;

.field private mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

.field private mNonProductOfferNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mOrderRemark:Landroid/widget/EditText;

.field private mOrderRemarkChecked:Z

.field private final mOrderResponseListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderTotal:Landroid/widget/TextView;

.field private mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

.field private mPickupLocation:Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field private mSubtotal:Landroid/widget/TextView;

.field private mSubtotalRow:Landroid/view/View;

.field private mTax:Landroid/widget/TextView;

.field private mTotal:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;-><init>()V

    .line 79
    const-string v0, "modules.ordering.doNotShowTaxWithTotal"

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->DO_NOT_SHOW_TAX_KEY:Ljava/lang/String;

    .line 80
    const-string v0, "modules.ordering.hideOrderTotal"

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->HIDE_ORDER_TOTAL:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mHeaderIsDelivery:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mNonProductOfferNames:Ljava/util/List;

    .line 807
    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;D)D
    .locals 7
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;
    .param p1, "x1"    # D

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PrepareOneTimePaymentFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->deliveryFee:D

    return-wide p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PrepareOneTimePaymentFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->afterResponse()V

    return-void
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PrepareOneTimePaymentFragment"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderRemarkChecked:Z

    return p1
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PrepareOneTimePaymentFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mInvoiceChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PrepareOneTimePaymentFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->refreshCheckoutList()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PrepareOneTimePaymentFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PrepareOneTimePaymentFragment"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->showExceptionDialog(Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method private afterResponse()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v7, "afterResponse"

    invoke-static {p0, v7, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.showOrderDetailsInCheckout"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    .line 286
    .local v6, "showOrderDetailsInCheckout":Z
    if-eqz v6, :cond_4

    .line 287
    new-instance v7, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {v7, v8, v10, v9}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;Lcom/mcdonalds/sdk/modules/models/Order;)V

    iput-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    .line 288
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v7

    iput-boolean v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mHeaderIsDelivery:Z

    .line 290
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    iget-boolean v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mHeaderIsDelivery:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    .line 292
    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getContainer()Landroid/view/View;

    move-result-object v7

    .line 291
    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 295
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f040170

    invoke-static {v7, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "OrderFooter":Landroid/view/View;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 297
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 298
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const v7, 0x7f1104d3

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    .line 300
    .local v5, "orderRemarkSwitch":Landroid/widget/Switch;
    new-instance v7, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$2;

    invoke-direct {v7, p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$2;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 307
    .end local v5    # "orderRemarkSwitch":Landroid/widget/Switch;
    :cond_0
    const v7, 0x7f1104d4

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderRemark:Landroid/widget/EditText;

    .line 309
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f040134

    invoke-static {v7, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, "InvoiceFooter":Landroid/view/View;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 311
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "modules.Ordering.requestTaxInvoice"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 312
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 313
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 314
    const v7, 0x7f110430

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 315
    .local v3, "invoiceChoice":Landroid/widget/Switch;
    new-instance v7, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$3;

    invoke-direct {v7, p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$3;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 322
    .end local v3    # "invoiceChoice":Landroid/widget/Switch;
    :cond_1
    const v7, 0x7f110432

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCompanyName:Landroid/widget/EditText;

    .line 324
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->createBasketItems()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->addAll(Ljava/util/Collection;)V

    .line 326
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->notifyDataSetChanged()V

    .line 332
    .end local v0    # "InvoiceFooter":Landroid/view/View;
    .end local v1    # "OrderFooter":Landroid/view/View;
    :goto_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->refreshCheckoutList()V

    .line 334
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 336
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/Order;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 338
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v4

    .line 339
    .local v4, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/app/ordering/OrderingManager;->totalize(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 358
    .end local v4    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    :cond_2
    :goto_2
    return-void

    .line 292
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v7

    goto/16 :goto_0

    .line 328
    :cond_4
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 343
    :cond_5
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 345
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 346
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v2, "extras":Landroid/os/Bundle;
    const-string v7, "EXTRA_RESULT_FRAGMENT_NAME"

    const-string v8, "prepare_one_time_payment"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v7, "EXTRA_RESULT_CONTAINER_CLASS"

    const-class v8, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 355
    const-class v7, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v8, "signin"

    invoke-virtual {p0, v7, v8, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method private checkDayAndTimeValidity()Z
    .locals 15

    .prologue
    const-string v2, "checkDayAndTimeValidity"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    .line 470
    .local v8, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 471
    .local v7, "current":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 472
    .local v9, "dayOfWeekNow":I
    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 473
    .local v0, "hourOfDayNow":I
    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 475
    .local v1, "minuteNow":I
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 476
    .local v11, "oo":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v10

    .line 479
    .local v10, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Offer;->getAndConditions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Offer;->getAndConditions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 483
    const/4 v12, 0x0

    .line 484
    .local v12, "test":Z
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Offer;->getAndConditions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;

    .line 485
    .local v6, "c":Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getDayOfWeek()I

    move-result v2

    if-ne v9, v2, :cond_1

    .line 486
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getHourOfDayFrom()I

    move-result v2

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getMinuteFrom()I

    move-result v3

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getHourOfDayTo()I

    move-result v4

    .line 487
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getMinuteTo()I

    move-result v5

    .line 485
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/sdk/utils/DateUtils;->timeCheck(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    const/4 v12, 0x1

    .line 493
    .end local v6    # "c":Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;
    :cond_2
    if-nez v12, :cond_0

    .line 494
    const/4 v2, 0x0

    .line 498
    .end local v10    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v11    # "oo":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v12    # "test":Z
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private completeOrderAndNavigate()V
    .locals 18

    .prologue
    const-string v3, "completeOrderAndNavigate"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v9

    .line 380
    .local v9, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.ordering.checkOfferDayAndTimeConstraints"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->checkDayAndTimeValidity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->showDayAndTimeCheckDialog()V

    .line 444
    :goto_0
    return-void

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderRemarkChecked:Z

    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setOrderRemarkAvailable(Z)V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderRemarkChecked:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderRemark:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setOrderRemark(Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mInvoiceChecked:Z

    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setInvoiceRequested(Z)V

    .line 393
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mInvoiceChecked:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCompanyName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setCompanyName(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->showFirstTimeQrScan()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 402
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v14, "productCodes":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v15, "productNames":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;>;"
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 406
    .local v12, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v13

    .line 409
    .local v13, "p":Lcom/mcdonalds/sdk/modules/models/Product;
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;

    const-string v3, ""

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 411
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v6

    .line 410
    :goto_5
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    .local v2, "item":Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 389
    .end local v2    # "item":Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;>;"
    .end local v12    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v13    # "p":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v14    # "productCodes":Ljava/lang/StringBuilder;
    .end local v15    # "productNames":Ljava/lang/StringBuilder;
    :cond_1
    const-string v3, ""

    goto/16 :goto_1

    .line 393
    :cond_2
    const-string v3, ""

    goto/16 :goto_2

    .line 398
    :cond_3
    const-class v3, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;

    const-string v4, "one_time_order_checkin"

    const/16 v5, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 411
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;>;"
    .restart local v12    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v13    # "p":Lcom/mcdonalds/sdk/modules/models/Product;
    .restart local v14    # "productCodes":Ljava/lang/StringBuilder;
    .restart local v15    # "productNames":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v6

    goto :goto_5

    .line 420
    .end local v12    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v13    # "p":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 421
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 423
    :cond_6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 424
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 426
    :cond_7
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v10, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 428
    const-string v3, "EVENT_NAME"

    const-string v4, "order"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :goto_6
    const-string v3, "pdid"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v3, "pdispickup"

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v3, "pdname"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v4, "pdismds"

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    :goto_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 438
    invoke-virtual {v3, v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 440
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v6

    .line 439
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 441
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v7, v0

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 439
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 442
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v8

    .line 443
    .local v8, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v3, v8}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto/16 :goto_0

    .line 430
    .end local v8    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    :cond_8
    const-string v3, "EVENT_NAME"

    const-string v4, "signin"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 435
    :cond_9
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private createBasketItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "createBasketItems"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v3, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-object v0

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 517
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 518
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->createProductItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 521
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mNonProductOfferNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 522
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 523
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 524
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->createOfferItems(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 528
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->createSubtotalItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private createOfferItems(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/util/List;
    .locals 14
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "createOfferItems"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object p1, v11, v9

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v10

    sget-object v11, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v10, v11, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-object v4

    .line 620
    :cond_1
    const/4 v7, 0x0

    .line 621
    .local v7, "priceIschanged":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 623
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 624
    .local v6, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    if-nez v0, :cond_3

    move v3, v8

    .line 625
    .local v3, "isHeader":Z
    :goto_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_4

    move v2, v8

    .line 626
    .local v2, "isFooter":Z
    :goto_3
    new-instance v5, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-direct {v5}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;-><init>()V

    .line 627
    .local v5, "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    invoke-virtual {v5, p1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setBasketItem(Ljava/lang/Object;)V

    .line 628
    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferPriceChanged(Z)V

    .line 629
    if-nez v3, :cond_5

    move v10, v8

    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTopPaddingHidden(Ljava/lang/Boolean;)V

    .line 630
    if-eqz v3, :cond_6

    .line 631
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    .line 632
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderIconHidden(Ljava/lang/Boolean;)V

    .line 633
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderText(Ljava/lang/String;)V

    .line 637
    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 638
    if-eqz v2, :cond_7

    .line 639
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    .line 640
    invoke-static {p1}, Lcom/mcdonalds/app/util/OrderOfferUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setEnergyTotal(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Order;->getOfferTotalValue()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceTotal(Ljava/lang/String;)V

    .line 645
    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 646
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    invoke-direct {p0, v5, v10, v9}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->updateItemData(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    .line 647
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 648
    .local v1, "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_2

    .line 649
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setIconImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 651
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v1    # "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "isFooter":Z
    .end local v3    # "isHeader":Z
    .end local v5    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    :cond_3
    move v3, v9

    .line 624
    goto/16 :goto_2

    .restart local v3    # "isHeader":Z
    :cond_4
    move v2, v9

    .line 625
    goto/16 :goto_3

    .restart local v2    # "isFooter":Z
    .restart local v5    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    :cond_5
    move v10, v9

    .line 629
    goto :goto_4

    .line 635
    :cond_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 643
    :cond_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    goto :goto_6

    .line 654
    .end local v0    # "i":I
    .end local v2    # "isFooter":Z
    .end local v3    # "isHeader":Z
    .end local v5    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v6    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_8
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mNonProductOfferNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private createProductItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;
    .locals 18
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v15, "createProductItems"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 662
    .local v14, "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v2, v15, :cond_a

    .line 663
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v15}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v11

    .line 664
    .local v11, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v8, 0x1

    .line 665
    .local v8, "isHeader":Z
    :goto_2
    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v15

    if-nez v15, :cond_3

    const/4 v6, 0x1

    .line 666
    .local v6, "isDivider":Z
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v2, v15, :cond_4

    const/4 v7, 0x1

    .line 667
    .local v7, "isFooter":Z
    :goto_4
    new-instance v9, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-direct {v9}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;-><init>()V

    .line 668
    .local v9, "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setBasketItem(Ljava/lang/Object;)V

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/Product;->getTimeRestriction()Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTimeRestriction(Lcom/mcdonalds/sdk/modules/models/TimeRestriction;)V

    .line 670
    if-nez v8, :cond_5

    const/4 v15, 0x1

    :goto_5
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTopPaddingHidden(Ljava/lang/Boolean;)V

    .line 671
    if-eqz v8, :cond_6

    .line 672
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    .line 673
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderIconHidden(Ljava/lang/Boolean;)V

    .line 674
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderText(Ljava/lang/String;)V

    .line 678
    :goto_6
    if-nez v6, :cond_7

    const/4 v15, 0x1

    :goto_7
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 679
    if-eqz v7, :cond_8

    .line 680
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    .line 681
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    .line 682
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalEnergy()D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/util/OrderProductUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setEnergyTotal(Ljava/lang/String;)V

    .line 683
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v12

    .line 684
    .local v12, "price":D
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceTotal(Ljava/lang/String;)V

    .line 688
    .end local v12    # "price":D
    :goto_8
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 689
    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v4, 0x1

    .line 690
    .local v4, "includeQuantity":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v4}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->updateItemData(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    .line 691
    move-object v3, v11

    .line 692
    .local v3, "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 694
    .local v5, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 696
    .end local v5    # "index":I
    .restart local v3    # "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setIconImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 697
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->setErrorInOrderItem(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 698
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 661
    .end local v2    # "i":I
    .end local v3    # "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v4    # "includeQuantity":Z
    .end local v6    # "isDivider":Z
    .end local v7    # "isFooter":Z
    .end local v8    # "isHeader":Z
    .end local v9    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v11    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v14    # "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v14

    goto/16 :goto_0

    .line 664
    .restart local v2    # "i":I
    .restart local v11    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v14    # "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 665
    .restart local v8    # "isHeader":Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 666
    .restart local v6    # "isDivider":Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 670
    .restart local v7    # "isFooter":Z
    .restart local v9    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 676
    :cond_6
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 678
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 686
    :cond_8
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    goto :goto_8

    .line 689
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 700
    .end local v6    # "isDivider":Z
    .end local v7    # "isFooter":Z
    .end local v8    # "isHeader":Z
    .end local v9    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v11    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_a
    return-object v10
.end method

.method private createSubtotalItems()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    const-string v8, "createSubtotalItems"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    new-instance v0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;-><init>()V

    .line 540
    .local v0, "item":Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v6

    .line 543
    .local v6, "totalValue":D
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    .line 544
    .local v2, "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    if-eqz v2, :cond_0

    .line 545
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 546
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderValue()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 553
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mHeaderIsDelivery:Z

    if-eqz v8, :cond_6

    .line 554
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryHidden(Z)V

    .line 555
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 557
    iget-wide v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->deliveryFee:D

    invoke-virtual {v0, v8, v9}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFee(D)V

    .line 558
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->hasDeliveryFeeOffer()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 559
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFeeOfferHidden(Z)V

    .line 560
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryChargeOfferName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setOfferName(Ljava/lang/String;)V

    .line 561
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getDiscountedDeliveryCharge()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFeeDiscount(D)V

    .line 562
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getDiscountedDeliveryCharge()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 579
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalEnergy()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v9}, Lcom/mcdonalds/app/ordering/OrderUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setEnergyTotal(Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setPriceTotal(Ljava/lang/String;)V

    .line 589
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 592
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 593
    .local v1, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v3

    .line 594
    .local v3, "restaurants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 596
    .local v5, "storeId":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 597
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 599
    :cond_1
    invoke-virtual {v0, v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setHideOfferUnavailableContainer(Z)V

    .line 604
    .end local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v3    # "restaurants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "storeId":Ljava/lang/Integer;
    :cond_2
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mNonProductOfferNames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 606
    invoke-virtual {v0, v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setIsNonProductOfferAvailable(Z)V

    .line 607
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mNonProductOfferNames:Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setNonProductOfferNames(Ljava/util/List;)V

    .line 610
    :cond_3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    return-object v4

    .line 548
    :cond_4
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto/16 :goto_0

    .line 565
    :cond_5
    invoke-virtual {v0, v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFeeOfferHidden(Z)V

    .line 566
    iget-wide v8, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->deliveryFee:D

    add-double/2addr v6, v8

    goto/16 :goto_1

    .line 571
    :cond_6
    invoke-virtual {v0, v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFeeOfferHidden(Z)V

    .line 572
    invoke-virtual {v0, v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryHidden(Z)V

    .line 573
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 574
    invoke-virtual {v0, v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setShowTotal(Z)V

    goto/16 :goto_1
.end method

.method private refreshCheckoutList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "refreshCheckoutList"

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.showOrderDetailsInCheckout"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 881
    .local v0, "showOrderDetailsInCheckout":Z
    if-eqz v0, :cond_0

    .line 882
    new-instance v1, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {v1, v2, v4, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;Lcom/mcdonalds/sdk/modules/models/Order;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    .line 883
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 884
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->createBasketItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->addAll(Ljava/util/Collection;)V

    .line 885
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->notifyDataSetChanged()V

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshStoreInfo()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const-string v2, "refreshStoreInfo"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 729
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-nez v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupLocation:Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 735
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 736
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0905ea

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br/><b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryLocation:Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->setVisibility(I)V

    .line 742
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupLocation:Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->setVisibility(I)V

    .line 754
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-void

    .line 736
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 737
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryLocation:Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->update(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 749
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryLocation:Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->getTimeLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->setDeliveryHeaderText(Landroid/text/Spanned;)V

    .line 751
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupLocation:Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->setVisibility(I)V

    .line 752
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryLocation:Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshStoreInfoAndDeliveryFee()V
    .locals 3

    .prologue
    const-string v0, "refreshStoreInfoAndDeliveryFee"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 214
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 215
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 218
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mHeaderIsDelivery:Z

    .line 219
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mHeaderIsDelivery:Z

    if-nez v0, :cond_2

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->deliveryFee:D

    .line 221
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->afterResponse()V

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0906ff

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    new-instance v2, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$1;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private setErrorInOrderItem(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 9
    .param p1, "item"    # Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .param p2, "subProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v8, 0x1

    const-string v5, "setErrorInOrderItem"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    aput-object p2, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 856
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    .line 857
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v5

    if-nez v5, :cond_1

    .line 877
    :cond_0
    return-void

    .line 862
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    .line 863
    .local v2, "orderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v4

    .line 864
    .local v4, "productViews":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-eqz v4, :cond_0

    .line 865
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 866
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 868
    .local v3, "orderViewProduct":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, -0x40c

    if-ne v5, v6, :cond_2

    .line 869
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 870
    invoke-virtual {p1, v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 871
    invoke-virtual {p1, v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOutOfStock(Z)V

    .line 865
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private showDayAndTimeCheckDialog()V
    .locals 3

    .prologue
    const-string v1, "showDayAndTimeCheckDialog"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$4;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V

    .line 455
    .local v0, "positiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905bf

    .line 456
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905a6

    .line 457
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    .line 458
    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 461
    return-void
.end method

.method private showExceptionDialog(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    const-string v0, "showExceptionDialog"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090338

    .line 841
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 842
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$6;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V

    .line 843
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 849
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 852
    return-void
.end method

.method private subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;
    .locals 5
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "subProducts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 705
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 707
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private updateItemData(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V
    .locals 4
    .param p1, "item"    # Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "includeQuantity"    # Z

    .prologue
    const-string v0, "updateItemData"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    if-eqz p3, :cond_2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemName(Ljava/lang/String;)V

    .line 719
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 720
    invoke-static {p2}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemInstructions(Ljava/lang/String;)V

    .line 722
    :cond_1
    return-void

    .line 718
    :cond_2
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemName(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cashAsPayment()V
    .locals 2

    .prologue
    const-string v0, "cashAsPayment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    return-void
.end method

.method protected initialize()V
    .locals 2

    .prologue
    const-string v0, "initialize"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09065c

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 254
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 256
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->refreshStoreInfo()V

    .line 258
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->refreshStoreInfoAndDeliveryFee()V

    .line 282
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onAttach(Landroid/app/Activity;)V

    .line 241
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 242
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onClick(Landroid/view/View;)V

    .line 364
    return-void
.end method

.method protected onContinue()V
    .locals 2

    .prologue
    const-string v0, "onContinue"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->completeOrderAndNavigate()V

    .line 369
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f1100ab

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 115
    const v2, 0x7f0400a2

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    const v3, 0x7f040179

    invoke-virtual {p1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    .line 118
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getPickupStoreView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v2, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    const v3, 0x7f04005a

    invoke-virtual {p1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    .line 121
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getDeliveryTimeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v2, 0x7f11009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupLocation:Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;

    .line 124
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mPickupLocation:Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PickupLocationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v2, 0x7f11009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryLocation:Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;

    .line 127
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryLocation:Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/ordering/preparepayment/DeliveryLocationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v2, 0x7f11009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryRow:Landroid/widget/LinearLayout;

    .line 130
    const v2, 0x7f11009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDeliveryFeeValue:Landroid/widget/TextView;

    .line 131
    const v2, 0x7f1100a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mOrderTotal:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f110282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mSubtotalRow:Landroid/view/View;

    .line 133
    const v2, 0x7f110284

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mSubtotal:Landroid/widget/TextView;

    .line 135
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.ordering.hideOrderTotal"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const v2, 0x7f110285

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_0
    const v2, 0x7f1100a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDiscount:Landroid/widget/TextView;

    .line 140
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mTax:Landroid/widget/TextView;

    .line 141
    const v2, 0x7f11009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    .line 142
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 144
    const v2, 0x7f1100af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mTotal:Landroid/widget/TextView;

    .line 145
    const v2, 0x7f1100a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDiscountContainer:Landroid/view/View;

    .line 146
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mDiscountContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->setUpQrScanFirstTimeView(Landroid/view/View;)V

    .line 151
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const v3, 0x7f09073a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 157
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.ordering.doNotShowTaxWithTotal"

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, "hideTotalTax":Z
    if-nez v0, :cond_1

    .line 159
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mTax:Landroid/widget/TextView;

    .line 160
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mTax:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_1
    return-object v1

    .line 154
    .end local v0    # "hideTotalTax":Z
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mContinueButton:Landroid/widget/Button;

    const v3, 0x7f090160

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onDetach()V

    .line 247
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 248
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onResume()V

    .line 200
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->mHeaderIsDelivery:Z

    .line 204
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->refreshStoreInfo()V

    .line 207
    :cond_0
    return-void
.end method

.method protected onScanContinue()V
    .locals 2

    .prologue
    const-string v0, "onScanContinue"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->completeOrderAndNavigate()V

    .line 374
    return-void
.end method

.method public updatedPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 3
    .param p1, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const-string v0, "updatedPaymentCard"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    return-void
.end method
