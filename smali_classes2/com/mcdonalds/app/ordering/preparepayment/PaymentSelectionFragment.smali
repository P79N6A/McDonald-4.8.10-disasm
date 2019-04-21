.class public Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "PaymentSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mFromOrderCheckin:Z

.field private mListAdapterHeaders:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

.field private mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private mPaymentTypeSelected:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

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

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mListAdapterHeaders:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionFragment"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mPaymentTypeSelected:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionFragment"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->onAddOneClickPayment()V

    return-void
.end method

.method private displayMethods(Ljava/util/LinkedHashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paymentMethods":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    const/4 v0, 0x1

    const/4 v6, 0x0

    const-string v7, "displayMethods"

    new-array v8, v0, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    .line 93
    .local v3, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    .line 94
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v5, :cond_0

    .line 95
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    .local v0, "isDelivery":I
    :goto_0
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLocations()Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v0, :cond_0

    .line 98
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getPaymentMethods()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    .end local v0    # "isDelivery":I
    .end local v1    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    .line 102
    .local v2, "method":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mPaymentTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "method":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    :cond_2
    move v0, v6

    .line 95
    goto :goto_0

    .line 106
    :cond_3
    return-void
.end method

.method private launchAddPaymentScreen(IZ)V
    .locals 11
    .param p1, "paymentID"    # I
    .param p2, "oneTime"    # Z

    .prologue
    const-string v7, "launchAddPaymentScreen"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    const-string v7, "ordering"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 294
    .local v2, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethodForId(I)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    move-result-object v4

    .line 295
    .local v4, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    if-eqz v4, :cond_0

    .line 296
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v7

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 298
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 300
    .local v3, "paymentId":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "supportedPaymentMethods.creditCard.useNativeInterface"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    .line 302
    .local v6, "useNativeInterface":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, "args":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "supportedPaymentMethods.creditCard.isMPGS"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 307
    const-string v7, "EXTRA_PAYMENT_ID"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v7, "EXTRA_ONE_TIME_PAYMENT"

    invoke-virtual {v0, v7, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    const-class v1, Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;

    .line 310
    .local v1, "classToLaunch":Ljava/lang/Class;
    const v5, 0xa734

    .line 322
    .local v5, "requestCode":I
    :goto_0
    invoke-virtual {p0, v1, v0, v5}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 324
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "classToLaunch":Ljava/lang/Class;
    .end local v3    # "paymentId":I
    .end local v5    # "requestCode":I
    .end local v6    # "useNativeInterface":Z
    :cond_0
    return-void

    .line 311
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v3    # "paymentId":I
    .restart local v6    # "useNativeInterface":Z
    :cond_1
    if-eqz v6, :cond_2

    .line 312
    const-string v7, "payment_method"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    const-string v7, "one_time_payment"

    invoke-virtual {v0, v7, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-class v1, Lcom/mcdonalds/app/account/EditCardActivity;

    .line 315
    .restart local v1    # "classToLaunch":Ljava/lang/Class;
    const v5, 0xa737

    .restart local v5    # "requestCode":I
    goto :goto_0

    .line 317
    .end local v1    # "classToLaunch":Ljava/lang/Class;
    .end local v5    # "requestCode":I
    :cond_2
    const-string v7, "EXTRA_PAYMENT_ID"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v7, "EXTRA_ONE_TIME_PAYMENT"

    invoke-virtual {v0, v7, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    const-class v1, Lcom/mcdonalds/app/ordering/PaymentProviderActivity;

    .line 320
    .restart local v1    # "classToLaunch":Ljava/lang/Class;
    const v5, 0xa733

    .restart local v5    # "requestCode":I
    goto :goto_0
.end method

.method private onAddOneClickPayment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "onAddOneClickPayment"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->shouldSaveCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iput-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 257
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->showMaxPaymentsDialog()V

    .line 259
    :cond_0
    return-void
.end method

.method private showMaxPaymentsDialog()V
    .locals 3

    .prologue
    const-string v0, "showMaxPaymentsDialog"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090a1a

    .line 280
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$2;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)V

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 289
    return-void
.end method

.method private updateWithProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v3, 0x1

    const-string v0, "updateWithProfile"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    if-nez p1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mPaymentTypes:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1, p1, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/LinkedHashSet;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mListAdapterHeaders:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    .line 143
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mListAdapterHeaders:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    .line 144
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setChoiceMode(I)V

    .line 145
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$1;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const v0, 0x7f09086e

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAddPayment(IZ)V
    .locals 4
    .param p1, "paymentID"    # I
    .param p2, "oneTime"    # Z

    .prologue
    const-string v0, "onAddPayment"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 266
    if-eqz p2, :cond_0

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->launchAddPaymentScreen(IZ)V

    .line 276
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->shouldSaveCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->launchAddPaymentScreen(IZ)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->showMaxPaymentsDialog()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v2, "onClick"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 192
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mPaymentTypeSelected:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-eqz v2, :cond_2

    .line 197
    sget-object v2, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment$3;->$SwitchMap$com$mcdonalds$sdk$modules$models$PaymentMethod$PaymentMode:[I

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mPaymentTypeSelected:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 227
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 237
    :cond_0
    return-void

    .line 200
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "Cash"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 208
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    if-nez v2, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    goto :goto_0

    .line 211
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 212
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PaymentSelectionFragment.DATA_KEY"

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 221
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 222
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "ThirdPart"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 231
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mPaymentTypes:Ljava/util/LinkedHashSet;

    .line 80
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "FROM_ORDER_CHECKIN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mFromOrderCheckin:Z

    .line 82
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DATA_PASSER_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mPaymentTypes:Ljava/util/LinkedHashSet;

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DATA_PASSER_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 86
    .local v0, "paymentMethods":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->displayMethods(Ljava/util/LinkedHashSet;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 111
    const v3, 0x7f0400f6

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "group":Landroid/view/View;
    const v3, 0x7f11028a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 114
    const v3, 0x7f1102a8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSaveButton:Landroid/widget/Button;

    .line 115
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mFromOrderCheckin:Z

    if-eqz v3, :cond_0

    .line 119
    const v3, 0x7f110361

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, "curbsideText":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09057b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .end local v0    # "curbsideText":Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneClickPaymentFlow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const v3, 0x7f110362

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, "oneClickTextView":Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    .end local v2    # "oneClickTextView":Landroid/widget/TextView;
    :cond_1
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 131
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->updateWithProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 133
    return-object v1
.end method

.method public paymentsUpdated()V
    .locals 2

    .prologue
    const-string v0, "paymentsUpdated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->updateWithProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 243
    :cond_0
    return-void
.end method

.method public proceedWithOneTimePayment(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 3
    .param p1, "oneTimecard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const-string v0, "proceedWithOneTimePayment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSelectedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 248
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mPaymentTypeSelected:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 251
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionFragment;->onClick(Landroid/view/View;)V

    .line 252
    return-void
.end method
