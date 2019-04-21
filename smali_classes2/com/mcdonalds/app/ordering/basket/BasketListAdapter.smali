.class public Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BasketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mEditingPosition:I

.field private mIsEditMode:Ljava/lang/Boolean;

.field private final mListener:Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 1
    .param p1, "context"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;
    .param p2, "listener"    # Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;
    .param p3, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    .line 42
    const v0, 0x7f04003e

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mIsEditMode:Ljava/lang/Boolean;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mEditingPosition:I

    .line 44
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mListener:Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;

    .line 45
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 46
    iput-object p3, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Ljava/lang/Object;II)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketListAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->removeItem(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Ljava/lang/Object;II)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketListAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->makeItAMeal(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Ljava/lang/Object;II)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketListAdapter"

    const-string v2, "access$200"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->editItem(Ljava/lang/Object;II)V

    return-void
.end method

.method private editItem(Ljava/lang/Object;II)V
    .locals 10
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "viewPosition"    # I
    .param p3, "itemPosition"    # I

    .prologue
    const/4 v9, 0x1

    const-string v5, "editItem"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v9

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    move v4, p3

    .line 394
    .local v4, "positionInMeal":I
    if-gt v4, p2, :cond_0

    .line 395
    sub-int v5, p2, p3

    iput v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mEditingPosition:I

    .line 399
    :cond_0
    instance-of v5, p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v5, :cond_2

    .line 401
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mListener:Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;

    if-eqz v5, :cond_1

    .line 402
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mListener:Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;

    invoke-interface {v5, p1}, Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;->onActionEdit(Ljava/lang/Object;)V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    instance-of v5, p1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v5, :cond_3

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "extras":Landroid/os/Bundle;
    move-object v3, p1

    .line 408
    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 409
    .local v3, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    const-string v5, "extra_offer"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v2

    .line 413
    .local v2, "orderKey":I
    const-string v5, "edit_order_data_passer_id"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v1

    .line 416
    .local v1, "itemKey":I
    const-string v5, "edit_order_offer_data_passer_id"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v5, "IN_EDIT_MODE"

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 420
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const-class v6, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v7, "offer_detail"

    sget-object v8, Lcom/mcdonalds/app/offers/OfferFragment;->REQUEST_CODE:Ljava/lang/Integer;

    .line 421
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 420
    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 423
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "itemKey":I
    .end local v2    # "orderKey":I
    .end local v3    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_3
    instance-of v5, p1, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 424
    check-cast v5, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getBasketItem()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v5, :cond_1

    .line 426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "extras":Landroid/os/Bundle;
    move-object v5, p1

    .line 428
    check-cast v5, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getBasketItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 429
    .restart local v3    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    const-string v5, "extra_offer"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 432
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v2

    .line 433
    .restart local v2    # "orderKey":I
    const-string v5, "edit_order_data_passer_id"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v1

    .line 436
    .restart local v1    # "itemKey":I
    const-string v5, "edit_order_offer_data_passer_id"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    const-string v5, "IN_EDIT_MODE"

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const-class v6, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v7, "offer_detail"

    sget-object v8, Lcom/mcdonalds/app/offers/OfferFragment;->REQUEST_CODE:Ljava/lang/Integer;

    .line 441
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 440
    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0
.end method

