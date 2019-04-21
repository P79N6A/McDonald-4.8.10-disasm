.class public abstract Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "BasePreparePaymentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/ordering/IntentFragment;


# static fields
.field protected static SHOW_LARGE_ORDER_NOTIFICATION:Ljava/lang/String;


# instance fields
.field protected mContinueButton:Landroid/widget/Button;

.field protected mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field protected mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field protected mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mQrScanFtuView:Landroid/view/View;

.field private mScanCancelButton:Landroid/view/View;

.field private mScanContinueButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "interface.showLargerOrderNotification"

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->SHOW_LARGE_ORDER_NOTIFICATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.BasePreparePaymentFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->checkOrderErrors()V

    return-void
.end method

.method private checkOrderErrors()V
    .locals 18

    .prologue
    const-string v13, "checkOrderErrors"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v10

    .line 144
    .local v10, "orderingManager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsError()Ljava/util/List;

    move-result-object v7

    .line 146
    .local v7, "offerErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 147
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v6, v13, -0x1

    .line 149
    .local v6, "offerError":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "ecp_error_%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "message_key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "string"

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v5, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 151
    .local v12, "resId":I
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "error_message":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v13

    const v14, 0x7f09081e

    .line 154
    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v13

    .line 155
    invoke-virtual {v13, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v13

    const v14, 0x7f0905d4

    new-instance v15, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment$3;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;)V

    .line 156
    invoke-virtual {v13, v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v13

    .line 162
    invoke-virtual {v13}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v13

    .line 163
    invoke-virtual {v13}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 184
    .end local v3    # "error_message":Ljava/lang/String;
    .end local v5    # "message_key":Ljava/lang/String;
    .end local v6    # "offerError":I
    .end local v12    # "resId":I
    :cond_0
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->getErrorCode()I

    move-result v11

    .line 186
    .local v11, "productError":I
    if-nez v11, :cond_6

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 165
    .end local v11    # "productError":I
    :cond_2
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    .line 167
    .local v8, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 168
    .local v9, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    const/4 v3, 0x0

    .line 170
    .restart local v3    # "error_message":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v14

    if-nez v14, :cond_5

    .line 171
    const v14, 0x7f0905c1

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const v17, 0x7f0901c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_4
    :goto_2
    if-eqz v3, :cond_3

    .line 177
    invoke-static {v3}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v14

    if-nez v14, :cond_4

    .line 173
    const v14, 0x7f0905c1

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const v17, 0x7f09062c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 191
    .end local v3    # "error_message":Ljava/lang/String;
    .end local v8    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v9    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .restart local v11    # "productError":I
    :cond_6
    const-string v4, ""

    .line 193
    .local v4, "fragmentName":Ljava/lang/String;
    sparse-switch v11, :sswitch_data_0

    .line 202
    :goto_3
    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/ordering/OrderingManager;->setProductErrorCode(I)V

    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 209
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v2, "bundle":Landroid/os/Bundle;
    sget-object v13, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    sget-object v14, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    .line 212
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->getProblematicProductsCodes()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 215
    sget-object v13, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->PARAMETER_HIDE_POSITIVE:Ljava/lang/String;

    .line 216
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->shouldHidePositive()Z

    move-result v14

    .line 215
    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-class v13, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const/16 v14, 0x25

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4, v2, v14}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 195
    .end local v2    # "bundle":Landroid/os/Bundle;
    :sswitch_0
    const-string v4, "check_out_items_out_of_stock"

    .line 196
    goto :goto_3

    .line 199
    :sswitch_1
    const-string v4, "check_out_items_unavailable"

    goto :goto_3

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40c -> :sswitch_0
        -0x40b -> :sswitch_1
        -0x3ff -> :sswitch_1
    .end sparse-switch
.end method

.method private isLargeOrder()Z
    .locals 2

    .prologue
    const-string v0, "isLargeOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->isIsLargeOrder()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract cashAsPayment()V
.end method

.method protected checkOrder()V
    .locals 3

    .prologue
    const-string v0, "checkOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 112
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->isLargeOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.showLargerOrderNotification"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09081e

    .line 114
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09043f

    .line 115
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09012e

    new-instance v2, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment$2;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;)V

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment$1;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->checkOrderErrors()V

    goto :goto_0
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const v0, 0x7f09086d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initialize()V
.end method

.method protected markScanFtuAsSeen()V
    .locals 2

    .prologue
    const-string v0, "markScanFtuAsSeen"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mQrScanFtuView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setFirstTimeQrScan(Z)V

    .line 233
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->initialize()V

    .line 73
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

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mQrScanFtuView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mScanCancelButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->markScanFtuAsSeen()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mScanContinueButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->markScanFtuAsSeen()V

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onScanContinue()V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->onContinue()V

    .line 96
    :cond_3
    return-void
.end method

.method protected abstract onContinue()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 65
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 66
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 67
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->initialize()V

    .line 78
    return-void
.end method

.method protected abstract onScanContinue()V
.end method

.method protected setUpQrScanFirstTimeView(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const-string v0, "setUpQrScanFirstTimeView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const v0, 0x7f1100ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mQrScanFtuView:Landroid/view/View;

    .line 100
    const v0, 0x7f11052d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mScanCancelButton:Landroid/view/View;

    .line 101
    const v0, 0x7f11052e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mScanContinueButton:Landroid/view/View;

    .line 102
    const v0, 0x7f110097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mQrScanFtuView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mScanCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mScanContinueButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method protected showFirstTimeQrScan()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "showFirstTimeQrScan"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isFirstTimeQrScan()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isInterimCheckinFlow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->mQrScanFtuView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 225
    const/4 v0, 0x1

    .line 227
    :cond_0
    return v0
.end method

.method public abstract updatedPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
.end method
