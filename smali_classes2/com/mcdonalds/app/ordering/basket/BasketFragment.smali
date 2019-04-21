.class public Lcom/mcdonalds/app/ordering/basket/BasketFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "BasketFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;


# static fields
.field private static final OBSERVED_URI:Landroid/net/Uri;

.field public static PARAMETER_PROBLEMATIC_OFFERS_CODES:Ljava/lang/String;

.field public static PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

.field public static PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;


# instance fields
.field private deliveryFee:D

.field private mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

.field private mBasketHasErrors:Z

.field private mBasketSignInHolder:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

.field mContentObserver:Landroid/database/ContentObserver;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

.field private mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

.field private mHeaderIsDelivery:Z

.field private mIsEditMode:Ljava/lang/Boolean;

.field private mIsRefreshing:Z

.field private mListView:Landroid/widget/ListView;

.field private mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

.field private mLoggedIn:Z

.field private mMenu:Landroid/view/Menu;

.field private mMenuEndingTextView:Landroid/widget/TextView;

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

.field private mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

.field final mOrderOffersComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field private mSkipBasketEditSaveFlow:Z

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

.field private mUpdatingProducts:Z

.field private mUpsellListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;"
        }
    .end annotation
.end field

.field private updatingStore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->OBSERVED_URI:Landroid/net/Uri;

    .line 158
    const-string v0, "product_error_code"

    sput-object v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    .line 159
    const-string v0, "problematic_products_codes"

    sput-object v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    .line 160
    const-string v0, "problematic_offers_codes"

    sput-object v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_OFFERS_CODES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 146
    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    .line 148
    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mSkipBasketEditSaveFlow:Z

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mNonProductOfferNames:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    .line 210
    new-instance v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$2;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 674
    new-instance v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$8;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$8;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderOffersComparator:Ljava/util/Comparator;

    .line 1082
    new-instance v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$15;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$15;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUpsellListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 2090
    new-instance v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$17;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$17;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mTotalizeListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUpdatingProducts:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUpdatingProducts:Z

    return p1
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v1, "access$100"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->OBSERVED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateOffers()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->hideProgress()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->processOffers(Lcom/mcdonalds/sdk/modules/models/Order;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->deleteOrder()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$1600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

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

    .line 113
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updatingStore:Z

    return p1
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/ordering/basket/BasketFragment;D)D
    .locals 7
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    .param p1, "x1"    # D

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->deliveryFee:D

    return-wide p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->retrieveStoreInfoAndDeliveryFee()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$600"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setDeliveryHeader(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refreshRecipeDataIfNecessary()V

    return-void
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketHasErrors:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.basket.BasketFragment"

    const-string v2, "access$902"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketHasErrors:Z

    return p1
.end method

.method private buildCustomizationString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;
    .locals 11
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v10, 0x0

    const-string v7, "buildCustomizationString"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2001
    .local v4, "result":Ljava/lang/StringBuilder;
    const-string v5, ", "

    .line 2003
    .local v5, "separator":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v2

    .line 2004
    .local v2, "hideSingleChoice":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 2005
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2009
    :cond_1
    invoke-static {v0}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    .line 2011
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v3, :cond_0

    .line 2012
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2015
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 2016
    .local v6, "subChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v6}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 2017
    .local v1, "choiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_2

    .line 2018
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2026
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "choiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "subChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v10, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_1
    return-object v7

    :cond_4
    const-string v7, ""

    goto :goto_1
.end method

