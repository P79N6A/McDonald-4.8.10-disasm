.class public Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "ProductDetailsActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;
.implements Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;
.implements Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;
.implements Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;


# static fields
.field public static final REQUEST_CODE:Ljava/lang/Integer;


# instance fields
.field private mBasketBadgeContainer:Landroid/view/View;

.field private mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

.field private mBasketBadgeLabel:Landroid/widget/TextView;

.field private mCategoryName:Ljava/lang/String;

.field private mCount:I

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDayPartIndex:I

.field private mDecreaseQuantityButton:Landroid/widget/Button;

.field private mDimensionTabs:Landroid/support/design/widget/TabLayout;

.field private mEditOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mEditing:Z

.field private mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

.field mFavoritesContentObserver:Landroid/database/ContentObserver;

.field private mImageView:Landroid/widget/ImageView;

.field private mIncreaseQuantityButton:Landroid/widget/Button;

.field private mMaxQuantityAllowed:I

.field private mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

.field private mMenuEndingTextView:Landroid/widget/TextView;

.field private mOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mParentName:Ljava/lang/String;

.field private mQuantityText:Landroid/widget/TextView;

.field private mRelatedOffersView:Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;

.field private mShowDimension:Z

.field private mTotalsViewHolder:Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;

.field private mUnavailableProductCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const v0, 0xdd9b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->REQUEST_CODE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    .line 140
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    .line 142
    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mShowDimension:Z

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mUnavailableProductCodes:Ljava/util/List;

    .line 454
    new-instance v0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$3;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mFavoritesContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->addToCartButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->startLoginFlowWithFavorite(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$500"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupAddToFavoritesButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mOffers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mOffers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mRelatedOffersView:Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->increaseQuantity()V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.productdetail.ProductDetailsActivity"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->decreaseQuantity()V

    return-void
.end method

.method private addToCartButtonClicked()V
    .locals 9

    .prologue
    const-string v7, "addToCartButtonClicked"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    iget v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMaxQuantityAllowed:I

    .line 676
    .local v2, "mMaxQuantityAllowed2":I
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->isAllChoiceSelected()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 678
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 679
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->trackAddToBasket(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 680
    iget-boolean v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditing:Z

    if-eqz v7, :cond_0

    .line 681
    iget v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMaxQuantityAllowed:I

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v8

    add-int v2, v7, v8

    .line 684
    :cond_0
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v7

    if-le v7, v2, :cond_2

    .line 685
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->showBasketLimitExceededAlert()V

    .line 721
    .end local v0    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    :goto_0
    return-void

    .line 687
    .restart local v0    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    .line 688
    .local v3, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    .line 689
    .local v6, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    .line 691
    .local v4, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    .line 692
    .local v1, "isDelivery":Z
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypes()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3

    .line 693
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getBaseProductMenuTypes()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/Product;->setMenuTypes(Ljava/util/List;)V

    .line 695
    :cond_3
    iget-boolean v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditing:Z

    if-nez v7, :cond_4

    invoke-virtual {v6, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->checkDayPart(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 696
    invoke-direct {p0, v4}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->showDayPartAlert(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 698
    :cond_4
    const/4 v5, 0x1

    .line 700
    .local v5, "showInvalidDayPartsError":Z
    iget-boolean v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditing:Z

    if-eqz v7, :cond_6

    .line 701
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0, v4, v7}, Lcom/mcdonalds/sdk/modules/models/Order;->addEditedProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 702
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setResult(I)V

    .line 703
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 704
    const/4 v5, 0x0

    .line 705
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->finish()V

    .line 712
    :cond_5
    :goto_1
    if-eqz v5, :cond_1

    .line 713
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidDayPartsError(Landroid/content/Context;)V

    goto :goto_0

    .line 707
    :cond_6
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 708
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 709
    const/4 v5, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->finish()V

    goto :goto_1

    .line 719
    .end local v0    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v1    # "isDelivery":Z
    .end local v3    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .end local v4    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v5    # "showInvalidDayPartsError":Z
    .end local v6    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_7
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->showMealIncompleteAlert()V

    goto/16 :goto_0
.end method

.method private adjustBasketBadgePosition(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const-string v1, "adjustBasketBadgePosition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->updateHiddenState()V

    .line 867
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, "translationY":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v0, v1

    .line 874
    :cond_0
    if-eqz p1, :cond_1

    .line 875
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainer:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private checkDisplaySizeSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 10
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "categoryId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "checkDisplaySizeSelection"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v5

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 255
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const/4 v3, 0x0

    .line 256
    .local v3, "storeId":I
    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    .line 259
    :cond_0
    if-nez p2, :cond_4

    .line 261
    iput-boolean v6, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mShowDimension:Z

    .line 262
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 263
    .local v4, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setProductId(I)V

    .line 264
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setStoreId(I)V

    .line 265
    invoke-static {p0, v4}, Lcom/mcdonalds/sdk/services/data/repository/StoreProductCategoryRepository;->getCategoryByStoreProduct(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v1

    .line 267
    .local v1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 268
    iput-boolean v5, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mShowDimension:Z

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    .line 271
    .local v0, "c":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->getDisplaySizeSelection()I

    move-result v7

    if-eqz v7, :cond_3

    .line 272
    iput-boolean v5, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mShowDimension:Z

    goto :goto_0

    .line 278
    .end local v0    # "c":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    .end local v1    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    .end local v4    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_4
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 279
    .restart local v4    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setProductId(I)V

    .line 280
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setStoreId(I)V

    .line 281
    invoke-static {p0, v4}, Lcom/mcdonalds/sdk/services/data/repository/StoreProductCategoryRepository;->getCategoryByStoreProduct(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v1

    .line 283
    .restart local v1    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    .line 284
    .restart local v0    # "c":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->getCategoryId()I

    move-result v8

    if-ne v8, p2, :cond_5

    .line 285
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->getDisplaySizeSelection()I

    move-result v7

    if-eqz v7, :cond_6

    :goto_1
    iput-boolean v5, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mShowDimension:Z

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_1
.end method

.method private decreaseQuantity()V
    .locals 4

    .prologue
    const-string v2, "decreaseQuantity"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 525
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 526
    .local v1, "quantity":I
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 527
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setQuantityAndTotals(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 528
    return-void
.end method

.method private fetchOffers()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const-string v0, "fetchOffers"

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mOffers:Ljava/util/List;

    .line 471
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v7

    .line 473
    .local v7, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v6

    .line 474
    .local v6, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    .line 476
    .local v8, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$4;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$4;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V

    move-object v4, v3

    .line 477
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 492
    .end local v6    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .end local v7    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .end local v8    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    return-void
.end method

.method private increaseQuantity()V
    .locals 4

    .prologue
    const-string v2, "increaseQuantity"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 532
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 533
    .local v1, "quantity":I
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 534
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setQuantityAndTotals(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 535
    return-void
.end method

.method private productChoiceSelected(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 5
    .param p1, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "index"    # I

    .prologue
    const-string v1, "productChoiceSelected"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v1, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getMealItemAt(I)Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;

    move-result-object v0

    .line 637
    .local v0, "itemData":Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
    iget-boolean v1, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->isChoice:Z

    if-nez v1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Choice selection error, expected choice at index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v1, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->choiceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Choice;->setUnavailable(Z)V

    .line 642
    iget-object v1, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->choiceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 643
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->updateCurrentView()V

    goto :goto_0
.end method

.method private productCustomizationUpdated(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 10
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "productIndex"    # I

    .prologue
    const-string v6, "productCustomizationUpdated"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v6, p2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getMealItemAt(I)Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;

    move-result-object v4

    .line 648
    .local v4, "itemData":Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
    if-eqz v4, :cond_3

    .line 649
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    .line 650
    .local v2, "customization":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v3, 0x0

    .line 652
    .local v3, "isChoiceCustomizations":Z
    iget-object v6, v4, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v5

    .line 653
    .local v5, "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 654
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 655
    .local v1, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 656
    .local v0, "actualProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 657
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 658
    const/4 v3, 0x1

    .line 664
    .end local v0    # "actualProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_1
    if-nez v3, :cond_2

    .line 665
    iget-object v6, v4, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 668
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->updateCurrentView()V

    .line 670
    .end local v2    # "customization":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v3    # "isChoiceCustomizations":Z
    .end local v5    # "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    :cond_3
    return-void
.end method

.method private setQuantityAndTotals(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 9
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v1, "setQuantityAndTotals"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mQuantityText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    .line 615
    .local v0, "formatter":Ljava/text/NumberFormat;
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mTotalsViewHolder:Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->getTotalEnergy()Landroid/widget/TextView;

    move-result-object v1

    .line 618
    invoke-static {p1}, Lcom/mcdonalds/app/util/OrderProductUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-static {p1, v4}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :goto_0
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v2

    .line 624
    .local v2, "price":D
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mTotalsViewHolder:Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->getTotalPrice()Landroid/widget/TextView;

    move-result-object v1

    const-string v4, "%s*"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    if-gt v1, v7, :cond_1

    .line 626
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDecreaseQuantityButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 633
    :goto_1
    return-void

    .line 620
    .end local v2    # "price":D
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mTotalsViewHolder:Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;->getTotalEnergy()Landroid/widget/TextView;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 627
    .restart local v2    # "price":D
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    iget v4, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMaxQuantityAllowed:I

    if-lt v1, v4, :cond_2

    .line 628
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mIncreaseQuantityButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDecreaseQuantityButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 631
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mIncreaseQuantityButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private setupAddToFavoritesButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "setupAddToFavoritesButton"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    new-instance v3, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    const v4, 0x7f1100bd

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .line 420
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 421
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->setCategoryName(Ljava/lang/String;)V

    .line 422
    const v3, 0x7f1100e4

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 423
    .local v0, "addToFavoritesButton":Landroid/widget/Button;
    new-instance v3, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$2;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 442
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    invoke-virtual {v3, p1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isFavoriteOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    .local v1, "isFavorite":Z
    :goto_0
    if-nez v1, :cond_1

    .line 445
    const v3, 0x7f090072

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 446
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 452
    :goto_1
    return-void

    .end local v1    # "isFavorite":Z
    :cond_0
    move v1, v2

    .line 442
    goto :goto_0

    .line 449
    .restart local v1    # "isFavorite":Z
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private setupBasketBadgeView()V
    .locals 2

    .prologue
    const-string v0, "setupBasketBadgeView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    const v0, 0x7f1100d2

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainer:Landroid/view/View;

    .line 903
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainer:Landroid/view/View;

    const v1, 0x7f11025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeLabel:Landroid/widget/TextView;

    .line 904
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainer:Landroid/view/View;

    new-instance v1, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$9;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$9;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->adjustBasketBadgePosition(Z)V

    .line 912
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->updateHiddenState()V

    .line 913
    return-void
.end method

.method private setupChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 7
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v6, 0x1

    const-string v3, "setupChoices"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mUnavailableProductCodes:Ljava/util/List;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    .line 362
    .local v2, "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 363
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 364
    .local v1, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 365
    .local v0, "actualProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    invoke-virtual {v1, v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->setUnavailable(Z)V

    goto :goto_0

    .line 371
    .end local v0    # "actualProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v2    # "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    :cond_1
    return-void
.end method

.method private setupMaxQuantityAllowed()V
    .locals 3

    .prologue
    const-string v1, "setupMaxQuantityAllowed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getItemsCount()I

    move-result v0

    .line 496
    .local v0, "itemsInBasket":I
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getMaxItemQuantity()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMaxQuantityAllowed:I

    .line 498
    iget v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMaxQuantityAllowed:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 499
    const v1, 0x7f110508

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mIncreaseQuantityButton:Landroid/widget/Button;

    .line 500
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mIncreaseQuantityButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 502
    :cond_0
    return-void
.end method

.method private setupOffers(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/util/List;)V
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const-string v0, "setupOffers"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mRelatedOffersView:Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->setProductId(Ljava/lang/String;Ljava/util/List;)V

    .line 465
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mRelatedOffersView:Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 466
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mRelatedOffersView:Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mOffers:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;->filter(Ljava/util/List;Landroid/app/Activity;)V

    .line 467
    return-void
.end method

.method private setupPicture(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "setupPicture"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getCarouselImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    .line 558
    .local v0, "imageInfo":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 561
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 562
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f02017e

    .line 563
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mImageView:Landroid/widget/ImageView;

    .line 564
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 566
    :cond_0
    return-void
.end method

.method private setupProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V
    .locals 8
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "favoriteButtonClicked"    # Z

    .prologue
    const/4 v7, 0x0

    const-string v3, "setupProduct"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 331
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 332
    .local v0, "categoryId":I
    if-eqz v1, :cond_0

    .line 333
    const-string v3, "ARG_CAT_ID"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 335
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->checkDisplaySizeSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 337
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 338
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupPicture(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 339
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupMaxQuantityAllowed()V

    .line 340
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupTabs(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 342
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupTotals()V

    .line 343
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupTimeRestrictions(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupAddToFavoritesButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 345
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupOffers(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/util/List;)V

    .line 347
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 348
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    :cond_1
    if-eqz p2, :cond_2

    .line 352
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v3, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->addToFavoritesClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 355
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setPageSection(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 357
    return-void
.end method

.method private setupTabs(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "setupTabs"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    const v1, 0x7f1100e2

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 539
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mShowDimension:Z

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    .line 540
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDimensionTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setupWithTabLayout(Landroid/support/design/widget/TabLayout;)V

    .line 541
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setOnMealChangedListener(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;)V

    .line 542
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setOnProductChoiceClickedListener(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductChoiceClickedListener;)V

    .line 543
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setOnProductCustomizeClickedListener(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductCustomizeClickedListener;)V

    .line 544
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setOnProductInfoClickedListener(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnProductInfoClickedListener;)V

    .line 545
    return-void
.end method

.method private setupTimeRestrictions(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 19
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v14, "setupTimeRestrictions"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    .line 375
    .local v6, "mStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const-string v14, "ordering"

    invoke-static {v14}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 376
    .local v10, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 377
    .local v5, "isDelivery":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMenuEndingTextView:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.dayparts.daypartEndingAlertTime"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 380
    .local v4, "alertTimeConfig":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 381
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID()I

    move-result v11

    .line 382
    .local v11, "typeId":I
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMenuTypes()Ljava/util/List;

    move-result-object v9

    .line 383
    .local v9, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    const/4 v8, 0x0

    .line 384
    .local v8, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 385
    .local v7, "mType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v15

    if-ne v15, v11, :cond_0

    .line 386
    move-object v8, v7

    goto :goto_0

    .line 389
    .end local v7    # "mType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    :cond_1
    if-eqz v8, :cond_2

    .line 390
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v6, v8, v14}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuEndingTime(Lcom/mcdonalds/sdk/modules/models/MenuType;Z)J

    move-result-wide v12

    .line 391
    .local v12, "timeLeftInMenu":J
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 393
    .local v2, "alertTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_2

    cmp-long v14, v12, v2

    if-gtz v14, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMenuEndingTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMenuEndingTextView:Landroid/widget/TextView;

    const v15, 0x7f0903e1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 396
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    .end local v2    # "alertTime":J
    .end local v8    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    .end local v9    # "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    .end local v11    # "typeId":I
    .end local v12    # "timeLeftInMenu":J
    :cond_2
    const v14, 0x7f1100b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/Product;->getTimeRestrictions()Ljava/util/List;

    move-result-object v15

    .line 401
    invoke-static {v14, v15}, Lcom/mcdonalds/app/util/UIUtils;->showTimeRestrictionAlert(Landroid/widget/TextView;Ljava/util/List;)V

    .line 403
    return-void
.end method

.method private setupTotals()V
    .locals 3

    .prologue
    const-string v1, "setupTotals"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 506
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    const v1, 0x7f110508

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mIncreaseQuantityButton:Landroid/widget/Button;

    .line 507
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mIncreaseQuantityButton:Landroid/widget/Button;

    new-instance v2, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$5;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    const v1, 0x7f11050a

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDecreaseQuantityButton:Landroid/widget/Button;

    .line 514
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDecreaseQuantityButton:Landroid/widget/Button;

    new-instance v2, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$6;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setQuantityAndTotals(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 521
    return-void
.end method

.method private showBasketLimitExceededAlert()V
    .locals 3

    .prologue
    const-string v0, "showBasketLimitExceededAlert"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 751
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 752
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$8;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$8;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 760
    return-void
.end method

.method private showDayPartAlert(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 6
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v3, "showDayPartAlert"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 739
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v1

    .line 740
    .local v1, "dataPasserKey":I
    const-string v3, "arg_edit_product"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 742
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 743
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "fragment"

    const-string v4, "day_part_alert"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 746
    const/16 v3, 0x2a

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 747
    return-void
.end method

.method private showMealIncompleteAlert()V
    .locals 4

    .prologue
    const-string v2, "showMealIncompleteAlert"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$7;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$7;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V

    invoke-static {p0, v1, v0, v2}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 733
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "Incomplete meal"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method private startLoginFlowWithFavorite(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x1

    const-string v1, "startLoginFlowWithFavorite"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ARG_ANALYTICS_DAYPART_INDEX"

    iget v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDayPartIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    const-string v1, "ARG_ANALYTICS_CATEGORY_NAME"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v1, "ARG_ANALYTICS_PARENT_NAME"

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mParentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "EXTRA_SAVING_FAVORITE_PRODUCT"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    const-string v2, "ARG_PRODUCT"

    invoke-virtual {v1, v2, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    const-class v1, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v2, "signin"

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 415
    return-void
.end method

.method private trackAddToBasket(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 8
    .param p1, "currentOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v7, 0x1

    const-string v4, "trackAddToBasket"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMealAdapter:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->getCurrentOrderProduct()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 764
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 765
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 766
    .local v1, "customArgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCategoryName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 767
    const/16 v4, 0x14

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 769
    :cond_0
    const/16 v4, 0x15

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 772
    const/16 v4, 0x2d

    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 775
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->hasOffers()Z

    move-result v4

    if-nez v4, :cond_2

    .line 777
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->trackBasketCreated()V

    .line 780
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 781
    .local v2, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "EVENT_NAME"

    const-string v5, "addcart"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v4, "pdid"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v4, "pdname"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v4, "pdismds"

    const-string v5, "Delivery"

    .line 785
    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v5

    .line 784
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string v4, "pdispickup"

    const-string v5, "Pickup"

    .line 787
    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v5

    .line 786
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v5, "/order/item"

    .line 790
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "On click"

    .line 791
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "PDP - Add to basket"

    .line 792
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 793
    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 794
    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/CustomerEventAction;

    sget-object v6, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM3:Lcom/admaster/square/api/CustomEvent;

    invoke-direct {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/CustomerEventAction;-><init>(Lcom/admaster/square/api/CustomEvent;)V

    .line 795
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 796
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 798
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v4, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 800
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v1    # "customArgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v2    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method

.method private trackBasketCreated()V
    .locals 3

    .prologue
    const-string v0, "trackBasketCreated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    const-string v0, "/basket"

    const-string v1, "On click"

    const-string v2, "Basket Created"

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method private updateHiddenState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "updateHiddenState"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 883
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditing:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    .line 884
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    .line 891
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 892
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 897
    :goto_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 898
    return-void

    .line 886
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalOrderCount()I

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCount:I

    .line 887
    iget v3, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCount:I

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainerIsHidden:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 894
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mBasketBadgeContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getContentViewResource()I
    .locals 2

    .prologue
    const-string v0, "getContentViewResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const v0, 0x7f04002b

    return v0
.end method

.method protected getDataLayerPageSection()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getDataLayerPageSection"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    return-object v1
.end method

.method protected navigateToBasket()V
    .locals 3

    .prologue
    const-string v1, "navigateToBasket"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 919
    const-string v1, "/home"

    const-string v2, "Basket"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 921
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fragment"

    const-string v2, "basket"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 923
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->finish()V

    .line 925
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 833
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 834
    const/16 v3, 0x332a

    if-ne p1, v3, :cond_3

    .line 835
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 837
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 842
    .local v2, "returnedData":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_0
    invoke-static {v2}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    if-nez v3, :cond_2

    .line 863
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "returnedData":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    :goto_1
    return-void

    .line 840
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v2    # "returnedData":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_0

    .line 845
    :cond_2
    const-string v3, "RESULT_INDEX"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 846
    .local v0, "choiceIndex":I
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->productChoiceSelected(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 848
    .end local v0    # "choiceIndex":I
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "returnedData":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    const v3, 0xb128

    if-ne p1, v3, :cond_4

    .line 849
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 851
    .restart local v1    # "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 852
    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 856
    .restart local v2    # "returnedData":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_2
    sget-object v3, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT_INDEX:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 857
    .restart local v0    # "choiceIndex":I
    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->productCustomizationUpdated(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 859
    .end local v0    # "choiceIndex":I
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "returnedData":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    const/16 v3, 0x2a

    if-ne p1, v3, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->finish()V

    goto :goto_1

    .line 854
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_5
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v2    # "returnedData":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditing:Z

    if-eqz v0, :cond_0

    .line 822
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 824
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->finishAfterTransition()V

    .line 829
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->finish()V

    goto :goto_0
.end method

.method public onChange(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/List;)V
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const-string v0, "onChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setQuantityAndTotals(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupAddToFavoritesButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 552
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupOffers(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/util/List;)V

    .line 553
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupPicture(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 554
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 152
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v9

    if-nez v9, :cond_0

    .line 153
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->finish()V

    .line 245
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v9, "customer"

    invoke-static {v9}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 162
    const v9, 0x7f110063

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mImageView:Landroid/widget/ImageView;

    .line 163
    const v9, 0x7f1100e1

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/TabLayout;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDimensionTabs:Landroid/support/design/widget/TabLayout;

    .line 164
    const v9, 0x7f110509

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mQuantityText:Landroid/widget/TextView;

    .line 165
    const v9, 0x7f1100e0

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mMenuEndingTextView:Landroid/widget/TextView;

    .line 166
    new-instance v9, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;

    const v10, 0x7f110525

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;-><init>(Landroid/view/View;)V

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mTotalsViewHolder:Lcom/mcdonalds/app/ordering/ProductTotalPriceEnergy;

    .line 167
    const v9, 0x7f1100e5

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mRelatedOffersView:Lcom/mcdonalds/app/ordering/ProductRelatedOffersView;

    .line 169
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->fetchOffers()V

    .line 171
    const v9, 0x7f1100e7

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 172
    .local v0, "addToCartButton":Landroid/widget/Button;
    new-instance v9, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$1;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity$1;-><init>(Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 180
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 181
    const-string v9, "ARG_ANALYTICS_DAYPART_INDEX"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDayPartIndex:I

    .line 182
    const-string v9, "ARG_ANALYTICS_CATEGORY_NAME"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mCategoryName:Ljava/lang/String;

    .line 183
    const-string v9, "ARG_ANALYTICS_PARENT_NAME"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mParentName:Ljava/lang/String;

    .line 184
    const-string v9, "ARG_UNAVAILABLE_PRODUCT_CODES"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mUnavailableProductCodes:Ljava/util/List;

    .line 187
    const-string v9, "ARG_PRODUCT"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 188
    const-string v9, "ARG_PRODUCT"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 193
    .local v5, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_1
    if-eqz v5, :cond_7

    .line 194
    const-string v9, "arg_editing"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditing:Z

    .line 195
    iget-boolean v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditing:Z

    if-eqz v9, :cond_1

    .line 196
    iput-object v5, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 197
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mEditOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->cloneProductForEditing(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    .line 198
    const v9, 0x7f09013b

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 199
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v9

    invoke-static {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 201
    :cond_1
    const-string v9, "EXTRA_SAVING_FAVORITE_PRODUCT"

    invoke-virtual {v2, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-direct {p0, v5, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    .line 215
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 216
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v4, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "EVENT_NAME"

    const-string v10, "productview"

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v9, "pdismds"

    const-string v10, "Delivery"

    .line 219
    invoke-virtual {v5, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v10

    .line 218
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v9, "pdispickup"

    const-string v10, "Pickup"

    .line 221
    invoke-virtual {v5, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v10

    .line 220
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v9, "pdname"

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v9, "pdid"

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v9, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v9}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 225
    invoke-virtual {v9, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v9

    new-instance v10, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/CustomerEventAction;

    sget-object v11, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM3:Lcom/admaster/square/api/CustomEvent;

    invoke-direct {v10, v11}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/CustomerEventAction;-><init>(Lcom/admaster/square/api/CustomEvent;)V

    .line 226
    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v9

    .line 227
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 228
    .local v1, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v9, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v9, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 232
    .end local v1    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v4    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isNutritionAvailable()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 233
    const v9, 0x7f110506

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 234
    .local v8, "warningsView":Landroid/view/View;
    if-eqz v8, :cond_4

    .line 235
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .end local v8    # "warningsView":Landroid/view/View;
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.orderingDisclaimerInfo"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 240
    const v9, 0x7f1100e6

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 241
    .local v7, "warningsContainer":Landroid/view/ViewGroup;
    const-string v9, "productView"

    invoke-static {v7, p0, v9}, Lcom/mcdonalds/app/util/UIUtils;->addDisclaimerTextView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    .end local v7    # "warningsContainer":Landroid/view/ViewGroup;
    :cond_5
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupBasketBadgeView()V

    goto/16 :goto_0

    .line 190
    :cond_6
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v9

    const-string v10, "ARG_PRODUCT"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v5    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto/16 :goto_1

    .line 204
    :cond_7
    const-string v9, "ARG_PRODUCT_PASSED"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 205
    const-string v9, "ARG_PRODUCT_PASSED"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 209
    .local v6, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :goto_3
    if-eqz v6, :cond_2

    .line 210
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    .line 211
    const-string v9, "EXTRA_SAVING_FAVORITE_PRODUCT"

    invoke-virtual {v2, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-direct {p0, v5, v9}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setupProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    goto/16 :goto_2

    .line 207
    .end local v6    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_8
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v9

    const-string v10, "ARG_PRODUCT_PASSED"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Product;

    .restart local v6    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    goto :goto_3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const-string v2, "onNewIntent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 296
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 297
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "EXTRA_SAVING_FAVORITE_PRODUCT"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    const-string v3, "ARG_PRODUCT"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 299
    .local v1, "op":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->addToFavoritesClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 301
    .end local v1    # "op":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onOptionsItemSelected"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 809
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 814
    :goto_0
    return v0

    .line 811
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->onBackPressed()V

    goto :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onPause()V

    .line 325
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mFavoritesContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 326
    return-void
.end method

.method public onProductChoiceClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 6
    .param p1, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choiceIndex"    # I

    .prologue
    const-string v2, "onProductChoiceClicked"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    const-string v3, "ARG_CHOICE_KEY"

    invoke-virtual {v2, v3, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    const-string v2, "ARG_INDEX"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    const-string v2, "ARG_TITLE"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 577
    const/16 v2, 0x332a

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 578
    return-void
.end method

.method public onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 7
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "ingredientIndex"    # I

    .prologue
    const-string v3, "onProductCustomizeClicked"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 583
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const-string v4, "On click"

    .line 584
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const-string v4, "PDP - Customization"

    .line 585
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 586
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 587
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v3, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 589
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "ARG_ANALYTICS_PARENT_NAME"

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mParentName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v3, "ARG_PRODUCT_INDEX"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    const-string v4, "ARG_PRODUCT"

    invoke-virtual {v3, v4, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 597
    const v3, 0xb128

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 598
    return-void
.end method

.method public onProductInfoClicked(Ljava/lang/String;)V
    .locals 6
    .param p1, "recipeId"    # Ljava/lang/String;

    .prologue
    const-string v0, "onProductInfoClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v2, "/order"

    .line 603
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 604
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "PDP - Nutrition info"

    .line 605
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 602
    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 608
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mParentName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/navigation/NavigationManager;->showNutrition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 609
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 314
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onResume()V

    .line 315
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->adjustBasketBadgePosition(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mFavoritesContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 317
    const v0, 0x7f090893

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackScreenLoad(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->mDimensionTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->setDataLayerTags(Landroid/support/design/widget/TabLayout;)V

    .line 320
    return-void
.end method

.method public setDataLayerTags(Landroid/support/design/widget/TabLayout;)V
    .locals 5
    .param p1, "tabs"    # Landroid/support/design/widget/TabLayout;

    .prologue
    const-string v2, "setDataLayerTags"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 935
    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    .line 936
    .local v1, "tab":Landroid/support/design/widget/TabLayout$Tab;
    const-string v2, "ToggleMealSize"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/String;)V

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    .end local v1    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_0
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    const/4 v0, 0x1

    return v0
.end method
