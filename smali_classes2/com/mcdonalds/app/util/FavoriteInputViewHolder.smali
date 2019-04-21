.class public Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
.super Ljava/lang/Object;
.source "FavoriteInputViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;
    }
.end annotation


# instance fields
.field private final mCancelFavoritesButton:Landroid/widget/Button;

.field private mCategoryName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private final mFavoriteNameInputEditText:Landroid/widget/EditText;

.field private final mRemoveFromFavoritesButton:Landroid/widget/Button;

.field private final mRootView:Landroid/view/View;

.field private final mSaveToFavoritesButton:Landroid/widget/Button;

.field private final mSlideDown:Landroid/view/animation/Animation;

.field private final mSlideUp:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    .line 56
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 57
    const v0, 0x7f1101f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    .line 58
    const v0, 0x7f050014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideDown:Landroid/view/animation/Animation;

    .line 59
    const v0, 0x7f050015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideUp:Landroid/view/animation/Animation;

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideDown:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideDown:Landroid/view/animation/Animation;

    new-instance v1, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$1;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideUp:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideUp:Landroid/view/animation/Animation;

    new-instance v1, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$2;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    const v1, 0x7f1101fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mFavoriteNameInputEditText:Landroid/widget/EditText;

    .line 98
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    const v1, 0x7f1101fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSaveToFavoritesButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    const v1, 0x7f11035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRemoveFromFavoritesButton:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    const v1, 0x7f1101fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCancelFavoritesButton:Landroid/widget/Button;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.FavoriteInputViewHolder"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.FavoriteInputViewHolder"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->saveToFavoritesClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.FavoriteInputViewHolder"

    const-string v2, "access$200"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->productAddedToFavorites(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.FavoriteInputViewHolder"

    const-string v2, "access$300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->reportAsyncException(Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.FavoriteInputViewHolder"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addProductToFavorites(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 8
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x1

    const-string v0, "addProductToFavorites"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getFavoriteNameInputEditText()Landroid/widget/EditText;

    move-result-object v7

    .line 270
    .local v7, "favoriteNameInput":Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "favoriteName":Ljava/lang/String;
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 275
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 276
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 277
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$6;

    invoke-direct {v5, p0, p1, v6}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$6;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 290
    return-void
.end method

.method private productAddedToFavorites(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)V
    .locals 3
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "favoriteName"    # Ljava/lang/String;

    .prologue
    const-string v0, "productAddedToFavorites"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->hide()V

    .line 321
    const/16 v0, 0x1f

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    .line 322
    const/16 v0, 0x20

    invoke-static {v0, p2}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCategoryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 324
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCategoryName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method private removeProductFromFavorites(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "removeProductFromFavorites"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 295
    .local v0, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$7;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deleteFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 317
    return-void
.end method

.method private reportAsyncException(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "reportAsyncException"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$8;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$8;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    .line 331
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 337
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 341
    :cond_0
    return-void
.end method

.method private saveToFavoritesClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "saveToFavoritesClicked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getFavoriteNameInputEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "favoriteName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f0900b2

    .line 253
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$5;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$5;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->addProductToFavorites(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0
.end method

.method private showAddToFavoritesView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v0, "showAddToFavoritesView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->show()V

    .line 232
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideDown:Landroid/view/animation/Animation;

    new-instance v1, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 233
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSaveToFavoritesButton:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$3;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCancelFavoritesButton:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$4;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$4;-><init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-void
.end method

.method private startSignInActivity()V
    .locals 3

    .prologue
    const-string v1, "startSignInActivity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mcdonalds/app/customer/SignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method private startSlideDown()V
    .locals 2

    .prologue
    const-string v0, "startSlideDown"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideDown:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    return-void
.end method

.method private startSlideUp()V
    .locals 2

    .prologue
    const-string v0, "startSlideUp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSlideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    return-void
.end method


# virtual methods
.method public addToFavoritesClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "addToFavoritesClicked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 199
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 200
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "PDP - Favorite"

    .line 201
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 203
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 205
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v2, "save_item_as_favorite"

    .line 206
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "product_id"

    .line 207
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "product_name"

    .line 208
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "product_quantity"

    .line 209
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 205
    invoke-static {v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 212
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->startSignInActivity()V

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    invoke-virtual {v1, p1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isFavoriteOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->showAddToFavoritesView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->removeProductFromFavorites(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0
.end method

.method public getCancelToFavoritesButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getCancelToFavoritesButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCancelFavoritesButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getFavoriteNameInputEditText()Landroid/widget/EditText;
    .locals 2

    .prologue
    const-string v0, "getFavoriteNameInputEditText"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mFavoriteNameInputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getRemoveFromFavoritesButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getRemoveFromFavoritesButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRemoveFromFavoritesButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSaveToFavoritesButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getSaveToFavoritesButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSaveToFavoritesButton:Landroid/widget/Button;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const-string v0, "hide"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->startSlideUp()V

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getFavoriteNameInputEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 3
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setCategoryName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iput-object p1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mCategoryName:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setRemoveFromFavoritesButtonVisible()V
    .locals 2

    .prologue
    const-string v0, "setRemoveFromFavoritesButtonVisible"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSaveToFavoritesButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRemoveFromFavoritesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    return-void
.end method

.method public setSaveToFavoritesButtonVisible()V
    .locals 2

    .prologue
    const-string v0, "setSaveToFavoritesButtonVisible"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mSaveToFavoritesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRemoveFromFavoritesButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const-string v0, "show"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-direct {p0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->startSlideDown()V

    .line 108
    iget-object v0, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    return-void
.end method