.method private makeItAMeal(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "viewPosition"    # I
    .param p3, "itemPosition"    # I

    .prologue
    const-string v0, "makeItAMeal"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    if-gt p3, p2, :cond_0

    .line 385
    sub-int v0, p2, p3

    iput v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mEditingPosition:I

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mListener:Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mListener:Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;->onActionMakeItAMeal(Ljava/lang/Object;)V

    .line 390
    :cond_1
    return-void
.end method

.method private removeItem(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "viewPosition"    # I
    .param p3, "itemPosition"    # I

    .prologue
    const-string v0, "removeItem"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    if-gt p3, p2, :cond_0

    .line 375
    sub-int v0, p2, p3

    iput v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mEditingPosition:I

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mListener:Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mListener:Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;->onActionRemove(Ljava/lang/Object;)V

    .line 381
    :cond_1
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "getItemViewType"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    .line 58
    .local v0, "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isSubtotalItem()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    invoke-virtual/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    .line 71
    .local v10, "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    if-nez p2, :cond_0

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 73
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isSubtotalItem()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 74
    const v23, 0x7f040041

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v22, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    .local v22, "viewHolder":Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v22    # "viewHolder":Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;
    :cond_0
    :goto_0
    const-class v23, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 96
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isSubtotalItem()Z

    move-result v23

    if-eqz v23, :cond_a

    move-object v12, v10

    .line 97
    check-cast v12, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;

    .line 98
    .local v12, "offerItem":Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;

    .line 100
    .restart local v22    # "viewHolder":Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->isDeliveryHidden()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 101
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getDeliveryFeeContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getDeliveryFeeOfferContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->isShowTotal()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 105
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getTotalContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getTotalAmount()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getPriceTotal()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getSubtotalContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_1
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v23

    if-nez v23, :cond_5

    .line 139
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getSubtotalEnergy()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getEnergyTotal()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getSubtotalPrice()Landroid/widget/TextView;

    move-result-object v23

    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getOfferWillApply()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getIsNonProductOfferAvailable()Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mIsEditMode:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    .line 148
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 149
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldEnableEditForOrderDiscountOffer()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 150
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getEditContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getRemoveButton()Landroid/widget/Button;

    move-result-object v23

    new-instance v24, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Lcom/mcdonalds/app/ordering/basket/BasketListItem;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_3
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getIsNonProductOfferAvailable()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getHideOfferUnavailableContainer()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 164
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getAlertIcon()Landroid/widget/ImageView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getNotAvailableWarning()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getOfferName()Landroid/widget/TextView;

    move-result-object v23

    const-string v24, ","

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getNonProductOfferNames()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getOfferWillApply()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    .end local v12    # "offerItem":Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;
    .end local v22    # "viewHolder":Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;
    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v23, "getView"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 78
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    const v23, 0x7f04003e

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v8, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    .local v8, "holder":Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getSelectedButton()Lcom/mcdonalds/app/widget/InertCheckBox;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/mcdonalds/app/widget/InertCheckBox;->setVisibility(I)V

    .line 84
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 85
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 87
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x32

    invoke-static/range {v24 .. v25}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setMinimumHeight(I)V

    goto/16 :goto_0

    .line 109
    .end local v8    # "holder":Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12    # "offerItem":Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;
    .restart local v22    # "viewHolder":Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getTotalContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 112
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getDeliveryFeeContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v7

    .line 115
    .local v7, "formatter":Ljava/text/NumberFormat;
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getDeliveryFeeAmount()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getDeliveryFee()D

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getTotalContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->isDeliveryFeeOfferHidden()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 121
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getDeliveryFeeOfferContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getTotalAmount()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getPriceTotal()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 125
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getDeliveryFeeOfferContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getDeliveryFeeOfferTitle()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getOfferName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getDeliveryFeeOfferDiscountAmount()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getDeliveryFeeDiscount()D

    move-result-wide v24

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getDeliveryFee()D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 142
    .end local v7    # "formatter":Ljava/text/NumberFormat;
    :cond_5
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getSubtotalEnergy()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 158
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getEditContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 168
    :cond_7
    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getHideOfferUnavailableContainer()Z

    move-result v23

    if-nez v23, :cond_8

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getIsNonProductOfferAvailable()Z

    move-result v23

    if-nez v23, :cond_9

    .line 170
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getOfferUnavailableContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 173
    :cond_9
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getOfferUnavailableContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;->getOfferName()Landroid/widget/TextView;

    move-result-object v23

    const-string v24, ","

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->getNonProductOfferNames()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 179
    .end local v12    # "offerItem":Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;
    .end local v22    # "viewHolder":Lcom/mcdonalds/app/ordering/basket/BasketSubtotalItemViewHolder;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;

    .line 182
    .restart local v8    # "holder":Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getTopPad()Landroid/view/View;

    move-result-object v24

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getTopPaddingHidden()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_f

    const/16 v23, 0x8

    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 187
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->hasError()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 188
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isUnavailable()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 191
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isMealHeaderNonErrorWarningItem()Z

    move-result v23

    if-nez v23, :cond_b

    .line 192
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0201be

    invoke-static/range {v24 .. v25}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 195
    :cond_b
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isMealErrorItem()Z

    move-result v23

    if-nez v23, :cond_10

    .line 196
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorTextView()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0903c2

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_c
    :goto_7
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getHeaderHidden()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 238
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getHeaderContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_8
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getDividerHidden()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 251
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getDividerContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :goto_9
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isNonProductOffer()Z

    move-result v23

    if-nez v23, :cond_21

    .line 258
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getItemName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getItemUplift()D

    move-result-wide v20

    .line 260
    .local v20, "uplift":D
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldShowUpLiftPrice()Z

    move-result v18

    .line 261
    .local v18, "showUplift":Z
    if-eqz v18, :cond_1d

    const-wide v24, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v23, v20, v24

    if-ltz v23, :cond_1d

    .line 262
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v7

    .line 264
    .restart local v7    # "formatter":Ljava/text/NumberFormat;
    const-string v23, "+ %s"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "formattedPrice":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .end local v6    # "formattedPrice":Ljava/lang/String;
    .end local v7    # "formatter":Ljava/text/NumberFormat;
    :goto_a
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getHeaderDetailsText()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1e

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getHeaderDetailsText()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1e

    .line 270
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getNameDetails()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getNameDetails()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getHeaderDetailsText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_b
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getItemInstructions()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getMakeItAMealHidden()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 280
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getMakeItAMealButton()Landroid/widget/Button;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    :goto_c
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getIconImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v23

    if-eqz v23, :cond_d

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v23

    .line 293
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getIconImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v23

    sget-object v24, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 294
    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v23

    const v24, 0x7f02017e

    .line 295
    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v23

    .line 296
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 300
    :cond_d
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getUnavailablePODMessage()Ljava/lang/String;

    move-result-object v11

    .line 301
    .local v11, "limitedPods":Ljava/lang/String;
    const-string v23, "MY_TAG"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getview List PODs: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_20

    .line 304
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getUnAvailablePODMessage()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getUnAvailablePODMessage()Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .end local v11    # "limitedPods":Ljava/lang/String;
    .end local v18    # "showUplift":Z
    .end local v20    # "uplift":D
    :cond_e
    :goto_d
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getFooterHidden()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_22

    .line 324
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEnergyPriceContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 325
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEditContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 182
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 198
    :cond_10
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 200
    :cond_11
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isOutOfStock()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 201
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isMealErrorItem()Z

    move-result v23

    if-nez v23, :cond_12

    .line 202
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorTextView()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0903c1

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_e
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isMealHeaderNonErrorWarningItem()Z

    move-result v23

    if-nez v23, :cond_c

    .line 207
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0201be

    invoke-static/range {v24 .. v25}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_7

    .line 204
    :cond_12
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 210
    :cond_13
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isOfferUnavailable()Z

    move-result v23

    if-eqz v23, :cond_18

    .line 212
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getHeaderHidden()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 213
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 215
    :cond_14
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getOfferPODErrorCode()I

    move-result v23

    const/16 v24, -0x1f42

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f09062c

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, "pickup":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f0905c1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v15, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "deliveryOnly":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorTextView()Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .end local v5    # "deliveryOnly":Ljava/lang/String;
    .end local v15    # "pickup":Ljava/lang/String;
    :goto_f
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isOutOfStock()Z

    move-result v23

    if-nez v23, :cond_15

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isUnavailable()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 227
    :cond_15
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0201be

    invoke-static/range {v24 .. v25}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_7

    .line 219
    :cond_16
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getOfferPODErrorCode()I

    move-result v23

    const/16 v24, -0x1f43

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f0901c8

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "delivery":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f0905c1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 222
    .local v16, "pickupOnly":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorTextView()Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 224
    .end local v4    # "delivery":Ljava/lang/String;
    .end local v16    # "pickupOnly":Ljava/lang/String;
    :cond_17
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorTextView()Landroid/widget/TextView;

    move-result-object v23

    const v24, 0x7f0905bf

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f

    .line 231
    :cond_18
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->isPriceChanged()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 232
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getErrorTextView()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0903e5

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 240
    :cond_19
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getHeaderContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getHeaderIconView()Landroid/widget/ImageView;

    move-result-object v24

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getHeaderIconHidden()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_1a

    const/16 v23, 0x8

    :goto_10
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getBasketItem()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 243
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getBasketItem()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 244
    .local v13, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v17

    .line 245
    .local v17, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 241
    .end local v13    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v17    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_1a
    const/16 v23, 0x0

    goto :goto_10

    .line 247
    :cond_1b
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getHeaderText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 253
    :cond_1c
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getDividerContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 267
    .restart local v18    # "showUplift":Z
    .restart local v20    # "uplift":D
    :cond_1d
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 273
    :cond_1e
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getNameDetails()Landroid/widget/TextView;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getNameDetails()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 282
    :cond_1f
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getMakeItAMealButton()Landroid/widget/Button;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getMakeItAMealButton()Landroid/widget/Button;

    move-result-object v23

    new-instance v24, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Lcom/mcdonalds/app/ordering/basket/BasketListItem;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_c

    .line 307
    .restart local v11    # "limitedPods":Ljava/lang/String;
    :cond_20
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getUnAvailablePODMessage()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    .line 310
    .end local v11    # "limitedPods":Ljava/lang/String;
    .end local v18    # "showUplift":Z
    .end local v20    # "uplift":D
    :cond_21
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getMakeItAMealButton()Landroid/widget/Button;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getItemName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getIconImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v23

    if-eqz v23, :cond_e

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mContext:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v23

    .line 315
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getIconImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v23

    sget-object v24, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 316
    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v23

    const v24, 0x7f02017e

    .line 317
    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v23

    .line 318
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_d

    .line 327
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mIsEditMode:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_23

    .line 328
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEnergyPriceContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEditContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getRemoveButton()Landroid/widget/Button;

    move-result-object v23

    new-instance v24, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$3;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Lcom/mcdonalds/app/ordering/basket/BasketListItem;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEditButton()Landroid/widget/Button;

    move-result-object v23

    new-instance v24, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$4;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Lcom/mcdonalds/app/ordering/basket/BasketListItem;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 347
    :cond_23
    const-string v23, "%s"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getPriceTotal()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 349
    .local v19, "totalPriceLabel":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEnergyPriceContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getPriceTotalView()Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEditContainer()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getTimeRestrictionWarning()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getTimeRestrictions()Ljava/util/List;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mcdonalds/app/util/UIUtils;->showTimeRestrictionAlert(Landroid/widget/TextView;Ljava/util/List;)V

    .line 354
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v23

    if-nez v23, :cond_24

    .line 357
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEnergyTotalView()Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getEnergyTotal()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 360
    :cond_24
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketListItemViewHolder;->getEnergyTotalView()Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const-string v0, "getViewTypeCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const/4 v0, 0x2

    return v0
.end method

.method public productEdited()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "productEdited"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mEditingPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mEditingPosition:I

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 449
    iget v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mEditingPosition:I

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    .line 450
    .local v0, "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferPODErrorCode(I)V

    .line 452
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 453
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOutOfStock(Z)V

    .line 454
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setUnavailable(Z)V

    .line 455
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceChanged(Z)V

    .line 456
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferUnavailable(Z)V

    .line 457
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferPriceChanged(Z)V

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->notifyDataSetChanged()V

    .line 462
    .end local v0    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    :cond_1
    return-void
.end method

.method public setIsEditMode(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isEditMode"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setIsEditMode"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mIsEditMode:Ljava/lang/Boolean;

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public updateOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 3
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const-string v0, "updateOrder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 371
    return-void
.end method
