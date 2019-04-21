.class public Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OrderDetailsFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mCustomerOrder:Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

.field private mFavoriteInputContainer:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

.field private mFavoriteNameInput:Landroid/widget/TextView;

.field private mFavoriteOrderButton:Landroid/widget/Button;

.field private mIsFavorite:Z

.field private final mOnClickAddToFavorites:Landroid/view/View$OnClickListener;

.field private final mOnClickCancel:Landroid/view/View$OnClickListener;

.field private final mOnClickFavoriteOrder:Landroid/view/View$OnClickListener;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mOrderReceiptContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 229
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOnClickFavoriteOrder:Landroid/view/View$OnClickListener;

    .line 244
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$5;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOnClickAddToFavorites:Landroid/view/View$OnClickListener;

    .line 277
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$6;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOnClickCancel:Landroid/view/View$OnClickListener;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->orderAgain()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mFavoriteNameInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->addToFavorites(Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->updateFavoriteName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->refreshAddToFavoritesButton()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/widget/LinearLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrderReceiptContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Landroid/view/LayoutInflater;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
    .param p1, "x1"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->load(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->loadFavorites()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->canFavorite()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mIsFavorite:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mIsFavorite:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->deleteFromFavorites()V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mFavoriteInputContainer:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/view/View$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOnClickAddToFavorites:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/view/View$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.OrderDetailsFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOnClickCancel:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private addToFavorites(Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V
    .locals 6
    .param p1, "favoriteName"    # Ljava/lang/String;
    .param p2, "input"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .prologue
    const/4 v4, 0x0

    const-string v0, "addToFavorites"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 352
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v5, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;

    invoke-direct {v5, p0, p2, p1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$7;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Ljava/lang/String;)V

    move-object v3, p1

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 375
    return-void
.end method

.method private canFavorite()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "canFavorite"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkFavorites(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "checkFavorites"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object p1, v11, v9

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 309
    .local v3, "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->isSimilarOrder(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 311
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 312
    .local v7, "products":[Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v1

    .line 314
    .local v1, "favoriteProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    const/4 v4, 0x1

    .line 315
    .local v4, "match":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v11, v7

    if-ge v2, v11, :cond_2

    .line 317
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_3

    .line 319
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 320
    .local v0, "favorite":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    aget-object v5, v7, v2

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 321
    .local v5, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 323
    .local v6, "productCode":I
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v6, :cond_1

    .line 324
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 326
    :cond_1
    const/4 v4, 0x0

    .line 335
    .end local v0    # "favorite":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v5    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "productCode":I
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 336
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/models/Order;->setFavoriteName(Ljava/lang/String;)V

    .line 342
    .end local v1    # "favoriteProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .end local v4    # "match":Z
    .end local v7    # "products":[Ljava/lang/Object;
    :goto_2
    return v8

    .line 330
    .restart local v1    # "favoriteProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .restart local v4    # "match":Z
    .restart local v7    # "products":[Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x0

    .line 331
    goto :goto_1

    .line 315
    .restart local v0    # "favorite":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .restart local v5    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v6    # "productCode":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "favorite":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v1    # "favoriteProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .end local v4    # "match":Z
    .end local v5    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "productCode":I
    .end local v7    # "products":[Ljava/lang/Object;
    :cond_5
    move v8, v9

    .line 342
    goto :goto_2
.end method

.method private deleteFromFavorites()V
    .locals 9

    .prologue
    const-string v4, "deleteFromFavorites"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->needsFavoriteProductsRefresh()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$8;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$8;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v1, "favoriteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteProducts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 391
    .local v2, "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->isSimilarOrder(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 392
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 393
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 394
    .local v0, "favorite":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 395
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 402
    .end local v0    # "favorite":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v2    # "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .end local v3    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$9;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$9;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    invoke-virtual {v4, v5, v1, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deleteFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private init(Landroid/view/LayoutInflater;)V
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "init"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v1, :cond_0

    .line 139
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v1, :cond_1

    .line 143
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->load(Landroid/view/LayoutInflater;)V

    .line 192
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 146
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    new-array v1, v4, [Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerOrder:Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    aput-object v2, v1, v3

    .line 147
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$2;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Landroid/view/LayoutInflater;)V

    .line 146
    invoke-static {v1, v0, v2}, Lcom/mcdonalds/app/ordering/OrderUtils;->ordersFromCustomerOrders(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method private isSimilarOrder(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isSimilarOrder"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    if-ne v2, v3, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/ListUtils;->sameSize(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 347
    goto :goto_0
.end method

.method private load(Landroid/view/LayoutInflater;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const-string v0, "load"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->loadFavorites()V

    .line 196
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->refreshAddToFavoritesButton()V

    .line 198
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 201
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrderReceiptContainer:Landroid/widget/LinearLayout;

    .line 199
    invoke-static {v0, v1, v2, p1}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->configureOrderReceiptForDisplay(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V

    .line 206
    :cond_0
    return-void
.end method

.method private loadFavorites()V
    .locals 2

    .prologue
    const-string v0, "loadFavorites"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->needsFavoriteProductsRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$3;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$3;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteProducts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->checkFavorites(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mIsFavorite:Z

    .line 220
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->refreshAddToFavoritesButton()V

    .line 222
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    goto :goto_0
.end method

.method private orderAgain()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v5, "orderAgain"

    invoke-static {p0, v5, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Order Again"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 426
    .local v1, "current":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    add-int v0, v5, v6

    .line 427
    .local v0, "count":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getMaxBasketQuantity()I

    move-result v2

    .line 429
    .local v2, "max":I
    if-le v0, v2, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f0907e8

    .line 431
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f0905d4

    .line 432
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$10;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$10;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    .line 438
    invoke-virtual {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    .line 439
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 441
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v5

    const-string v6, "Too many products in the basket"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProducts(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 444
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/OrderUtils;->orderHasUnavailableProductsOrIsEmpty(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f090a51

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 447
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v5

    const-string v6, "Must have items in basket before checking out"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 449
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 450
    .local v4, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_1

    .line 452
    .end local v4    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 453
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcom/mcdonalds/app/ui/URLActionBarActivity;

    if-eqz v5, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/URLActionBarActivity;

    const-class v6, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->startActivityForResult(Ljava/lang/Class;I)V

    goto :goto_0

    .line 459
    :cond_4
    new-instance v3, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;

    invoke-direct {v3, p0, v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 478
    .local v3, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f09010f

    .line 479
    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f090156

    .line 480
    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f090182

    .line 481
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f09011a

    .line 482
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    .line 483
    invoke-virtual {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    .line 484
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 487
    .end local v3    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidDayPartsError(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private refreshAddToFavoritesButton()V
    .locals 2

    .prologue
    const-string v0, "refreshAddToFavoritesButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mFavoriteOrderButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mIsFavorite:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02008d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 286
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mFavoriteOrderButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mIsFavorite:Z

    if-eqz v0, :cond_1

    const v0, 0x7f09035b

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 287
    return-void

    .line 285
    :cond_0
    const v0, 0x7f020082

    goto :goto_0

    .line 286
    :cond_1
    const v0, 0x7f090359

    goto :goto_1
.end method

.method private updateFavoriteName(Ljava/lang/String;)V
    .locals 5
    .param p1, "favoriteName"    # Ljava/lang/String;

    .prologue
    const-string v2, "updateFavoriteName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrderReceiptContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f110067

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 298
    .local v1, "title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrderReceiptContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f110437

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    .local v0, "subTitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setFavoriteName(Ljava/lang/String;)V

    .line 300
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 301
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->updateFavoriteName(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const v0, 0x7f090892

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const v0, 0x7f0907b0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 86
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "order_data_passer_key"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "dataPasserKey":I
    if-ne v1, v4, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "order"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 92
    .local v0, "data":Ljava/io/Serializable;
    instance-of v2, v0, Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v2, :cond_0

    .line 93
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order;

    .end local v0    # "data":Ljava/io/Serializable;
    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 100
    :goto_0
    return-void

    .line 95
    .restart local v0    # "data":Ljava/io/Serializable;
    :cond_0
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    .end local v0    # "data":Ljava/io/Serializable;
    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mCustomerOrder:Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const v3, 0x7f0400f0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "rootView":Landroid/view/View;
    const v3, 0x7f110355

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$1;-><init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v3, 0x7f110352

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOrderReceiptContainer:Landroid/widget/LinearLayout;

    .line 115
    const v3, 0x7f110356

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mFavoriteOrderButton:Landroid/widget/Button;

    .line 116
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mFavoriteOrderButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mOnClickFavoriteOrder:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v1

    .line 119
    .local v1, "hideNutrition":Z
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.hideProductCustomizationButton"

    .line 120
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 122
    .local v0, "hideCustomiztion":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const v3, 0x7f110354

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_1
    const v3, 0x7f1101fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mFavoriteNameInput:Landroid/widget/TextView;

    .line 127
    new-instance v3, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->mFavoriteInputContainer:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .line 129
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0907d4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->init(Landroid/view/LayoutInflater;)V

    .line 133
    return-object v2
.end method