.method private checkDayPartAndPreparePayment()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "checkDayPartAndPreparePayment"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 1000
    .local v1, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isDelivery()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/Order;->checkDayPart(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getEnabledDayParts()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getEnabledDayParts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 1004
    const v7, 0x7f0903af

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v7, "\n\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getEnabledDayParts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1008
    .local v2, "dayPart":I
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isDelivery()Z

    move-result v7

    invoke-virtual {v1, v2, v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendarItem(IZ)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v5

    .line 1009
    .local v5, "orderCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    if-eqz v5, :cond_0

    .line 1010
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1011
    .local v4, "fromTime":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1012
    .local v6, "toTime":Ljava/lang/String;
    const v7, 0x7f090814

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    aput-object v6, v9, v10

    invoke-virtual {p0, v7, v9}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1017
    .end local v2    # "dayPart":I
    .end local v4    # "fromTime":Ljava/lang/String;
    .end local v5    # "orderCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v6    # "toTime":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 1018
    .restart local v5    # "orderCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getEnabledDayParts()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getEnabledDayParts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1019
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 1020
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getEnabledDayParts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1021
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isDelivery()Z

    move-result v8

    .line 1019
    invoke-virtual {v1, v7, v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendarItem(IZ)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v5

    .line 1025
    :cond_2
    if-eqz v5, :cond_5

    .line 1026
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1027
    .restart local v4    # "fromTime":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1028
    .restart local v6    # "toTime":Ljava/lang/String;
    const v7, 0x7f0903b0

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v4, v8, v11

    aput-object v6, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    .end local v4    # "fromTime":Ljava/lang/String;
    .end local v5    # "orderCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v6    # "toTime":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1038
    .local v3, "dayPartWarnMsg":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.showInvalidDayPartWarningWithoutOpeningTimes"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1039
    const v7, 0x7f090a10

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1042
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/app/ordering/basket/BasketFragment$14;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$14;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-static {v7, v3, v8}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidCurrentDayPart(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1051
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "dayPartWarnMsg":Ljava/lang/String;
    :goto_1
    return-void

    .line 1031
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "orderCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    :cond_5
    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->preparePayment(Z)V

    goto :goto_1

    .line 1050
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "orderCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    :cond_6
    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->preparePayment(Z)V

    goto :goto_1
.end method

.method private checkDisplaySizeSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 9
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "checkDisplaySizeSelection"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1614
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 1615
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 1616
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 1617
    .local v4, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setProductId(I)V

    .line 1618
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setStoreId(I)V

    .line 1619
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1621
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/mcdonalds/sdk/services/data/repository/StoreProductCategoryRepository;->getCategoryByStoreProduct(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v1

    .line 1624
    .local v1, "category":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    .line 1625
    .local v0, "c":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->getDisplaySizeSelection()I

    move-result v8

    if-eqz v8, :cond_0

    .line 1631
    .end local v0    # "c":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    .end local v1    # "category":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method private createBasketItems()Ljava/util/List;
    .locals 9
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
    const/4 v8, 0x0

    const-string v6, "createBasketItems"

    invoke-static {p0, v6, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v6, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return-object v1

    .line 1322
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1323
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1324
    .local v5, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-direct {p0, v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->createProductItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1328
    .end local v5    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mNonProductOfferNames:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1330
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1333
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v6, :cond_3

    .line 1334
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1339
    .local v3, "offerListBeforeChange":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1341
    .local v2, "offerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 1342
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 1343
    .local v4, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    if-eqz v3, :cond_4

    .line 1344
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-direct {p0, v4, v6}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->createOfferItems(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1341
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1336
    .end local v0    # "a":I
    .end local v2    # "offerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    .end local v3    # "offerListBeforeChange":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    .end local v4    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "offerListBeforeChange":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    goto :goto_2

    .line 1346
    .restart local v0    # "a":I
    .restart local v2    # "offerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    .restart local v4    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_4
    invoke-direct {p0, v4, v8}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->createOfferItems(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1351
    .end local v0    # "a":I
    .end local v2    # "offerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    .end local v3    # "offerListBeforeChange":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    .end local v4    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->hasDeliveryFeeOffer()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mNonProductOfferNames:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1352
    :cond_6
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->createSubtotalItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private createMultiplePODsUnavailableMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "pods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "createMultiplePODsUnavailableMessage"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1671
    invoke-static {p1}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getRemainingPODs(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1672
    .local v1, "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getPODDisplayName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    .local v0, "name":Ljava/lang/String;
    const v2, 0x7f090403

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createOfferItems(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/util/List;
    .locals 22
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .param p2, "orderOfferBeforeChange"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/basket/BasketListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v18, "createOfferItems"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    const/16 v20, 0x1

    aput-object p2, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1717
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1719
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v18

    sget-object v19, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1876
    :cond_0
    :goto_0
    return-object v11

    .line 1723
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_12

    .line 1724
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_0

    .line 1726
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1727
    .local v14, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    if-nez v4, :cond_b

    const/4 v9, 0x1

    .line 1728
    .local v9, "isHeader":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_c

    const/4 v8, 0x1

    .line 1730
    .local v8, "isFooter":Z
    :goto_3
    const/4 v13, 0x0

    .line 1732
    .local v13, "offerErrorCode":I
    new-instance v12, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-direct {v12}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;-><init>()V

    .line 1733
    .local v12, "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setBasketItem(Ljava/lang/Object;)V

    .line 1735
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1736
    .local v16, "productId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsOutOfStock()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1738
    const/16 v13, -0x40c

    .line 1739
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOutOfStock(Z)V

    .line 1740
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 1744
    :cond_2
    if-eqz p2, :cond_3

    .line 1745
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 1746
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 1748
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getTotalValue(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Ljava/lang/Double;

    move-result-object v15

    .line 1750
    .local v15, "previousOfferProductValue":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getTotalValue(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1751
    const/16 v13, -0x178b

    .line 1752
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferPriceChanged(Z)V

    .line 1756
    .end local v15    # "previousOfferProductValue":Ljava/lang/Double;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v18

    if-nez v18, :cond_d

    const/4 v7, 0x1

    .line 1757
    .local v7, "isDeliveryOnly":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setIsOfferDelivery(Z)V

    .line 1759
    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1760
    const/16 v13, -0x1f42

    .line 1763
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v18

    if-nez v18, :cond_e

    const/4 v10, 0x1

    .line 1764
    .local v10, "isPickUpOnly":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferIsPickup(Z)V

    .line 1766
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1767
    const/16 v13, -0x1f43

    .line 1771
    :cond_5
    if-nez v9, :cond_f

    const/16 v18, 0x1

    :goto_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTopPaddingHidden(Ljava/lang/Boolean;)V

    .line 1773
    if-eqz v9, :cond_10

    .line 1775
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    .line 1778
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderIconHidden(Ljava/lang/Boolean;)V

    .line 1781
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderText(Ljava/lang/String;)V

    .line 1787
    :goto_7
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 1789
    if-eqz v8, :cond_11

    .line 1791
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    .line 1794
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/util/OrderOfferUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setEnergyTotal(Ljava/lang/String;)V

    .line 1795
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/Order;->getOfferTotalValue()D

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceTotal(Ljava/lang/String;)V

    .line 1801
    :goto_8
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v17

    .line 1802
    .local v17, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->hasNonSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1803
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->buildCustomizationString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderDetailsText(Ljava/lang/String;)V

    .line 1807
    :cond_6
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 1810
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateItemData(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    .line 1814
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    .line 1815
    .local v5, "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v5, :cond_7

    .line 1816
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setIconImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 1819
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsNotAvailable()Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 1820
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isOfferAvailable(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z

    move-result v18

    if-eqz v18, :cond_9

    if-eqz v13, :cond_a

    .line 1823
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 1824
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferUnavailable(Z)V

    .line 1826
    if-eqz v13, :cond_a

    .line 1827
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 1831
    :cond_a
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1724
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1727
    .end local v5    # "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v7    # "isDeliveryOnly":Z
    .end local v8    # "isFooter":Z
    .end local v9    # "isHeader":Z
    .end local v10    # "isPickUpOnly":Z
    .end local v12    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v13    # "offerErrorCode":I
    .end local v16    # "productId":Ljava/lang/Integer;
    .end local v17    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1728
    .restart local v9    # "isHeader":Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1756
    .restart local v8    # "isFooter":Z
    .restart local v12    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .restart local v13    # "offerErrorCode":I
    .restart local v16    # "productId":Ljava/lang/Integer;
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1763
    .restart local v7    # "isDeliveryOnly":Z
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 1771
    .restart local v10    # "isPickUpOnly":Z
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 1783
    :cond_10
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 1798
    :cond_11
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 1835
    .end local v4    # "i":I
    .end local v7    # "isDeliveryOnly":Z
    .end local v8    # "isFooter":Z
    .end local v9    # "isHeader":Z
    .end local v10    # "isPickUpOnly":Z
    .end local v12    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v13    # "offerErrorCode":I
    .end local v14    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .end local v16    # "productId":Ljava/lang/Integer;
    :cond_12
    new-instance v12, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-direct {v12}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;-><init>()V

    .line 1837
    .restart local v12    # "newItem":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setBasketItem(Ljava/lang/Object;)V

    .line 1839
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferIsNonProduct(Z)V

    .line 1841
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTopPaddingHidden(Ljava/lang/Boolean;)V

    .line 1842
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    .line 1844
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderIconHidden(Ljava/lang/Boolean;)V

    .line 1847
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderText(Ljava/lang/String;)V

    .line 1850
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 1853
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 1858
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    .line 1859
    .local v6, "imgInfo":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 1860
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSmallImagePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 1862
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemName(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v12, v6}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setIconImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 1867
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    .line 1869
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceTotal(Ljava/lang/String;)V

    .line 1871
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private createProductItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;
    .locals 48
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
    const-string v44, "createProductItems"

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1360
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    .local v27, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-nez v44, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    .line 1363
    .local v40, "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :goto_0
    const/16 v36, 0x1

    .line 1364
    .local v36, "productErrorCode":I
    const/16 v16, 0x0

    .line 1366
    .local v16, "hasError":Z
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v18

    move/from16 v1, v44

    if-ge v0, v1, :cond_2

    .line 1367
    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getSubProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v37

    .line 1368
    .local v37, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    move-object/from16 v45, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/OrderUtils;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 1366
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1361
    .end local v16    # "hasError":Z
    .end local v18    # "i":I
    .end local v36    # "productErrorCode":I
    .end local v37    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v40    # "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v44

    if-nez v44, :cond_1

    const/16 v44, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)Ljava/util/List;

    move-result-object v40

    goto :goto_0

    :cond_1
    const/16 v44, 0x0

    goto :goto_2

    .line 1371
    .restart local v16    # "hasError":Z
    .restart local v18    # "i":I
    .restart local v36    # "productErrorCode":I
    .restart local v40    # "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v44

    if-eqz v44, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v44

    if-eqz v44, :cond_3

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProductValidationErrorCode(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v41

    .line 1373
    .local v41, "validationErrorCode":I
    const/16 v44, 0x1

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_3

    .line 1374
    const/16 v16, 0x1

    .line 1375
    move/from16 v36, v41

    .line 1378
    .end local v41    # "validationErrorCode":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v44

    if-eqz v44, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isUnavailableProductItem(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v44

    if-eqz v44, :cond_4

    .line 1379
    const/16 v16, 0x1

    .line 1380
    const/16 v36, -0x3ff

    .line 1383
    :cond_4
    const/16 v21, 0x0

    .line 1384
    .local v21, "ingredientsSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v44

    if-eqz v44, :cond_5

    .line 1385
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v21

    .line 1388
    :cond_5
    const/16 v18, 0x0

    :goto_3
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v18

    move/from16 v1, v44

    if-ge v0, v1, :cond_2b

    .line 1390
    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getSubProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v37

    .line 1391
    .restart local v37    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static/range {v37 .. v37}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v9

    .line 1392
    .local v9, "choiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v9, :cond_6

    .line 1393
    move-object/from16 v37, v9

    .line 1395
    :cond_6
    const/16 v44, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setOutOfStock(Z)V

    .line 1397
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-eqz v44, :cond_c

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v44

    if-eqz v44, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isUnavailableProductItem(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v44

    if-eqz v44, :cond_7

    .line 1400
    const/16 v16, 0x1

    .line 1403
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v44

    if-eqz v44, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v44

    if-eqz v44, :cond_a

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProductValidationErrorCode(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v44

    const/16 v45, -0x40c

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_8

    .line 1405
    const/16 v44, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setOutOfStock(Z)V

    .line 1406
    const/16 v16, 0x1

    .line 1410
    :cond_8
    invoke-static/range {v37 .. v37}, Lcom/mcdonalds/app/util/OrderProductUtils;->getAllChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v12

    .line 1411
    .local v12, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_9
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_a

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1412
    .local v11, "component":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProductValidationErrorCode(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v45

    const/16 v46, -0x40c

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_9

    .line 1415
    const/16 v44, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setOutOfStock(Z)V

    .line 1416
    const/16 v16, 0x1

    .line 1422
    .end local v11    # "component":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v12    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_a
    move/from16 v7, v18

    .line 1423
    .local v7, "choiceIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v44

    if-nez v44, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_b

    .line 1424
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v44

    sub-int v7, v7, v44

    .line 1426
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v44

    if-le v0, v7, :cond_c

    .line 1427
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1428
    .local v10, "choiceSubProduct":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v8

    .line 1429
    .local v8, "choiceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static {v8}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v44

    if-nez v44, :cond_c

    move-object/from16 v0, v37

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_c

    .line 1430
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v44

    if-eqz v44, :cond_c

    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v44

    if-eqz v44, :cond_c

    .line 1388
    .end local v8    # "choiceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v10    # "choiceSubProduct":Lcom/mcdonalds/sdk/modules/models/Choice;
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 1437
    .end local v7    # "choiceIndex":I
    :cond_c
    const/16 v44, -0x178b

    move/from16 v0, v36

    move/from16 v1, v44

    if-ne v0, v1, :cond_d

    .line 1438
    const/16 v16, 0x1

    .line 1441
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    if-eqz v44, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v44

    if-nez v44, :cond_f

    const/16 v44, 0x1

    move/from16 v0, v36

    move/from16 v1, v44

    if-ne v0, v1, :cond_f

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v31

    .line 1443
    .local v31, "oldPriceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v30

    .line 1444
    .local v30, "newPriceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_e
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_f

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1445
    .local v34, "oldProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_e

    .line 1446
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v32

    .line 1447
    .local v32, "oldPrice":D
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v28

    .line 1448
    .local v28, "newPrice":D
    cmpl-double v45, v32, v28

    if-eqz v45, :cond_e

    .line 1449
    const/16 v16, 0x1

    .line 1450
    const/16 v36, -0x178b

    .line 1457
    .end local v28    # "newPrice":D
    .end local v30    # "newPriceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .end local v31    # "oldPriceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .end local v32    # "oldPrice":D
    .end local v34    # "oldProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_f
    if-nez v18, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-eqz v44, :cond_1e

    const/16 v24, 0x1

    .line 1458
    .local v24, "isHeader":Z
    :goto_5
    if-nez v18, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-nez v44, :cond_1f

    const/16 v22, 0x1

    .line 1459
    .local v22, "isDivider":Z
    :goto_6
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v44

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_20

    const/16 v23, 0x1

    .line 1461
    .local v23, "isFooter":Z
    :goto_7
    const/16 v25, 0x0

    .line 1463
    .local v25, "isUnavailable":Z
    new-instance v26, Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-direct/range {v26 .. v26}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;-><init>()V

    .line 1464
    .local v26, "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setBasketItem(Ljava/lang/Object;)V

    .line 1466
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v44

    if-eqz v44, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v44

    if-eqz v44, :cond_21

    :cond_10
    if-eqz v24, :cond_21

    .line 1467
    const/16 v25, 0x1

    .line 1468
    const/16 v44, -0x3ff

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 1483
    :cond_11
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Product;->getTimeRestriction()Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTimeRestriction(Lcom/mcdonalds/sdk/modules/models/TimeRestriction;)V

    .line 1484
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Product;->getTimeRestrictions()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTimeRestrictions(Ljava/util/List;)V

    .line 1487
    if-nez v24, :cond_24

    const/16 v44, 0x1

    :goto_9
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setTopPaddingHidden(Ljava/lang/Boolean;)V

    .line 1489
    if-eqz v24, :cond_25

    .line 1491
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    .line 1494
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderIconHidden(Ljava/lang/Boolean;)V

    .line 1497
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderText(Ljava/lang/String;)V

    .line 1499
    if-eqz v16, :cond_13

    .line 1500
    invoke-virtual/range {v37 .. v37}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v44

    if-nez v44, :cond_12

    .line 1501
    const/16 v44, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMealHeaderNonErrorWarningItem(Z)V

    .line 1503
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 1509
    :cond_13
    :goto_a
    if-nez v22, :cond_26

    const/16 v44, 0x1

    :goto_b
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 1512
    if-eqz v23, :cond_28

    .line 1515
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    .line 1518
    if-nez v25, :cond_27

    .line 1519
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/util/OrderProductUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setEnergyTotal(Ljava/lang/String;)V

    .line 1520
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v38

    .line 1521
    .local v38, "productPrice":D
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v44

    move-object/from16 v0, v44

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceTotal(Ljava/lang/String;)V

    .line 1525
    .end local v38    # "productPrice":D
    :goto_c
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPositionInMeal(I)V

    .line 1531
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->hasNonSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v44

    if-eqz v44, :cond_14

    .line 1532
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->buildCustomizationString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderDetailsText(Ljava/lang/String;)V

    .line 1535
    :cond_14
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 1536
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1540
    .local v17, "hasMeal":Ljava/lang/Boolean;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v44

    if-eqz v44, :cond_29

    .line 1541
    const-string v35, "Delivery"

    .line 1545
    .local v35, "pod":Ljava/lang/String;
    :goto_e
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v44

    const-string v45, "interface.ordering.filterDimenPod"

    invoke-virtual/range {v44 .. v45}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v15

    .line 1547
    .local v15, "filterDimenPod":Z
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-nez v44, :cond_1a

    if-nez v25, :cond_1a

    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->checkDisplaySizeSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v44

    if-eqz v44, :cond_1a

    .line 1548
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Product;->getDimensions()Ljava/util/List;

    move-result-object v14

    .line 1549
    .local v14, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    if-eqz v14, :cond_18

    .line 1550
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_15
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_18

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    .line 1552
    .local v13, "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    if-eqz v15, :cond_16

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v45, v0

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->populateProductWithStoreSpecificData(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 1556
    :cond_16
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v45

    sget-object v46, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Meal:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_15

    if-eqz v15, :cond_17

    .line 1557
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v45

    .line 1558
    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_15

    .line 1560
    :cond_17
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1566
    .end local v13    # "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    :cond_18
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-eqz v44, :cond_1a

    if-nez v24, :cond_19

    if-eqz v22, :cond_1a

    .line 1567
    :cond_19
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMakeItAMealHidden(Ljava/lang/Boolean;)V

    .line 1572
    .end local v14    # "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    :cond_1a
    if-nez v18, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-nez v44, :cond_2a

    const/16 v20, 0x1

    .line 1573
    .local v20, "includeQuantity":Z
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v37

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateItemData(Lcom/mcdonalds/app/ordering/basket/BasketListItem;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    .line 1575
    sub-int v7, v18, v21

    .line 1576
    .restart local v7    # "choiceIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-eqz v44, :cond_1b

    if-nez v24, :cond_1b

    .line 1577
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v44

    if-eqz v44, :cond_1b

    .line 1578
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v44

    if-le v0, v7, :cond_1b

    if-ltz v7, :cond_1b

    .line 1581
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1582
    .local v6, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static/range {v37 .. v37}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v38

    .line 1583
    .restart local v38    # "productPrice":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductBasePrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v4

    .line 1584
    .local v4, "basePrice":D
    sub-double v42, v38, v4

    .line 1585
    .local v42, "uplift":D
    move-object/from16 v0, v26

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemUplift(D)V

    .line 1590
    .end local v4    # "basePrice":D
    .end local v6    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v38    # "productPrice":D
    .end local v42    # "uplift":D
    :cond_1b
    move-object/from16 v19, v37

    .line 1591
    .local v19, "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, v37

    instance-of v0, v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    move/from16 v44, v0

    if-eqz v44, :cond_1c

    move-object/from16 v44, v37

    .line 1592
    check-cast v44, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual/range {v44 .. v44}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    .line 1594
    :cond_1c
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setIconImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 1596
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v44

    if-nez v44, :cond_1d

    .line 1597
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->validatePODs(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 1600
    :cond_1d
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1457
    .end local v7    # "choiceIndex":I
    .end local v15    # "filterDimenPod":Z
    .end local v17    # "hasMeal":Ljava/lang/Boolean;
    .end local v19    # "imageProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v20    # "includeQuantity":Z
    .end local v22    # "isDivider":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v25    # "isUnavailable":Z
    .end local v26    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v35    # "pod":Ljava/lang/String;
    :cond_1e
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 1458
    .restart local v24    # "isHeader":Z
    :cond_1f
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1459
    .restart local v22    # "isDivider":Z
    :cond_20
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 1469
    .restart local v23    # "isFooter":Z
    .restart local v25    # "isUnavailable":Z
    .restart local v26    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-eqz v44, :cond_22

    if-eqz v16, :cond_22

    invoke-virtual/range {v37 .. v37}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v44

    if-eqz v44, :cond_22

    .line 1470
    const/16 v44, -0x3ff

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 1471
    const/16 v44, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setUnavailable(Z)V

    .line 1472
    const/16 v44, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 1473
    const/16 v44, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMealErrorItem(Z)V

    goto/16 :goto_8

    .line 1474
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-eqz v44, :cond_23

    if-eqz v16, :cond_23

    invoke-virtual/range {v37 .. v37}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isOutOfStock()Z

    move-result v44

    if-eqz v44, :cond_23

    .line 1475
    const/16 v44, -0x40c

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    .line 1476
    const/16 v44, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOutOfStock(Z)V

    .line 1477
    const/16 v44, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 1478
    const/16 v44, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setMealErrorItem(Z)V

    goto/16 :goto_8

    .line 1479
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v44

    if-nez v44, :cond_11

    if-eqz v16, :cond_11

    .line 1480
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V

    goto/16 :goto_8

    .line 1487
    :cond_24
    const/16 v44, 0x0

    goto/16 :goto_9

    .line 1506
    :cond_25
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderHidden(Ljava/lang/Boolean;)V

    goto/16 :goto_a

    .line 1509
    :cond_26
    const/16 v44, 0x0

    goto/16 :goto_b

    .line 1523
    :cond_27
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v44

    const-wide/16 v46, 0x0

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceTotal(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1528
    :cond_28
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setFooterHidden(Ljava/lang/Boolean;)V

    goto/16 :goto_d

    .line 1543
    .restart local v17    # "hasMeal":Ljava/lang/Boolean;
    :cond_29
    const-string v35, "Pickup"

    .restart local v35    # "pod":Ljava/lang/String;
    goto/16 :goto_e

    .line 1572
    .restart local v15    # "filterDimenPod":Z
    :cond_2a
    const/16 v20, 0x0

    goto/16 :goto_f

    .line 1603
    .end local v9    # "choiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v15    # "filterDimenPod":Z
    .end local v17    # "hasMeal":Ljava/lang/Boolean;
    .end local v22    # "isDivider":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v25    # "isUnavailable":Z
    .end local v26    # "item":Lcom/mcdonalds/app/ordering/basket/BasketListItem;
    .end local v35    # "pod":Ljava/lang/String;
    .end local v37    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2b
    return-object v27
.end method

.method private createSubtotalItems()Ljava/util/List;
    .locals 12
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
    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v5, "createSubtotalItems"

    const/4 v8, 0x0

    invoke-static {p0, v5, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1881
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1883
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/basket/BasketListItem;>;"
    new-instance v0, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;-><init>()V

    .line 1884
    .local v0, "item":Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v6

    .line 1886
    .local v6, "total":D
    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    if-eqz v5, :cond_4

    .line 1887
    invoke-virtual {v0, v11}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryHidden(Z)V

    .line 1888
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 1889
    iget-wide v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->deliveryFee:D

    invoke-virtual {v0, v8, v9}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFee(D)V

    .line 1890
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->hasDeliveryFeeOffer()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1891
    invoke-virtual {v0, v11}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFeeOfferHidden(Z)V

    .line 1892
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryChargeOfferName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setOfferName(Ljava/lang/String;)V

    .line 1893
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDiscountedDeliveryCharge()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFeeDiscount(D)V

    .line 1894
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDiscountedDeliveryCharge()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 1911
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v8}, Lcom/mcdonalds/app/ordering/OrderUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrder(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setEnergyTotal(Ljava/lang/String;)V

    .line 1912
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setPriceTotal(Ljava/lang/String;)V

    .line 1915
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1918
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 1919
    .local v1, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v2

    .line 1920
    .local v2, "restaurants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1922
    .local v4, "storeId":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 1923
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1925
    :cond_0
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setHideOfferUnavailableContainer(Z)V

    .line 1930
    .end local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v2    # "restaurants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "storeId":Ljava/lang/Integer;
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mNonProductOfferNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1932
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setIsNonProductOfferAvailable(Z)V

    .line 1933
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mNonProductOfferNames:Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setNonProductOfferNames(Ljava/util/List;)V

    .line 1936
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    return-object v3

    .line 1897
    :cond_3
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFeeOfferHidden(Z)V

    .line 1898
    iget-wide v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->deliveryFee:D

    add-double/2addr v6, v8

    goto :goto_0

    .line 1904
    :cond_4
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryFeeOfferHidden(Z)V

    .line 1905
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDeliveryHidden(Z)V

    .line 1906
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setDividerHidden(Ljava/lang/Boolean;)V

    .line 1907
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/ordering/basket/SubtotalBasketListItem;->setShowTotal(Z)V

    goto/16 :goto_0
.end method

.method private deleteOrder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "deleteOrder"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 1193
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->deleteCurrentOrder()V

    .line 1196
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1198
    return-void
.end method

.method private getSubProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v1, "getSubProduct"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2050
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Product:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    if-eq v1, v2, :cond_0

    .line 2051
    move-object v0, p1

    .line 2055
    .local v0, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_0
    return-object v0

    .line 2053
    .end local v0    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .restart local v0    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_0
.end method

.method private hasNonSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 7
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "hasNonSingleChoiceItems"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2030
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v0

    .line 2032
    .local v0, "hideSingleChoice":Z
    if-nez v0, :cond_0

    .line 2043
    :goto_0
    return v3

    .line 2035
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 2036
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2037
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 2038
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .end local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_2
    move v3, v4

    .line 2043
    goto :goto_0
.end method

.method private hideProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "hideProgress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refresh()V

    .line 641
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->notifyDataSetChanged()V

    .line 642
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setNeedsUpdatedRecipes(Z)V

    .line 644
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 646
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsRefreshing:Z

    .line 647
    return-void
.end method

.method private isDelivery()Z
    .locals 2

    .prologue
    const-string v0, "isDelivery"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    return v0
.end method

.method private isOfferAvailable(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z
    .locals 7
    .param p1, "offerOrder"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "isOfferAvailable"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 1302
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1303
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1305
    .local v2, "storeId":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v1

    .line 1307
    .local v1, "restaurants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1312
    .end local v1    # "restaurants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "storeId":Ljava/lang/Integer;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isShowUpsell()Z
    .locals 2

    .prologue
    const-string v0, "isShowUpsell"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.delivery.showUpsell"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 1103
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.ordering.showUpsell"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isUnavailableProductItem(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v3, "isUnavailableProductItem"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1699
    const/4 v0, 0x0

    .line 1700
    .local v0, "retValue":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1701
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;

    move-result-object v2

    .line 1702
    .local v2, "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1703
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1704
    .local v1, "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1705
    const/4 v0, 0x1

    goto :goto_0

    .line 1710
    .end local v1    # "subProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "subProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1712
    :cond_2
    return v0
.end method

.method private processOffers(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 7
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const-string v4, "processOffers"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 658
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 659
    .local v3, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->isArchived()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpired()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 660
    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->addOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z

    goto :goto_0

    .line 665
    .end local v3    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderOffersComparator:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 668
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 669
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 670
    .local v2, "o":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->addOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z

    goto :goto_1

    .line 672
    .end local v2    # "o":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_2
    return-void
.end method

.method private refreshRecipeDataIfNecessary()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v0, "refreshRecipeDataIfNecessary"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsRefreshing:Z

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->needsUpdatedRecipes()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 502
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 504
    :cond_3
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsRefreshing:Z

    .line 506
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 507
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 508
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/OrderUtils;->clearTotalizeResponses(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 513
    :cond_5
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 516
    :cond_6
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090681

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 517
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUpdatingProducts:Z

    .line 520
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCatalogUpdated(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_0

    .line 554
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refresh()V

    goto/16 :goto_0
.end method

.method private retrieveStoreInfoAndDeliveryFee()V
    .locals 19

    .prologue
    const-string v11, "retrieveStoreInfoAndDeliveryFee"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v10

    .line 353
    .local v10, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenuEndingTextView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMenuTypes()Ljava/util/List;

    move-result-object v8

    .line 356
    .local v8, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    if-eqz v8, :cond_1

    .line 358
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    const-string v14, "interface.dayparts.daypartEndingAlertTime"

    .line 359
    invoke-virtual {v11, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 361
    .local v4, "alertTimeString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 363
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 364
    .local v2, "alertTime":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMenuTypes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 366
    .local v7, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    if-eqz v10, :cond_0

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isDelivery()Z

    move-result v14

    invoke-virtual {v10, v7, v14}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuEndingTime(Lcom/mcdonalds/sdk/modules/models/MenuType;Z)J

    move-result-wide v12

    .line 368
    .local v12, "timeLeftInMenu":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_0

    cmp-long v14, v12, v2

    if-gtz v14, :cond_0

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenuEndingTextView:Landroid/widget/TextView;

    const v15, 0x7f0903e1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 371
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenuEndingTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 380
    .end local v2    # "alertTime":J
    .end local v4    # "alertTimeString":Ljava/lang/String;
    .end local v7    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    .end local v12    # "timeLeftInMenu":J
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    if-nez v11, :cond_5

    .line 383
    if-eqz v10, :cond_4

    .line 385
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 386
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, "name":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0905ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<br/><b>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</b>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    .end local v9    # "name":Ljava/lang/String;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refreshRecipeDataIfNecessary()V

    .line 444
    :cond_2
    :goto_3
    return-void

    .line 387
    :cond_3
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 390
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0905ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<br/><b>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090744

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</b>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 396
    :cond_5
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    .line 399
    .local v5, "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getDeliveryFee()Landroid/widget/TextView;

    move-result-object v11

    const v14, 0x7f09080a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 404
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    const-string v14, "interface.showEstimatedDeliveryTimeInMinutes"

    .line 405
    invoke-virtual {v11, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 407
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getEdtString()Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "edt":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setDeliveryHeader(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V

    .line 412
    .end local v6    # "edt":Ljava/lang/String;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refreshRecipeDataIfNecessary()V

    goto/16 :goto_3

    .line 410
    :cond_6
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/util/UIUtils;->formatScheduledDeliveryTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setDeliveryHeader(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V

    goto :goto_4

    .line 416
    :cond_7
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v11

    const-string v14, "Retrieving delivery information"

    invoke-static {v11, v14}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v14

    .line 419
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-object/from16 v16, v0

    .line 420
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v16

    new-instance v17, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 418
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v14, v15, v0, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_3
.end method

.method private setAsapDeliveryDate(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    .locals 7
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "setAsapDeliveryDate"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    const v3, 0x7f0902ed

    new-array v4, v5, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "time":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 479
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNowInStoreLocalTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    .line 480
    .local v1, "nowInStoreTime":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 483
    .local v0, "edtInStoreTime":Ljava/util/Date;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTimeInMinutes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 489
    .end local v0    # "edtInStoreTime":Ljava/util/Date;
    .end local v1    # "nowInStoreTime":Ljava/util/Date;
    :cond_0
    return-object v2
.end method

.method private setDeliveryHeader(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V
    .locals 9
    .param p1, "customerAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "deliveryTime"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "setDeliveryHeader"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    if-eqz p1, :cond_0

    .line 449
    const-string v1, " "

    .line 450
    .local v1, "headerString":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 452
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 453
    .local v0, "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setAsapDeliveryDate(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "time":Ljava/lang/String;
    const v3, 0x7f090344

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .end local v0    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v2    # "time":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->setDeliveryHeaderText(Landroid/text/Spanned;)V

    .line 474
    .end local v1    # "headerString":Ljava/lang/String;
    :cond_0
    return-void

    .line 457
    .restart local v0    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .restart local v1    # "headerString":Ljava/lang/String;
    :cond_1
    const v3, 0x7f090343

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 469
    .end local v0    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_2
    const v3, 0x7f090341

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 470
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 469
    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setErrorFlag(ILcom/mcdonalds/app/ordering/basket/BasketListItem;)V
    .locals 7
    .param p1, "productErrorCode"    # I
    .param p2, "newItem"    # Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "setErrorFlag"

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v3

    aput-object p2, v4, v2

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    invoke-virtual {p2, v2}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHasError(Z)V

    .line 1681
    const/16 v1, -0x178b

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setPriceChanged(Z)V

    .line 1683
    const/16 v1, -0x40c

    if-ne p1, v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOutOfStock(Z)V

    .line 1684
    const/16 v1, -0x1f42

    if-eq p1, v1, :cond_0

    const/16 v1, -0x1f43

    if-ne p1, v1, :cond_1

    .line 1686
    :cond_0
    invoke-virtual {p2, p1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setOfferPODErrorCode(I)V

    .line 1689
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v4, -0x438

    .line 1690
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, -0x3ff

    .line 1691
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, -0x40b

    .line 1692
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1689
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1694
    .local v0, "unavailableErrorCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setUnavailable(Z)V

    .line 1695
    return-void

    .end local v0    # "unavailableErrorCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    move v1, v3

    .line 1681
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1683
    goto :goto_1
.end method

.method private shouldShowUpsell()Z
    .locals 3

    .prologue
    const-string v1, "shouldShowUpsell"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.ordering.disablePickupUpsell"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 1096
    .local v0, "disablePickupUpsell":Z
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isShowUpsell()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->showUpsell()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUpsell()V
    .locals 2

    .prologue
    const-string v0, "showUpsell"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0903ed

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 1079
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUpsellListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getUpsellItems(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1080
    return-void
.end method

.method private subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x1

    const-string v0, "subProducts"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1943
    invoke-direct {p0, p1, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private subProducts(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)Ljava/util/List;
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "includeSingleChoices"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "subProducts"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1946
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1947
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1948
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1949
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1950
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1955
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_2
    return-object v1
.end method

.method private updateBasketSignInHolder()V
    .locals 2

    .prologue
    const-string v0, "updateBasketSignInHolder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mLoggedIn:Z

    .line 315
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketSignInHolder:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mLoggedIn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->setVisible(Z)V

    .line 316
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFooter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "updateFooter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getWarningsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getDeleteOrderButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getAddToBasketButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1289
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.orderingDisclaimerInfo"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getWarningsContainer()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "basketView"

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->addDisclaimerTextView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;)V

    .line 1292
    :cond_0
    return-void

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getWarningsContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getDeleteOrderButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getAddToBasketButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHeader()V
    .locals 5

    .prologue
    const-string v2, "updateHeader"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1262
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1263
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 1264
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    .line 1265
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1266
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getStoreName()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0905ea

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

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

    .line 1271
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    return-void

    .line 1267
    .restart local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    .line 1959
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1961
    if-eqz p3, :cond_3

    .line 1962
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

    .line 1967
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1968
    invoke-static {p2}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemInstructions(Ljava/lang/String;)V

    .line 1972
    :cond_1
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->hasNonSingleChoiceItems(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1973
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->buildCustomizationString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setHeaderDetailsText(Ljava/lang/String;)V

    .line 1976
    :cond_2
    return-void

    .line 1964
    :cond_3
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setItemName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateOffers()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const-string v0, "updateOffers"

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v6

    .line 583
    .local v6, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    .line 585
    .local v7, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v6, :cond_0

    const-string v1, ""

    .line 586
    .local v1, "userName":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 635
    return-void

    .line 585
    .end local v1    # "userName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateProducts()V
    .locals 4

    .prologue
    const-string v0, "updateProducts"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketHasErrors:Z

    .line 562
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    new-instance v1, Lcom/mcdonalds/sdk/AsyncCounter;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-instance v3, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateProducts(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncCounter;)V

    .line 579
    return-void
.end method

.method private validatePODs(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/app/ordering/basket/BasketListItem;)V
    .locals 8
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "item"    # Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "validatePODs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1643
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v3

    .line 1644
    .local v3, "productPODs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getMainPODsLength()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1647
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 1649
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1650
    .local v2, "pod":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getPODDisplayName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1652
    .local v1, "name":Ljava/lang/String;
    const v4, 0x7f0903d3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1659
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "pod":Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v0}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->setUnavailablePODMessage(Ljava/lang/String;)V

    .line 1661
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void

    .line 1656
    :cond_1
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->createMultiplePODsUnavailableMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public closeEdit(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v1, "closeEdit"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    .line 737
    if-eqz p1, :cond_1

    .line 738
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 746
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f110549

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 747
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090175

    invoke-virtual {v1, v4, v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showLabelInsteadOfNavigateUp(ZLjava/lang/String;I)V

    .line 748
    return-void

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f110548

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 741
    .local v0, "menuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 742
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public editDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "editDone"

    invoke-static {p0, v0, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090175

    invoke-virtual {v0, v3, v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showLabelInsteadOfNavigateUp(ZLjava/lang/String;I)V

    .line 753
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mSkipBasketEditSaveFlow:Z

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 757
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->clear()V

    .line 758
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->createBasketItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->addAll(Ljava/util/Collection;)V

    .line 761
    :cond_0
    iput-object v4, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 763
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 764
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->setIsEditMode(Ljava/lang/Boolean;)V

    .line 765
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateFooter()V

    .line 768
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mLoggedIn:Z

    if-nez v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketSignInHolder:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->setVisible(Z)V

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 773
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 775
    :cond_2
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const v0, 0x7f09086a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f090869

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEditMode()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "isEditMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2059
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActionEdit(Ljava/lang/Object;)V
    .locals 8
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const-string v4, "onActionEdit"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v5, "/basket"

    .line 1133
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "On click"

    .line 1134
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "Edit"

    .line 1135
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 1136
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 1137
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v4, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 1139
    instance-of v4, p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v4, :cond_1

    .line 1141
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1142
    .local v1, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v5, 0x15

    move-object v4, p1

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1143
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Edit"

    invoke-static {v4, v5, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1145
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1148
    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v4

    const-string v5, "ARG_PRODUCT"

    invoke-virtual {v4, v5, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1149
    const-string v4, "IN_EDIT_MODE"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1150
    const-string v4, "arg_editing"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1153
    const-string v4, "ARG_ANALYTICS_PARENT_NAME"

    const v5, 0x7f09086b

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v5, "ARG_UNAVAILABLE_PRODUCT_CODES"

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1159
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1160
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1162
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;->REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1172
    .end local v1    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local p1    # "item":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1164
    .restart local p1    # "item":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v4, :cond_0

    .line 1166
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1167
    .restart local v1    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v4, 0x19

    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1168
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Edit"

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-class v4, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v5, "offer_detail"

    invoke-virtual {p0, v4, v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActionMakeItAMeal(Ljava/lang/Object;)V
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const-string v2, "onActionMakeItAMeal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    instance-of v2, p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v2, :cond_0

    .line 1178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1179
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "EVENT_NAME"

    const-string v3, "upgrade"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1181
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x15

    move-object v2, p1

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1182
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Make it a meal"

    invoke-static {v2, v3, v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Ljava/util/Map;)V

    .line 1185
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showLabelInsteadOfNavigateUp(ZLjava/lang/String;)V

    .line 1186
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 1187
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->onActionEdit(Ljava/lang/Object;)V

    .line 1189
    .end local v0    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onActionRemove(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onActionRemove"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    instance-of v0, p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v0, :cond_2

    .line 1111
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 1122
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mSkipBasketEditSaveFlow:Z

    if-eqz v0, :cond_1

    .line 1123
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 1126
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refresh()V

    .line 1127
    return-void

    .line 1117
    .restart local p1    # "item":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->removeOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateOrder()V

    .line 284
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 286
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 289
    :cond_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 295
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    .line 296
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    .line 298
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getContainer()Landroid/view/View;

    move-result-object v0

    .line 297
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketHasErrors:Z

    .line 307
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refreshStoreInfoAndDeliveryFee()V

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->totalize()V

    .line 311
    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 690
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 691
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 692
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v8, "onClick"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getAddToBasketButton()Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_0

    .line 813
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 814
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->saveChangesToBasket()V

    .line 920
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getDeleteOrderButton()Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_1

    .line 921
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f0901be

    .line 922
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f0900fa

    .line 923
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f090712

    new-instance v10, Lcom/mcdonalds/app/ordering/basket/BasketFragment$13;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$13;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    .line 924
    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 930
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090145

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const/4 v9, 0x1

    .line 931
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 932
    invoke-virtual {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 933
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 936
    :cond_1
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getPickupStoreView()Landroid/view/View;

    move-result-object v8

    if-eq p1, v8, :cond_2

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getDeliveryTimeView()Landroid/view/View;

    move-result-object v8

    if-ne p1, v8, :cond_3

    .line 937
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v8

    .line 938
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    .line 937
    invoke-static {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 939
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/models/Order;->setNeedsUpdatedRecipes(Z)V

    .line 940
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updatingStore:Z

    .line 941
    const-class v8, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/16 v9, 0x28

    invoke-virtual {p0, v8, v9}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->startActivityForResult(Ljava/lang/Class;I)V

    .line 943
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 944
    .local v2, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 945
    const-string v8, "EVENT_NAME"

    const-string v9, "addressmsd"

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    :goto_1
    new-instance v8, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 950
    invoke-virtual {v8, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v8

    .line 951
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 952
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v8, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v8, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 954
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v2    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    :goto_2
    return-void

    .line 816
    :cond_4
    iget-boolean v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketHasErrors:Z

    if-eqz v8, :cond_6

    .line 817
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 818
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v8, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    const/16 v9, -0x40b

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    sget-object v9, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 823
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v8, v9}, Lcom/mcdonalds/app/ordering/OrderUtils;->getErrorCount(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)I

    move-result v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalOrderCount()I

    move-result v9

    if-lt v8, v9, :cond_5

    .line 824
    const-class v8, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v9, "check_in_all_items_unavailable"

    const/16 v10, 0x31ba

    invoke-virtual {p0, v8, v9, v1, v10}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 826
    :cond_5
    const-class v8, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v9, "check_in_items_unavailable"

    const/16 v10, 0x31ba

    invoke-virtual {p0, v8, v9, v1, v10}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 829
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_6
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackCheckout(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 831
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 832
    .local v7, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    sget-object v9, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v10, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 833
    invoke-static {v7}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getProductFromBasket(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v10

    .line 834
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v10

    .line 832
    invoke-static {v9, v10}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_3

    .line 836
    .end local v7    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_7
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "interface.ordering.orderMaximumAmount"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v5

    .line 837
    .local v5, "orderMaximumAmount":I
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v8

    int-to-double v10, v5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_8

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 838
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f09043d

    .line 839
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 840
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090635

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 841
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0905d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/mcdonalds/app/ordering/basket/BasketFragment$9;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$9;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 847
    invoke-virtual {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 848
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 853
    :cond_8
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getMaxItemQuantity()I

    move-result v9

    if-lt v8, v9, :cond_9

    .line 854
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 855
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0907e8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 856
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0905d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/mcdonalds/app/ordering/basket/BasketFragment$10;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$10;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 862
    invoke-virtual {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 863
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 868
    :cond_9
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 869
    .local v6, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    const/4 v3, 0x0

    .line 871
    .local v3, "message":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->isOfferAvailable(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 872
    const v9, 0x7f0902df

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 879
    :cond_b
    :goto_4
    if-eqz v3, :cond_a

    .line 880
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 881
    invoke-virtual {v8, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 882
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0905d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/mcdonalds/app/ordering/basket/BasketFragment$11;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$11;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 888
    invoke-virtual {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 889
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 873
    :cond_c
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v9

    if-nez v9, :cond_d

    .line 874
    const v9, 0x7f0905c1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x7f0901c8

    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 875
    :cond_d
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v9

    if-nez v9, :cond_b

    .line 876
    const v9, 0x7f0905c1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x7f09062c

    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 895
    .end local v3    # "message":Ljava/lang/String;
    .end local v6    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_e
    const/4 v4, 0x0

    .line 896
    .local v4, "numOffersExcludeType10":I
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 897
    .restart local v6    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v9

    sget-object v10, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-eq v9, v10, :cond_f

    .line 898
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 901
    .end local v6    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_10
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/2addr v8, v4

    if-gtz v8, :cond_11

    .line 902
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f0903f8

    .line 903
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f09032f

    .line 904
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 905
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0905d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/mcdonalds/app/ordering/basket/BasketFragment$12;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$12;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 911
    invoke-virtual {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 912
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 916
    :cond_11
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->checkDayPartAndPreparePayment()V

    goto/16 :goto_0

    .line 947
    .end local v4    # "numOffersExcludeType10":I
    .end local v5    # "orderMaximumAmount":I
    .restart local v2    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_12
    const-string v8, "EVENT_NAME"

    const-string v9, "dining"

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->setHasOptionsMenu(Z)V

    .line 190
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    .line 191
    .local v0, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 192
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 194
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.ordering.skipBasketEditSaveFlow"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mSkipBasketEditSaveFlow:Z

    .line 195
    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mLoggedIn:Z

    .line 196
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updatingStore:Z

    .line 198
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->OBSERVED_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v1

    const-string v2, "com.mcdonalds.notification.ORDER_CHANGED_NOTIFICATION"

    new-instance v3, Lcom/mcdonalds/app/ordering/basket/BasketFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$1;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->addObserver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 208
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 703
    const v0, 0x7f120002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 704
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenu:Landroid/view/Menu;

    .line 705
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090175

    invoke-virtual {v1, v4, v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showLabelInsteadOfNavigateUp(ZLjava/lang/String;I)V

    .line 231
    const v1, 0x7f04008c

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    const v2, 0x7f040179

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    .line 234
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getPickupStoreView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1104f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    new-instance v1, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    const v2, 0x7f04005a

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    .line 238
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getDeliveryTimeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getPickupStoreView()Landroid/view/View;

    move-result-object v1

    const-string v2, "OrderDeliveryItemPressed"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getDeliveryTimeView()Landroid/view/View;

    move-result-object v1

    const-string v2, "OrderDeliveryItemPressed"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 243
    const v1, 0x7f11009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    .line 244
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 246
    new-instance v1, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {v1, v2, p0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/app/ordering/basket/BasketItemActionListener;Lcom/mcdonalds/sdk/modules/models/Order;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    .line 248
    new-instance v1, Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    const v2, 0x7f110258

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    .line 249
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getAddToBasketButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getDeleteOrderButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v1, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    const v2, 0x7f110259

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketSignInHolder:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    .line 253
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isNutritionAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getCaloriesWarningView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_0
    const v1, 0x7f1100e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenuEndingTextView:Landroid/widget/TextView;

    .line 259
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 224
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 696
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 697
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 698
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string v1, "onOptionsItemSelected"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 709
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 730
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 712
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showLabelInsteadOfNavigateUp(ZLjava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Edit Basket"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 715
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->prepareEditMode()V

    .line 716
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 723
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->closeEdit(Landroid/view/MenuItem;)V

    .line 724
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->saveChangesToBasket()V

    goto :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x7f110548
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 266
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showLabelInsteadOfNavigateUp(ZLjava/lang/String;)V

    .line 271
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateBasketSignInHolder()V

    .line 272
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUpdatingProducts:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 275
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090681

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 277
    :cond_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090175

    invoke-virtual {v0, v3, v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showLabelInsteadOfNavigateUp(ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method public prepareEditMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "prepareEditMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->updateOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 784
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    .line 785
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->setIsEditMode(Ljava/lang/Boolean;)V

    .line 786
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateFooter()V

    .line 788
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f110548

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 789
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f110549

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 791
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mLoggedIn:Z

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketSignInHolder:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->setVisible(Z)V

    .line 797
    :cond_0
    return-void
.end method

.method public preparePayment(Z)V
    .locals 5
    .param p1, "checkout"    # Z

    .prologue
    const/4 v4, 0x1

    const-string v0, "preparePayment"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/OrderUtils;->clearTotalizeResponses(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 1062
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->shouldShowUpsell()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1065
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->showUpsell()V

    .line 1075
    :goto_0
    return-void

    .line 1067
    :cond_0
    const-class v0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->startActivityForResult(Ljava/lang/Class;I)V

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketSignInHolder:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->setVisible(Z)V

    goto :goto_0
.end method

.method public productEdited()V
    .locals 2

    .prologue
    const-string v0, "productEdited"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->productEdited()V

    .line 779
    return-void
.end method

.method refresh()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v3, "refresh"

    const/4 v5, 0x0

    invoke-static {p0, v3, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 1203
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 1205
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->clear()V

    .line 1206
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->createBasketItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->addAll(Ljava/util/Collection;)V

    .line 1210
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketFooterHolder:Lcom/mcdonalds/app/ordering/basket/BasketFooter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/basket/BasketFooter;->getAddToBasketButton()Landroid/widget/Button;

    move-result-object v5

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1212
    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updatingStore:Z

    if-nez v3, :cond_4

    .line 1213
    const/4 v0, 0x0

    .line 1214
    .local v0, "currentStoreId":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1215
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v0

    .line 1218
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1219
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1220
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v5, 0x7f09065d

    invoke-static {v3, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 1221
    const-string v3, "storeLocator"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 1222
    .local v1, "module":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v2

    .line 1223
    .local v2, "orderingStore":Ljava/lang/String;
    new-instance v3, Lcom/mcdonalds/app/ordering/basket/BasketFragment$16;

    invoke-direct {v3, p0, v2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$16;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoreForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1255
    .end local v0    # "currentStoreId":I
    .end local v1    # "module":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .end local v2    # "orderingStore":Ljava/lang/String;
    :goto_1
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updatingStore:Z

    .line 1257
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateFooter()V

    .line 1258
    return-void

    :cond_2
    move v3, v4

    .line 1210
    goto :goto_0

    .line 1244
    .restart local v0    # "currentStoreId":I
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateProducts()V

    .line 1245
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateHeader()V

    goto :goto_1

    .line 1248
    .end local v0    # "currentStoreId":I
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1249
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(I)V

    .line 1251
    :cond_5
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->clear()V

    .line 1252
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateProducts()V

    .line 1253
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->createBasketItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public refreshStoreInfoAndDeliveryFee()V
    .locals 3

    .prologue
    const-string v0, "refreshStoreInfoAndDeliveryFee"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-nez v0, :cond_1

    .line 322
    :cond_0
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 323
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 324
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 328
    :cond_1
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    if-nez v0, :cond_3

    .line 329
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->retrieveStoreInfoAndDeliveryFee()V

    .line 347
    :cond_2
    :goto_0
    return-void

    .line 331
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0906ff

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    new-instance v2, Lcom/mcdonalds/app/ordering/basket/BasketFragment$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$3;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public removeUnavailableItemsComplete()V
    .locals 2

    .prologue
    const-string v0, "removeUnavailableItemsComplete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mUnavailableProductCodes:Ljava/util/List;

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketHasErrors:Z

    .line 802
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refresh()V

    .line 803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->preparePayment(Z)V

    .line 804
    return-void
.end method

.method public resetBasketForEmptyOrder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "resetBasketForEmptyOrder"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    iput-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 808
    return-void
.end method

.method public saveChangesToBasket()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v2, "saveChangesToBasket"

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f110548

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 959
    .local v0, "cancelItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f110549

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 961
    .local v1, "editItem":Landroid/view/MenuItem;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mIsEditMode:Ljava/lang/Boolean;

    .line 964
    iput-object v4, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOriginalOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrderBeforeStoreChange:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 967
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 968
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 971
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 973
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListViewAdapter:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->setIsEditMode(Ljava/lang/Boolean;)V

    .line 974
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateFooter()V

    .line 976
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 977
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 979
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mLoggedIn:Z

    if-nez v2, :cond_0

    .line 980
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mBasketSignInHolder:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->setVisible(Z)V

    .line 984
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 985
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 986
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 991
    :goto_0
    return-void

    .line 988
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refreshStoreInfoAndDeliveryFee()V

    goto :goto_0
.end method

.method public totalize()V
    .locals 3

    .prologue
    const-string v1, "totalize"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2086
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 2087
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mTotalizeListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->totalize(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 2088
    return-void
.end method

.method public updateOrder()V
    .locals 2

    .prologue
    const-string v0, "updateOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1995
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 1996
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    .line 1997
    return-void
.end method

.method public updateOrderMethodSelectionHeader()V
    .locals 2

    .prologue
    const-string v0, "updateOrderMethodSelectionHeader"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2063
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 2065
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    if-eqz v0, :cond_1

    .line 2070
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 2073
    :cond_1
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mHeaderIsDelivery:Z

    if-eqz v0, :cond_3

    .line 2074
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    if-eqz v0, :cond_2

    .line 2075
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mDeliveryTimeHolder:Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/DeliveryTimeHolder;->getContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2083
    :cond_2
    :goto_0
    return-void

    .line 2078
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    if-eqz v0, :cond_2

    .line 2079
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->mPickupHeaderHolder:Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/PickupLocationHolder;->getContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method
