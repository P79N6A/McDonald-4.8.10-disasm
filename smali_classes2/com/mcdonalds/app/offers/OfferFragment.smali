.class public Lcom/mcdonalds/app/offers/OfferFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OfferFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/offers/OffersListener;
.implements Lcom/mcdonalds/app/storelocator/MapManager$Callback;
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;,
        Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;,
        Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;,
        Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final REQUEST_CODE:Ljava/lang/Integer;


# instance fields
.field private DEFAULT_RADIUS:Ljava/lang/Double;

.field protected listener:Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;

.field private mAllChoicesSolved:Ljava/lang/Boolean;

.field private mApplyToOrderButton:Landroid/widget/Button;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mEditOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mEditOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

.field private mFromProduct:Z

.field private mHasProductSelection:Z

.field private mInEditMode:Z

.field private mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mItemDataList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

.field private mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

.field private mMapLoaded:Z

.field private mMapUpdated:Z

.field private mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

.field private mNeedsRefresh:Z

.field private mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

.field private mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

.field private mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

.field private mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mParent:Lcom/mcdonalds/app/offers/OfferActivity;

.field private mPreSelectedProduct:Lcom/mcdonalds/sdk/modules/models/Product;

.field private mPriceFormat:Ljava/text/DecimalFormat;

.field private mProductViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPunchcardSelectItemTextView:Landroid/widget/TextView;

.field private mSavedPunchCardAddItemProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

.field private mSelectedOrderOfferProducts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

.field private mTargetMarker:Lcom/mcdonalds/app/storelocator/maps/model/Marker;

.field private mTitle:Ljava/lang/String;

.field private mTotalCaloriesText:Landroid/widget/TextView;

.field private mTotalPrice:Ljava/lang/Double;

.field private mTotalPriceText:Landroid/widget/TextView;

.field private orderOfferProductsApplied:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/offers/OfferFragment;->LOG_TAG:Ljava/lang/String;

    .line 128
    const v0, 0xddff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/offers/OfferFragment;->REQUEST_CODE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 145
    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mTargetMarker:Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .line 174
    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapLoaded:Z

    .line 175
    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapUpdated:Z

    .line 177
    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    .line 178
    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mNeedsRefresh:Z

    .line 185
    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mSavedPunchCardAddItemProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/offers/OfferFragment;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->orderOfferProductsApplied:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/offers/OfferFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->trackBasketCreated()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/offers/OfferFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/offers/OfferFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->findInStore()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1700"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/offers/OfferFragment;->refreshDataForOffer(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/storelocator/maps/McdMap;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mcdonalds/app/offers/OfferFragment;Ljava/util/List;Lcom/mcdonalds/app/storelocator/maps/McdMap;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$1900"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/offers/OfferFragment;->setMapPins(Ljava/util/List;Lcom/mcdonalds/app/storelocator/maps/McdMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$2000"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/offers/OfferFragment;->onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mcdonalds/app/offers/OfferFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$2100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/offers/OfferFragment;->onProductInfoButtonClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$2200"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/offers/OfferFragment;->onProductChoiceClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/offers/OfferFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/Order;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/offers/OfferFragment;->checkIfDeliveryOrPickUpMatchesOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/offers/OfferFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->checkIfOfferAvailableInStore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/offers/OfferFragment;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    return-object v0
.end method

.method private addChoiceToMealList(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;ILandroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z
    .locals 31
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "choiceIdx"    # I
    .param p4, "itemsLayout"    # Landroid/widget/LinearLayout;
    .param p5, "inflater"    # Landroid/view/LayoutInflater;
    .param p6, "position"    # Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;

    .prologue
    const-string v5, "addChoiceToMealList"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    const/4 v7, 0x5

    aput-object p6, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2015
    const v5, 0x7f04017f

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 2016
    .local v17, "detailsView":Landroid/view/View;
    new-instance v22, Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;-><init>(Landroid/view/View;)V

    .line 2017
    .local v22, "item":Lcom/mcdonalds/app/ordering/ProductDetailsItem;
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v10

    .line 2018
    .local v10, "finalPosition":I
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->increment()V

    .line 2020
    invoke-static/range {p2 .. p2}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v11

    .line 2021
    .local v11, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v11, :cond_3

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 2023
    .local v20, "hasSolution":Ljava/lang/Boolean;
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2024
    new-instance v4, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;IZ)V

    .line 2025
    .local v4, "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    invoke-virtual {v5, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2028
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSelectedButton()Lcom/mcdonalds/app/widget/InertCheckBox;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/widget/InertCheckBox;->setVisibility(I)V

    .line 2031
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getDisclosureArrow()Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2033
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2037
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2038
    const-string v26, ""

    .line 2039
    .local v26, "productName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2040
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v26

    .line 2042
    :cond_0
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2045
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2048
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2049
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2143
    :cond_1
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v30

    new-instance v5, Lcom/mcdonalds/app/offers/OfferFragment$26;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/mcdonalds/app/offers/OfferFragment$26;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2150
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v5

    const-string v6, "ProductOptionItemPressed"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 2152
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    move-object/from16 v0, v25

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2154
    .local v25, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2155
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2156
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    const/16 v7, 0x32

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setMinimumHeight(I)V

    .line 2159
    if-eqz v11, :cond_2

    .line 2160
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 2161
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2162
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    .line 2163
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 2164
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 2165
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2176
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mProductViews:Landroid/util/SparseArray;

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2178
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 2021
    .end local v4    # "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    .end local v20    # "hasSolution":Ljava/lang/Boolean;
    .end local v25    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "productName":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2054
    .restart local v4    # "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    .restart local v20    # "hasSolution":Ljava/lang/Boolean;
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2057
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2058
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v26

    .line 2062
    .restart local v26    # "productName":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2065
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v11}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2067
    invoke-static {v11}, Lcom/mcdonalds/app/ordering/ProductUtils;->getNameDetailsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v23

    .line 2068
    .local v23, "nameDetails":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2069
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getNameDetails()Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2070
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getNameDetails()Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    :cond_5
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldShowUpLiftPrice()Z

    move-result v27

    .line 2074
    .local v27, "showUplift":Z
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setPriceUpliftTextVisible(Z)V

    .line 2076
    if-eqz v27, :cond_6

    .line 2077
    const-string v5, "ordering"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 2078
    .local v24, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-static {v11}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v14

    .line 2079
    .local v14, "choiceSolutionPrice":D
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductBasePrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v12

    .line 2080
    .local v12, "basePrice":D
    sub-double v28, v14, v12

    .line 2082
    .local v28, "uplift":D
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v28, v6

    if-ltz v5, :cond_6

    .line 2083
    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setPriceUpliftTextVisible(Z)V

    .line 2084
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v19

    .line 2085
    .local v19, "formatter":Ljava/text/NumberFormat;
    const-string v5, "+ %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setPriceUpliftText(Ljava/lang/String;)V

    .line 2090
    .end local v12    # "basePrice":D
    .end local v14    # "choiceSolutionPrice":D
    .end local v19    # "formatter":Ljava/text/NumberFormat;
    .end local v24    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v28    # "uplift":D
    :cond_6
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_8

    const/16 v16, 0x0

    .line 2091
    .local v16, "count":I
    :goto_4
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_9

    const/4 v5, 0x0

    :goto_5
    add-int v16, v16, v5

    .line 2093
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.hideProductCustomizationButton"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v21

    .line 2094
    .local v21, "hideCustomizeHatButton":Z
    if-nez v21, :cond_a

    if-lez v16, :cond_a

    .line 2095
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2096
    invoke-static {v11}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setHatButtonHighlighted(Ljava/lang/String;)V

    .line 2097
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/app/offers/OfferFragment$24;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11, v10}, Lcom/mcdonalds/app/offers/OfferFragment$24;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2104
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v5

    const-string v6, "CustomizeButtonAction"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 2110
    :goto_6
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2111
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionIconOnOrderingPages()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    if-eqz v5, :cond_1

    .line 2114
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v18

    .line 2115
    .local v18, "externalId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    new-instance v6, Lcom/mcdonalds/app/offers/OfferFragment$25;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment$25;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v6}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto/16 :goto_1

    .line 2060
    .end local v16    # "count":I
    .end local v18    # "externalId":Ljava/lang/String;
    .end local v21    # "hideCustomizeHatButton":Z
    .end local v23    # "nameDetails":Ljava/lang/String;
    .end local v26    # "productName":Ljava/lang/String;
    .end local v27    # "showUplift":Z
    :cond_7
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "productName":Ljava/lang/String;
    goto/16 :goto_3

    .line 2090
    .restart local v23    # "nameDetails":Ljava/lang/String;
    .restart local v27    # "showUplift":Z
    :cond_8
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    goto/16 :goto_4

    .line 2091
    .restart local v16    # "count":I
    :cond_9
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto/16 :goto_5

    .line 2106
    .restart local v21    # "hideCustomizeHatButton":Z
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_6

    .line 2167
    .end local v16    # "count":I
    .end local v21    # "hideCustomizeHatButton":Z
    .end local v23    # "nameDetails":Ljava/lang/String;
    .end local v27    # "showUplift":Z
    .restart local v25    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2168
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2169
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 2170
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 2171
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 2172
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2
.end method

.method private addProductItemsToList(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/widget/LinearLayout;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z
    .locals 18
    .param p1, "orderOfferProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .param p2, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "itemsLayout"    # Landroid/widget/LinearLayout;
    .param p4, "position"    # Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;

    .prologue
    const-string v1, "addProductItemsToList"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v4, 0x3

    aput-object p4, v2, v4

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1828
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1829
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x1

    .line 1831
    .local v14, "choicesSolved":Z
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    .line 1833
    invoke-direct/range {v1 .. v6}, Lcom/mcdonalds/app/offers/OfferFragment;->addProductToMeaLList(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z

    move-result v14

    .line 1870
    :cond_0
    return v14

    .line 1838
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1839
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .local v3, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    .line 1841
    invoke-direct/range {v1 .. v6}, Lcom/mcdonalds/app/offers/OfferFragment;->addProductToMeaLList(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    .line 1843
    :goto_1
    goto :goto_0

    .line 1841
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 1847
    .end local v3    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1848
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    .line 1849
    .local v17, "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    const/4 v9, 0x0

    .local v9, "choiceIdx":I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 1850
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1852
    .local v8, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v15

    .line 1853
    .local v15, "hideSingleChoice":Z
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v15, :cond_5

    .line 1854
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v16

    .line 1855
    .local v16, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static/range {v16 .. v16}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1856
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1857
    .local v13, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 1858
    invoke-virtual {v8, v13}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 1849
    .end local v13    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v16    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object v11, v5

    move-object/from16 v12, p4

    .line 1862
    invoke-direct/range {v6 .. v12}, Lcom/mcdonalds/app/offers/OfferFragment;->addChoiceToMealList(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;ILandroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    :goto_4
    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private addProductToMeaLList(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z
    .locals 18
    .param p1, "orderOfferProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "itemsLayout"    # Landroid/widget/LinearLayout;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;
    .param p5, "position"    # Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;

    .prologue
    const-string v2, "addProductToMeaLList"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v3, v6

    const/4 v6, 0x1

    aput-object p2, v3, v6

    const/4 v6, 0x2

    aput-object p3, v3, v6

    const/4 v6, 0x3

    aput-object p4, v3, v6

    const/4 v6, 0x4

    aput-object p5, v3, v6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1879
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1880
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1881
    :cond_0
    const/4 v9, 0x0

    .line 2006
    :cond_1
    :goto_0
    return v9

    .line 1884
    :cond_2
    const v2, 0x7f04017f

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 1885
    .local v11, "detailsView":Landroid/view/View;
    new-instance v14, Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-direct {v14, v11}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;-><init>(Landroid/view/View;)V

    .line 1886
    .local v14, "item":Lcom/mcdonalds/app/ordering/ProductDetailsItem;
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v12

    .line 1889
    .local v12, "finalPosition":I
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1890
    const/4 v9, 0x0

    goto :goto_0

    .line 1894
    :cond_3
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1900
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSelectedButton()Lcom/mcdonalds/app/widget/InertCheckBox;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/widget/InertCheckBox;->setVisibility(I)V

    .line 1903
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 1905
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->isBuyOneGetSame()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1907
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/offers/OfferFragment$21;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v12, v1}, Lcom/mcdonalds/app/offers/OfferFragment$21;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;ILcom/mcdonalds/sdk/modules/models/OrderOfferProduct;)V

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1914
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    const-string v3, "ProductItemPressed"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1917
    :cond_4
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getDisclosureArrow()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1924
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v10, 0x0

    .line 1925
    .local v10, "count":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    :goto_3
    add-int/2addr v10, v2

    .line 1927
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.hideProductCustomizationButton"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v13

    .line 1928
    .local v13, "hideProductCustomizationButton":Z
    if-nez v13, :cond_a

    if-lez v10, :cond_a

    .line 1929
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1930
    invoke-static/range {p2 .. p2}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->setHatButtonHighlighted(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/offers/OfferFragment$22;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v12}, Lcom/mcdonalds/app/offers/OfferFragment$22;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1938
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v2

    const-string v3, "CustomizeButtonAction"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1945
    :goto_4
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1946
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionIconOnOrderingPages()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    if-eqz v2, :cond_5

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/mcdonalds/app/offers/OfferFragment$23;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14}, Lcom/mcdonalds/app/offers/OfferFragment$23;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V

    invoke-virtual {v2, v3, v6}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1973
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1974
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1976
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 1977
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1978
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 1979
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1982
    :cond_6
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1984
    .local v16, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1985
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1986
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const/16 v6, 0x32

    invoke-static {v3, v6}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setMinimumHeight(I)V

    .line 1988
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1989
    new-instance v15, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 1990
    .local v15, "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v3

    invoke-virtual {v2, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1991
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->increment()V

    .line 1994
    const/4 v9, 0x1

    .line 1995
    .local v9, "choicesSolved":Z
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    .line 1996
    .local v17, "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    if-eqz v17, :cond_1

    .line 1997
    const/4 v5, 0x0

    .local v5, "choiceIdx":I
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_1

    .line 1998
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/Choice;

    .local v4, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 2001
    invoke-direct/range {v2 .. v8}, Lcom/mcdonalds/app/offers/OfferFragment;->addChoiceToMealList(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;ILandroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    .line 1997
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1920
    .end local v4    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v5    # "choiceIdx":I
    .end local v9    # "choicesSolved":Z
    .end local v10    # "count":I
    .end local v13    # "hideProductCustomizationButton":Z
    .end local v15    # "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    .end local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    :cond_7
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getDisclosureArrow()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1924
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    goto/16 :goto_2

    .line 1925
    .restart local v10    # "count":I
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto/16 :goto_3

    .line 1940
    .restart local v13    # "hideProductCustomizationButton":Z
    :cond_a
    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 2001
    .restart local v4    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .restart local v5    # "choiceIdx":I
    .restart local v9    # "choicesSolved":Z
    .restart local v15    # "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    .restart local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v17    # "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    :cond_b
    const/4 v9, 0x0

    goto :goto_6
.end method

.method private canAddMoreProductsToPunchCard()Z
    .locals 4

    .prologue
    const-string v2, "canAddMoreProductsToPunchCard"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v0, v2, v3

    .line 1209
    .local v0, "current":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.offers.limitPunchCardToTotalPunch"

    .line 1210
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 1211
    .local v1, "limitToTotalPunch":Z
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkIfDeliveryOrPickUpMatchesOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Z
    .locals 9
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const v7, 0x7f0905bf

    const v8, 0x7f0901c8

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "checkIfDeliveryOrPickUpMatchesOrder"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 699
    .local v0, "isDeliveryOnly":Z
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 701
    .local v1, "isPickUpOnly":Z
    :goto_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 702
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 703
    invoke-virtual {v4, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f0905c0

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f09062c

    .line 704
    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v4, 0x7f0905d4

    new-instance v5, Lcom/mcdonalds/app/offers/OfferFragment$5;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/offers/OfferFragment$5;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    .line 705
    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 712
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 713
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 715
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v4, "Offer unavailable"

    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 737
    :goto_2
    return v3

    .end local v0    # "isDeliveryOnly":Z
    .end local v1    # "isPickUpOnly":Z
    :cond_0
    move v0, v3

    .line 698
    goto :goto_0

    .restart local v0    # "isDeliveryOnly":Z
    :cond_1
    move v1, v3

    .line 699
    goto :goto_1

    .line 718
    .restart local v1    # "isPickUpOnly":Z
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 720
    invoke-virtual {v4, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f0905c0

    new-array v6, v6, [Ljava/lang/Object;

    .line 721
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const v7, 0x7f09062c

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v4, 0x7f0905d4

    new-instance v5, Lcom/mcdonalds/app/offers/OfferFragment$6;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/offers/OfferFragment$6;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    .line 722
    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 729
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 730
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 732
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v4, "Offer unavailable"

    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v3, v2

    .line 737
    goto :goto_2
.end method

.method private checkIfOfferAvailableInStore()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "checkIfOfferAvailableInStore"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    iget-object v6, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v0

    .line 743
    .local v0, "resturants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 744
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    .line 745
    .local v2, "storeId":I
    :goto_0
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 746
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, "storeName":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 750
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 770
    :goto_2
    return v4

    .end local v2    # "storeId":I
    .end local v3    # "storeName":Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 744
    goto :goto_0

    .line 747
    .restart local v2    # "storeId":I
    :cond_1
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 754
    .restart local v3    # "storeName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    const v7, 0x7f0905bf

    .line 755
    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    const v7, 0x7f0906ac

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    .line 756
    invoke-virtual {p0, v7, v5}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f0905d4

    new-instance v7, Lcom/mcdonalds/app/offers/OfferFragment$7;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/offers/OfferFragment$7;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    .line 757
    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    .line 764
    invoke-virtual {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    .line 765
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_2

    :cond_3
    move v4, v5

    .line 770
    goto :goto_2
.end method

.method private configureRedeemButton(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const-string v1, "configureRedeemButton"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    const v1, 0x7f11033b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 792
    .local v0, "redeemAtRestaurantButton":Landroid/widget/Button;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getOfferOperationMode()I

    move-result v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->OnlyMobile:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 793
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment$8;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/offers/OfferFragment$8;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    const-string v1, "RedeemButtonPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private findInStore()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "findInStore"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1177
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v2

    .line 1179
    .local v2, "storeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    invoke-direct {v3}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 1180
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->useOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    .line 1181
    invoke-virtual {v3, p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->withUrlNavigationFragment(Lcom/mcdonalds/app/ui/URLNavigationFragment;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    .line 1182
    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->isMapOnly(Z)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    .line 1183
    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->hasCurrentStoreSelectionMode(Z)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    .line 1184
    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->shouldAutoSelectClosestStore(Z)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    .line 1185
    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->shouldDismissOnPlaceOrder(Z)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    .line 1186
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->withStoreIds(Ljava/util/List;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 1187
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->withOfferSelectionType(Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1188
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->withTargetMarkerStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;

    move-result-object v3

    .line 1189
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->create()Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

    move-result-object v1

    .line 1191
    .local v1, "offersStoreLocatorController":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1192
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "OFFERS_MODE"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1193
    const-string v3, "EXTRA_ALLOWS_SELECTION"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1194
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-eqz v3, :cond_1

    .line 1195
    const-string v3, "EXTRA_INITIAL_CAMERA_POSITION"

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->getCameraPosition()Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1197
    :cond_1
    const-string v3, "offer_selection_type"

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1198
    const-string v3, "DATA_PASSER_KEY"

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1200
    const-class v3, Lcom/mcdonalds/app/offers/OffersInStoreActivity;

    const-string v4, "store_locator"

    invoke-virtual {p0, v3, v4, v0}, Lcom/mcdonalds/app/offers/OfferFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private getLocalizedAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v3, "getLocalizedAlias"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, "name":Ljava/lang/String;
    const-class v3, Lcom/mcdonalds/app/McDonaldsApplication;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1506
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1508
    .local v2, "resId":I
    if-eqz v2, :cond_0

    .line 1509
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1513
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resId":I
    :goto_0
    return-object v3

    :cond_0
    const v3, 0x7f0906cd

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getPreselectedProductPosition()I
    .locals 6

    .prologue
    const-string v3, "getPreselectedProductPosition"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1482
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 1483
    .local v1, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 1484
    .local v2, "option":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mPreSelectedProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1489
    .end local v0    # "i":I
    .end local v1    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .end local v2    # "option":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    :goto_1
    return v0

    .line 1481
    .restart local v0    # "i":I
    .restart local v1    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1489
    .end local v1    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getPriceText()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v0, "getPriceText"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2182
    const-string v0, "$%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mPriceFormat:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPrice:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initMap(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v1, "initMap"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    const v1, 0x7f11049b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 897
    .local v0, "mapLayout":Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment$9;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/offers/OfferFragment$9;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    const-string v1, "ExpandMapPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 905
    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    .line 906
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getHours()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getIsOpen()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getDistance()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getmImageButton()Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/offers/OfferFragment$10;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/offers/OfferFragment$10;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getmImageButton()Landroid/widget/ImageButton;

    move-result-object v1

    const-string v2, "ExpandMapPressed"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 919
    new-instance v1, Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/mcdonalds/app/storelocator/MapManager;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 921
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f11028d

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 922
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/MapManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    const-string v4, "MAP"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 923
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 924
    return-void
.end method

.method private initModules(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v1, "initModules"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 929
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 931
    const-string v1, "offers"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 932
    const-string v1, "nutritionInfo"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .line 933
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 934
    const-string v1, "storeLocator"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 935
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 937
    .local v0, "noPickupDelivery":Z
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-eqz v1, :cond_0

    .line 938
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 939
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getOfferOperationMode()I

    move-result v1

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->OnlyInStore:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->getValue()I

    move-result v3

    if-eq v1, v3, :cond_0

    if-eqz v0, :cond_3

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mApplyToOrderButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 977
    :goto_1
    iget-boolean v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapLoaded:Z

    if-eqz v1, :cond_1

    .line 978
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->refreshMapWidget()V

    .line 980
    :cond_1
    return-void

    .end local v0    # "noPickupDelivery":Z
    :cond_2
    move v0, v2

    .line 935
    goto :goto_0

    .line 946
    .restart local v0    # "noPickupDelivery":Z
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->performEditModeCheck()V

    .line 947
    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V

    iput-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->listener:Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;

    .line 948
    iget-boolean v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v1, :cond_5

    .line 951
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/mcdonalds/app/offers/OfferFragment$11;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/offers/OfferFragment$11;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 974
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mApplyToOrderButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 957
    :cond_5
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-nez v1, :cond_4

    .line 959
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v3, 0x7f090662

    invoke-static {v1, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 960
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v4, Lcom/mcdonalds/app/offers/OfferFragment$12;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/offers/OfferFragment$12;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    invoke-virtual {v1, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCatalogUpdated(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_2
.end method

.method private isPunchCardOffer()Z
    .locals 2

    .prologue
    const-string v0, "isPunchCardOffer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onProductChoiceClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "choiceIdx"    # I
    .param p4, "position"    # I

    .prologue
    const-string v2, "onProductChoiceClicked"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1811
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PDP - Product chooser list"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1813
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1814
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    const-string v3, "ARG_CHOICE_KEY"

    invoke-virtual {v2, v3, p2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1815
    const-string v2, "ARG_INDEX"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1816
    const-string v2, "ARG_PRODUCT_POSITION"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1817
    const-string v2, "ARG_TITLE"

    const v3, 0x7f0907b4

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1820
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x332a

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1821
    return-void
.end method

.method private onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 5
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "position"    # I

    .prologue
    const-string v1, "onProductCustomizeClicked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1794
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PDP - Customization"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1797
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    const-string v2, "ARG_PRODUCT"

    invoke-virtual {v1, v2, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1798
    const-string v1, "ARG_PRODUCT_INDEX"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1800
    const-class v1, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;

    const-string v2, "product_customization"

    const v3, 0xb128

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/offers/OfferFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1806
    return-void
.end method

.method private onProductInfoButtonClicked(Ljava/lang/String;)V
    .locals 6
    .param p1, "foodId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onProductInfoButtonClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1790
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/navigation/NavigationManager;->showNutrition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 1791
    return-void
.end method

.method private performEditModeCheck()V
    .locals 5

    .prologue
    const-string v2, "performEditModeCheck"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 988
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_1

    .line 989
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 990
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 991
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 993
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    .line 994
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v2, :cond_1

    .line 995
    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 996
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->clone()Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 1003
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    return-void
.end method

.method private refreshDataForOffer(Landroid/view/View;)V
    .locals 22
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const-string v19, "refreshDataForOffer"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p1, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/Offer;->isBuyNGetMOffer()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1268
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrderPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v15

    .line 1269
    .local v15, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->reorderOfferOrderProductsForBuyNGetM(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 1272
    .end local v15    # "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mPunchcardSelectItemTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1274
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/offers/OfferFragment;->refreshPunchCardOptionsIfNecessary(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1478
    :cond_1
    :goto_1
    return-void

    .line 1272
    :cond_2
    const/16 v19, 0x8

    goto :goto_0

    .line 1280
    :cond_3
    const v19, 0x7f110345

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1281
    .local v9, "itemsLayout":Landroid/widget/LinearLayout;
    new-instance v7, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    .line 1284
    .local v7, "itemCount":Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mProductViews:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_4

    .line 1292
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mApplyToOrderButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f02008d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 1297
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1300
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    .line 1302
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_10

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1305
    .local v11, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    const v19, 0x7f04017f

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1306
    .local v18, "productDetailsView":Landroid/view/View;
    new-instance v17, Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-direct/range {v17 .. v18}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;-><init>(Landroid/view/View;)V

    .line 1308
    .local v17, "productDetails":Lcom/mcdonalds/app/ordering/ProductDetailsItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v10

    .line 1310
    .local v10, "margin":I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x30

    .line 1312
    invoke-static/range {v20 .. v21}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v13, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1314
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v13, v0, v10, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1316
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mProductViews:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1321
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    if-nez v19, :cond_d

    .line 1323
    new-instance v8, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;

    .line 1324
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v11, v0}, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 1325
    .local v8, "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1326
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1327
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSelectedButton()Lcom/mcdonalds/app/widget/InertCheckBox;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/app/widget/InertCheckBox;->setVisibility(I)V

    .line 1328
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getDisclosureArrow()Landroid/widget/ImageView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1330
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getHatButton()Landroid/widget/ImageButton;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/app/offers/OfferActivity;->hasSelectedOfferProduct(I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/app/offers/OfferActivity;->getSelectedOfferProduct(I)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 1336
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v20, v0

    .line 1337
    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/app/offers/OfferActivity;->getSelectedOfferProduct(I)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v20, v0

    .line 1340
    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/app/offers/OfferActivity;->getSelectedOfferProduct(I)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v19

    sget-object v20, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1341
    invoke-virtual/range {v19 .. v20}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v19

    .line 1342
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1345
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0032

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1354
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getSpecialInstructions()Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1356
    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->value()I

    move-result v4

    .line 1357
    .local v4, "finalPosition":I
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1358
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 1360
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v19

    new-instance v20, Lcom/mcdonalds/app/offers/OfferFragment$15;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v11}, Lcom/mcdonalds/app/offers/OfferFragment$15;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;ILcom/mcdonalds/sdk/modules/models/OrderOfferProduct;)V

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v19

    const-string v20, "ProductItemPressed"

    invoke-static/range {v19 .. v20}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 1370
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    .line 1451
    :cond_6
    :goto_4
    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->increment()V

    .line 1468
    .end local v4    # "finalPosition":I
    .end local v8    # "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mApplyToOrderButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f02008d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1302
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1348
    .restart local v8    # "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getFoodImageIcon()Landroid/widget/ImageView;

    move-result-object v19

    const v20, 0x7f020194

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1349
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAlias()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->getLocalizedAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1350
    .local v3, "alias":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getName()Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e008c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1380
    .end local v3    # "alias":Ljava/lang/String;
    .restart local v4    # "finalPosition":I
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v19

    new-instance v20, Lcom/mcdonalds/app/offers/OfferFragment$16;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v4}, Lcom/mcdonalds/app/offers/OfferFragment$16;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;I)V

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1394
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v19

    const-string v20, "ProductOptionItemPressed"

    invoke-static/range {v19 .. v20}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 1399
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 1403
    :cond_a
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 1405
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->hasMultipleProducts()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1407
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->isBuyOneGetSame()Z

    move-result v19

    if-nez v19, :cond_b

    .line 1408
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v19

    new-instance v20, Lcom/mcdonalds/app/offers/OfferFragment$17;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v11}, Lcom/mcdonalds/app/offers/OfferFragment$17;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;ILcom/mcdonalds/sdk/modules/models/OrderOfferProduct;)V

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v19

    const-string v20, "ProductOptionItemPressed"

    invoke-static/range {v19 .. v20}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1449
    :cond_b
    :goto_6
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 1423
    :cond_c
    const-string v19, "ordering"

    invoke-static/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 1425
    .local v12, "orderingModuleModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1426
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/mcdonalds/app/offers/OfferFragment$18;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v4, v2, v11}, Lcom/mcdonalds/app/offers/OfferFragment$18;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;ILcom/mcdonalds/app/ordering/ProductDetailsItem;Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_6

    .line 1455
    .end local v4    # "finalPosition":I
    .end local v8    # "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    .end local v12    # "orderingModuleModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    :cond_d
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v16

    .line 1457
    .local v16, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/ProductUtils;->populateProductIngredients(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/ProductUtils;->populateProductChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    if-nez v19, :cond_e

    .line 1461
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1, v9, v7}, Lcom/mcdonalds/app/offers/OfferFragment;->addProductItemsToList(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/widget/LinearLayout;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    .line 1465
    :goto_7
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mHasProductSelection:Z

    goto/16 :goto_5

    .line 1463
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1, v9, v7}, Lcom/mcdonalds/app/offers/OfferFragment;->addProductItemsToList(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/widget/LinearLayout;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_f

    const/16 v19, 0x1

    :goto_8
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mAllChoicesSolved:Ljava/lang/Boolean;

    goto :goto_7

    :cond_f
    const/16 v19, 0x0

    goto :goto_8

    .line 1474
    .end local v10    # "margin":I
    .end local v11    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v17    # "productDetails":Lcom/mcdonalds/app/ordering/ProductDetailsItem;
    .end local v18    # "productDetailsView":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mHasProductSelection:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mPreSelectedProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1475
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getPreselectedProductPosition()I

    move-result v14

    .line 1476
    .local v14, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mPreSelectedProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->onOfferProductSelected(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto/16 :goto_1
.end method

.method private declared-synchronized refreshMapWidget()V
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "refreshMapWidget"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1519
    iget-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1553
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1522
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapUpdated:Z

    .line 1525
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    sget-object v1, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Current:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    sget-object v1, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Favorite:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    if-ne v0, v1, :cond_3

    .line 1528
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    .line 1529
    .local v6, "currStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v6, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1533
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->DEFAULT_RADIUS:Ljava/lang/Double;

    const/4 v4, 0x0

    new-instance v5, Lcom/mcdonalds/app/offers/OfferFragment$19;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/offers/OfferFragment$19;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    .line 1532
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearLatLongWithinRadius(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    .end local v6    # "currStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1543
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->DEFAULT_RADIUS:Ljava/lang/Double;

    const/4 v2, 0x0

    new-instance v3, Lcom/mcdonalds/app/offers/OfferFragment$20;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/offers/OfferFragment$20;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearCurrentLocationWithinRadius(Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private refreshPunchCardOptionsIfNecessary(Landroid/view/View;)Z
    .locals 8
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const-string v5, "refreshPunchCardOptionsIfNecessary"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    const/4 v4, 0x0

    .line 1216
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mPunchcardSelectItemTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    .line 1217
    .local v3, "originalViewVisibility":I
    const/16 v0, 0x8

    .line 1218
    .local v0, "newViewVisibility":I
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1219
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-eqz v5, :cond_4

    .line 1222
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1223
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 1224
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1225
    .local v1, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1228
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->canAddMoreProductsToPunchCard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1229
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 1230
    .local v2, "option":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    new-instance v6, Lcom/mcdonalds/app/offers/OfferFragment$14;

    invoke-direct {v6, p0, p1}, Lcom/mcdonalds/app/offers/OfferFragment$14;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V

    invoke-static {v2, v5, v7, v6}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->createOrderOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V

    .line 1242
    const/4 v4, 0x1

    .line 1247
    .end local v1    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .end local v2    # "option":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.offers.showPunchcardSelectItemView"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1248
    const/4 v0, 0x0

    .line 1258
    :cond_1
    :goto_0
    if-eq v0, v3, :cond_2

    .line 1259
    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mPunchcardSelectItemTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1262
    :cond_2
    return v4

    .line 1250
    :cond_3
    const/16 v0, 0x8

    goto :goto_0

    .line 1253
    :cond_4
    const/16 v0, 0x8

    .line 1254
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setMapPins(Ljava/util/List;Lcom/mcdonalds/app/storelocator/maps/McdMap;)V
    .locals 28
    .param p2, "map"    # Lcom/mcdonalds/app/storelocator/maps/McdMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/app/storelocator/maps/McdMap;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v21, "setMapPins"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    const/16 v23, 0x1

    aput-object p2, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 1556
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v21

    if-nez v21, :cond_1

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    if-eqz p2, :cond_0

    .line 1565
    invoke-interface/range {p2 .. p2}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->clear()V

    .line 1567
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    .local v17, "sorted":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoresManager;->getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;

    move-result-object v14

    .line 1571
    .local v14, "manager":Lcom/mcdonalds/app/storelocator/StoresManager;
    if-eqz p1, :cond_2

    .line 1573
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1575
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/mcdonalds/app/storelocator/StoresManager;->updateFavoriteInfo(Ljava/util/List;)V

    .line 1576
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/mcdonalds/app/storelocator/StoresManager;->sortByDistance(Ljava/util/List;)V

    .line 1579
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoresManager;->getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoresManager;->updateFavoriteInfo(Ljava/util/List;)V

    .line 1581
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    .local v10, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v7

    .line 1584
    .local v7, "currentFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-static {v7}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1586
    invoke-interface {v10, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1587
    invoke-virtual {v14, v10}, Lcom/mcdonalds/app/storelocator/StoresManager;->sortByDistance(Ljava/util/List;)V

    .line 1591
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_8

    const/4 v6, 0x1

    .line 1595
    .local v6, "checkAvailability":Z
    :goto_1
    sget-object v21, Lcom/mcdonalds/app/offers/OfferFragment$27;->$SwitchMap$com$mcdonalds$app$storelocator$OffersStoreLocatorController$OfferSelection:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 1667
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v21, v0

    if-nez v21, :cond_5

    .line 1668
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1669
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1672
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/mcdonalds/app/util/UIUtils;->getDailyStoreHoursString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v8

    .line 1674
    .local v8, "dailyStoreHours":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getHours()Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    :goto_3
    const/16 v20, 0x0

    .line 1682
    .local v20, "userLocation":Landroid/location/Location;
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 1688
    :goto_4
    if-eqz v20, :cond_6

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v22, v0

    .line 1689
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromLocation(Landroid/content/Context;Landroid/location/Location;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v9

    .line 1691
    .local v9, "distance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getDistance()Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1697
    .end local v9    # "distance":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_17

    .line 1699
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1703
    .local v18, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    const/4 v12, 0x1

    .line 1705
    .local v12, "isSelected":Z
    :goto_6
    if-eqz v6, :cond_12

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1707
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v21

    if-eqz v21, :cond_11

    const/4 v13, 0x1

    .line 1713
    .local v13, "isValidForOffer":Z
    :goto_7
    if-eqz v13, :cond_14

    .line 1714
    if-eqz v12, :cond_13

    const v15, 0x7f02021b

    .line 1719
    .local v15, "mapPinResId":I
    :goto_8
    new-instance v21, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    invoke-direct/range {v21 .. v21}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;-><init>()V

    new-instance v22, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 1720
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v24

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->position(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    move-result-object v21

    .line 1721
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->icon(I)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    move-result-object v22

    if-eqz v12, :cond_16

    const/high16 v21, 0x3f800000    # 1.0f

    .line 1722
    :goto_9
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->alpha(F)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    move-result-object v21

    .line 1719
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->addMarker(Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v16

    .line 1725
    .local v16, "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    if-eqz v12, :cond_7

    .line 1726
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mTargetMarker:Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .line 1697
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 1591
    .end local v6    # "checkAvailability":Z
    .end local v8    # "dailyStoreHours":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "isSelected":Z
    .end local v13    # "isValidForOffer":Z
    .end local v15    # "mapPinResId":I
    .end local v16    # "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .end local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v20    # "userLocation":Landroid/location/Location;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1597
    .restart local v6    # "checkAvailability":Z
    :pswitch_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto/16 :goto_2

    .line 1601
    :pswitch_1
    if-eqz v6, :cond_a

    .line 1604
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1606
    .restart local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v19

    .line 1609
    .local v19, "storeSupportsOffers":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    if-eqz v19, :cond_9

    .line 1611
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto/16 :goto_2

    .line 1618
    .end local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v19    # "storeSupportsOffers":Z
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1620
    .restart local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v19

    .line 1623
    .restart local v19    # "storeSupportsOffers":Z
    if-eqz v19, :cond_b

    .line 1624
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto/16 :goto_2

    .line 1636
    .end local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v19    # "storeSupportsOffers":Z
    :pswitch_2
    if-eqz v6, :cond_d

    .line 1637
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1639
    .restart local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v19

    .line 1642
    .restart local v19    # "storeSupportsOffers":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    if-eqz v19, :cond_c

    .line 1644
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto/16 :goto_2

    .line 1651
    .end local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v19    # "storeSupportsOffers":Z
    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1653
    .restart local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v19

    .line 1656
    .restart local v19    # "storeSupportsOffers":Z
    if-eqz v19, :cond_e

    .line 1657
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto/16 :goto_2

    .line 1677
    .end local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v19    # "storeSupportsOffers":Z
    .restart local v8    # "dailyStoreHours":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getHours()Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1703
    .restart local v11    # "i":I
    .restart local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .restart local v20    # "userLocation":Landroid/location/Location;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1707
    .restart local v12    # "isSelected":Z
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 1709
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v13

    .restart local v13    # "isValidForOffer":Z
    goto/16 :goto_7

    .line 1714
    :cond_13
    const v15, 0x7f02021a

    goto/16 :goto_8

    .line 1716
    :cond_14
    if-eqz v12, :cond_15

    const v15, 0x7f020222

    .restart local v15    # "mapPinResId":I
    :goto_a
    goto/16 :goto_8

    .end local v15    # "mapPinResId":I
    :cond_15
    const v15, 0x7f020221

    goto :goto_a

    .line 1721
    .restart local v15    # "mapPinResId":I
    :cond_16
    const/high16 v21, 0x3f400000    # 0.75f

    goto/16 :goto_9

    .line 1730
    .end local v12    # "isSelected":Z
    .end local v13    # "isValidForOffer":Z
    .end local v15    # "mapPinResId":I
    .end local v18    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTargetMarker:Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTargetMarker:Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->showInfoWindow()V

    .line 1736
    :cond_18
    if-eqz v20, :cond_19

    .line 1737
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mcdonalds/app/util/MapUtils;->with(Landroid/content/Context;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v21

    .line 1738
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map(Lcom/mcdonalds/app/storelocator/maps/McdMap;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v21

    .line 1739
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->userLocation(Landroid/location/Location;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v22, v0

    .line 1740
    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->store(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v21

    const/16 v22, 0x2d

    .line 1741
    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->margin(I)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v21

    .line 1742
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->move()V

    goto/16 :goto_0

    .line 1745
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mcdonalds/app/util/MapUtils;->with(Landroid/content/Context;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v21

    .line 1746
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map(Lcom/mcdonalds/app/storelocator/maps/McdMap;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInitialTargetStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v22, v0

    .line 1747
    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->store(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v21

    const/high16 v22, 0x41500000    # 13.0f

    .line 1748
    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->move(F)V

    goto/16 :goto_0

    .line 1683
    .end local v11    # "i":I
    :catch_0
    move-exception v21

    goto/16 :goto_4

    .line 1595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private trackBasketCreated()V
    .locals 4

    .prologue
    const-string v1, "trackBasketCreated"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 691
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->hasOffers()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 692
    const-string v1, "/basket"

    const-string v2, "On click"

    const-string v3, "Basket Created"

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    return-void
.end method

.method private trackOffer()V
    .locals 3

    .prologue
    const-string v1, "trackOffer"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    iget-boolean v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mFromProduct:Z

    if-eqz v1, :cond_0

    .line 778
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 779
    .local v0, "customs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 780
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Related Offer"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 787
    .end local v0    # "customs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method basketWillBeDisplayed()V
    .locals 4

    .prologue
    const-string v2, "basketWillBeDisplayed"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1043
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1044
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1045
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1046
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mSavedPunchCardAddItemProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1047
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->orderOfferProductsApplied:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1048
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1049
    .local v1, "tmpProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->orderOfferProductsApplied:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1051
    .end local v1    # "tmpProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1055
    .end local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_2
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const v0, 0x7f090882

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected getDataLayerPageSection()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDataLayerPageSection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 219
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoresManager;->getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoresManager;->refreshFavorites()V

    .line 223
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.storeLocator.defaultSearchRadius"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->DEFAULT_RADIUS:Ljava/lang/Double;

    .line 225
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPrice:Ljava/lang/Double;

    .line 226
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mPriceFormat:Ljava/text/DecimalFormat;

    .line 228
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mSelectedOrderOfferProducts:Landroid/util/SparseArray;

    .line 229
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mProductViews:Landroid/util/SparseArray;

    .line 230
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    .line 233
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 234
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 236
    const-string v3, "IN_EDIT_MODE"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    .line 238
    invoke-static {}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->values()[Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    move-result-object v3

    const-string v4, "offer_selection_type"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 239
    const-string v3, "extra_from_product"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mFromProduct:Z

    .line 240
    const-string v3, "extra_current_recipe"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    const-string v3, "extra_current_recipe"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Product;

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mPreSelectedProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 247
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    if-eqz v3, :cond_2

    .line 250
    const-string v3, "edit_order_data_passer_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    const-string v3, "edit_order_data_passer_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 255
    :goto_1
    if-eqz v0, :cond_5

    instance-of v3, v0, Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v3, :cond_5

    .line 256
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 264
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "edit_order_offer_data_passer_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 265
    .local v0, "data":Ljava/io/Serializable;
    if-eqz v0, :cond_6

    instance-of v3, v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v3, :cond_6

    .line 266
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .end local v0    # "data":Ljava/io/Serializable;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->clone()Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 274
    :cond_2
    :goto_3
    return-void

    .line 243
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    const-string v4, "extra_current_recipe"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Product;

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mPreSelectedProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    goto :goto_0

    .line 253
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    const-string v4, "edit_order_data_passer_id"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "data":Ljava/lang/Object;
    goto :goto_1

    .line 258
    .end local v0    # "data":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "edit_order_data_passer_id"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 259
    .local v2, "key":I
    if-eq v2, v6, :cond_1

    .line 260
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    goto :goto_2

    .line 268
    .end local v2    # "key":I
    .local v0, "data":Ljava/io/Serializable;
    :cond_6
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "edit_order_offer_data_passer_id"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 269
    .restart local v2    # "key":I
    if-eq v2, v6, :cond_2

    .line 270
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->clone()Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 25
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mFromProduct:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    const v8, 0x7f0400eb

    .line 290
    .local v8, "layout":I
    :goto_0
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 292
    .local v17, "rootView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v21

    check-cast v21, Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/offers/OfferActivity;->setOnOfferSelectedListener(Lcom/mcdonalds/app/offers/OffersListener;)V

    .line 295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mEditOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 304
    :cond_0
    :goto_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->orderOfferProductsApplied:Ljava/util/ArrayList;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    .line 683
    :goto_2
    return-object v17

    .line 289
    .end local v8    # "layout":I
    .end local v17    # "rootView":Landroid/view/View;
    :cond_1
    const v8, 0x7f0400ea

    goto :goto_0

    .line 298
    .restart local v8    # "layout":I
    .restart local v17    # "rootView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/offers/OfferActivity;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 299
    if-eqz p3, :cond_0

    .line 300
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v21

    const-string v22, "order_offer_saved_state_key"

    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    goto :goto_1

    .line 310
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->trackOffer()V

    .line 311
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0905ab

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/app/offers/OfferActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    :goto_3
    const v21, 0x7f110341

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 326
    .local v13, "offerSubTitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSubtitle()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSubtitle()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_4
    const v21, 0x7f110342

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 333
    .local v10, "offerDescription":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getShortDescription()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getShortDescription()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const/high16 v21, 0x41600000    # 14.0f

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 340
    :goto_5
    const v21, 0x7f11042a

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 343
    .local v11, "offerExpiration":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0905c2

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v24, v0

    .line 344
    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v24, v0

    .line 345
    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/mcdonalds/app/util/UIUtils;->formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    .line 342
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 341
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v21

    const-string v22, "interface.offers.hideTotalInOfferDetails"

    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 350
    const v21, 0x7f110525

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_4
    const v21, 0x7f110526

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalCaloriesText:Landroid/widget/TextView;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalCaloriesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    const v21, 0x7f110527

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPriceText:Landroid/widget/TextView;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPriceText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getPriceText()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const v21, 0x7f11033f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager;

    .line 359
    .local v15, "punchPager":Landroid/support/v4/view/ViewPager;
    const v21, 0x7f11033e

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 361
    .local v16, "punchPagerContainer":Landroid/view/View;
    const v21, 0x7f110340

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 363
    .local v12, "offerImage":Landroid/widget/ImageView;
    const v21, 0x7f110202

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioGroup;

    .line 364
    .local v14, "pagerIndicatorGroup":Landroid/widget/RadioGroup;
    const v21, 0x7f110344

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mPunchcardSelectItemTextView:Landroid/widget/TextView;

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 373
    const v21, 0x7f110343

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 374
    .local v19, "terms":Landroid/view/View;
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/offers/OfferActivity;->getABTitle()Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f09066b

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 377
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 380
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    new-instance v4, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    .line 383
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v21

    if-nez v21, :cond_9

    const/16 v21, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    .line 384
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v22

    if-nez v22, :cond_a

    const/16 v22, 0x0

    .line 385
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;-><init>(IILandroid/support/v4/app/FragmentManager;Lcom/mcdonalds/sdk/modules/models/Offer;)V

    .line 388
    .local v4, "adapter":Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;
    invoke-virtual {v15, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 390
    invoke-virtual {v4}, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->getCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 391
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8
    invoke-virtual {v4}, Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;->getCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_b

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v6, v0, v14}, Lcom/mcdonalds/app/util/UIUtils;->addPagerIndicatorDot(ILandroid/content/Context;Landroid/widget/RadioGroup;)V

    .line 391
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 317
    .end local v4    # "adapter":Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;
    .end local v6    # "i":I
    .end local v10    # "offerDescription":Landroid/widget/TextView;
    .end local v11    # "offerExpiration":Landroid/widget/TextView;
    .end local v12    # "offerImage":Landroid/widget/ImageView;
    .end local v13    # "offerSubTitle":Landroid/widget/TextView;
    .end local v14    # "pagerIndicatorGroup":Landroid/widget/RadioGroup;
    .end local v15    # "punchPager":Landroid/support/v4/view/ViewPager;
    .end local v16    # "punchPagerContainer":Landroid/view/View;
    .end local v19    # "terms":Landroid/view/View;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f09066b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_9
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mTitle:Ljava/lang/String;

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mParent:Lcom/mcdonalds/app/offers/OfferActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/offers/OfferActivity;->getABTitle()Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0063

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 317
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v21

    goto :goto_9

    .line 329
    .restart local v13    # "offerSubTitle":Landroid/widget/TextView;
    :cond_7
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 337
    .restart local v10    # "offerDescription":Landroid/widget/TextView;
    :cond_8
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 383
    .restart local v11    # "offerExpiration":Landroid/widget/TextView;
    .restart local v12    # "offerImage":Landroid/widget/ImageView;
    .restart local v14    # "pagerIndicatorGroup":Landroid/widget/RadioGroup;
    .restart local v15    # "punchPager":Landroid/support/v4/view/ViewPager;
    .restart local v16    # "punchPagerContainer":Landroid/view/View;
    .restart local v19    # "terms":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/Offer;->getCurrentPunch()Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    goto/16 :goto_6

    .line 384
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getTotalPunch()Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_7

    .line 395
    .restart local v4    # "adapter":Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;
    .restart local v6    # "i":I
    :cond_b
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 396
    new-instance v21, Lcom/mcdonalds/app/offers/OfferFragment$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/mcdonalds/app/offers/OfferFragment$1;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/widget/RadioGroup;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 425
    .end local v4    # "adapter":Lcom/mcdonalds/app/home/PunchcardOfferPagerAdapter;
    .end local v6    # "i":I
    .end local v19    # "terms":Landroid/view/View;
    :cond_c
    :goto_a
    const v21, 0x7f11033c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/offers/OfferFragment;->mApplyToOrderButton:Landroid/widget/Button;

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->initModules(Landroid/view/View;)V

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->configureRedeemButton(Landroid/view/View;)V

    .line 431
    const v21, 0x7f11033d

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 432
    .local v9, "notInterestedButton":Landroid/widget/Button;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v21

    const-string v22, "interface.offers.showNotInterestedButton"

    invoke-virtual/range {v21 .. v22}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    .line 433
    .local v18, "showNotInterestedButton":Ljava/lang/Boolean;
    if-eqz v18, :cond_f

    .line 434
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x0

    .line 433
    :goto_b
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 437
    new-instance v21, Lcom/mcdonalds/app/offers/OfferFragment$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment$2;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    const-string v21, "NotInterestedButtonPressed"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 500
    const v21, 0x7f11013b

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    .line 501
    .local v20, "termsInfoButton":Landroid/widget/ImageButton;
    new-instance v21, Lcom/mcdonalds/app/offers/OfferFragment$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment$3;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    const-string v21, "LegalInfoTapped"

    invoke-static/range {v20 .. v21}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mInEditMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mApplyToOrderButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09080c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mApplyToOrderButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcom/mcdonalds/app/offers/OfferFragment$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/offers/OfferFragment$4;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mApplyToOrderButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const-string v22, "ApplyToOrderButtonPressed"

    invoke-static/range {v21 .. v22}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->initMap(Landroid/view/View;)V

    .line 673
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 674
    .local v7, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "EVENT_NAME"

    const-string v22, "couponview"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v21, "cpofferid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v21, "cptype"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->ordinal()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v21, "cptitle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getSubtitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    new-instance v21, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct/range {v21 .. v21}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 679
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v21

    .line 680
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v5

    .line 681
    .local v5, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v21, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto/16 :goto_2

    .line 415
    .end local v5    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v7    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "notInterestedButton":Landroid/widget/Button;
    .end local v18    # "showNotInterestedButton":Ljava/lang/Boolean;
    .end local v20    # "termsInfoButton":Landroid/widget/ImageButton;
    :cond_e
    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 417
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    .line 419
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLargeImagePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v21

    sget-object v22, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 420
    invoke-virtual/range {v21 .. v22}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v21

    const v22, 0x7f020194

    .line 421
    invoke-virtual/range {v21 .. v22}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v21

    .line 422
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_a

    .line 434
    .restart local v9    # "notInterestedButton":Landroid/widget/Button;
    .restart local v18    # "showNotInterestedButton":Ljava/lang/Boolean;
    :cond_f
    const/16 v21, 0x8

    goto/16 :goto_b
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 214
    return-void
.end method

.method public onMapAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "onMapAvailable"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 1135
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/MapManager;->setCallback(Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    .line 1138
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setOnMapClickListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;)V

    .line 1139
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment$13;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/offers/OfferFragment$13;-><init>(Lcom/mcdonalds/app/offers/OfferFragment;)V

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setOnMarkerClickListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;)V

    .line 1151
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v0}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->configure()V

    .line 1152
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setMyLocationEnabled(Z)V

    .line 1154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapLoaded:Z

    .line 1155
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    if-eqz v0, :cond_0

    .line 1156
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->refreshMapWidget()V

    goto :goto_0
.end method

.method public onMapClick(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V
    .locals 3
    .param p1, "latLng"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const-string v0, "onMapClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->findInStore()V

    .line 1170
    return-void
.end method

.method public onMapError(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const-string v0, "onMapError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1162
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapViewHolder:Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    :cond_0
    return-void
.end method

.method public onOfferProductSelected(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 18
    .param p1, "key"    # I
    .param p2, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v13, "onOfferProductSelected"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    if-nez p2, :cond_1

    .line 1122
    :cond_0
    return-void

    .line 1063
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mProductViews:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1064
    .local v9, "productView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;

    .line 1066
    .local v4, "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    if-eqz v9, :cond_0

    .line 1070
    const v13, 0x7f110136

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1071
    .local v8, "productName":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1074
    iget-object v13, v4, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    if-eqz v13, :cond_2

    iget-object v13, v4, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1075
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v13

    if-eqz v13, :cond_2

    iget-object v13, v4, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1076
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e005e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1080
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Ljava/lang/String;)V

    .line 1082
    const v13, 0x7f110134

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1083
    .local v11, "thumbnail":Landroid/widget/ImageView;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1085
    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v12

    .line 1086
    .local v12, "thumbnailImage":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    if-eqz v12, :cond_3

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v13

    .line 1088
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v13

    sget-object v14, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1089
    invoke-virtual {v13, v14}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v13

    .line 1090
    invoke-virtual {v13, v11}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1093
    :cond_3
    iget-object v5, v4, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1094
    .local v5, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setSelectedProductOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mSelectedOrderOfferProducts:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getView()Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mcdonalds/app/offers/OfferFragment;->refreshDataForOffer(Landroid/view/View;)V

    .line 1098
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrderPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v6

    .line 1099
    .local v6, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPrice:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPrice:Ljava/lang/Double;

    .line 1101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPriceText:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getPriceText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v13, :cond_4

    .line 1103
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalCaloriesText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-static/range {p2 .. p2}, Lcom/mcdonalds/app/util/OrderProductUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalCaloriesText:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1110
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v10

    .local v10, "size":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 1112
    move/from16 v0, p1

    if-ne v2, v0, :cond_6

    .line 1110
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1116
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;

    .line 1117
    .local v3, "item":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    iget-object v7, v3, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1118
    .local v7, "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->isBuyOneGetSame()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1119
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->onOfferProductSelected(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1024
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onPause()V

    .line 1025
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1026
    iput-boolean v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mMapUpdated:Z

    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mNeedsRefresh:Z

    .line 1030
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    :cond_0
    iput-boolean v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mNeedsRefresh:Z

    .line 1035
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1007
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 1009
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->isPunchCardOffer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mSavedPunchCardAddItemProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mSavedPunchCardAddItemProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mSavedPunchCardAddItemProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 1016
    :cond_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mNeedsRefresh:Z

    if-eqz v0, :cond_1

    .line 1017
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/offers/OfferFragment;->initModules(Landroid/view/View;)V

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mNeedsRefresh:Z

    .line 1020
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v0

    const-string v1, "order_offer_saved_state_key"

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    :cond_0
    return-void
.end method

.method protected productChoiceSelected(Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V
    .locals 6
    .param p1, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choiceIndex"    # I
    .param p3, "position"    # I

    .prologue
    const-string v2, "productChoiceSelected"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1773
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;

    .line 1775
    .local v0, "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    iget-boolean v2, v0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->isChoice:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1776
    iget-object v2, v0, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 1778
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrderPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v1

    .line 1779
    .local v1, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPrice:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPrice:Ljava/lang/Double;

    .line 1780
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mTotalPriceText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getPriceText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/offers/OfferFragment;->refreshDataForOffer(Landroid/view/View;)V

    .line 1786
    return-void
.end method

.method protected productCustomizationsUpdated(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "position"    # I

    .prologue
    const-string v2, "productCustomizationsUpdated"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1753
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment;->mItemDataList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;

    .line 1755
    .local v1, "itemData":Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;
    iget-boolean v2, v1, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->isChoice:Z

    if-eqz v2, :cond_0

    .line 1757
    iget-object v2, v1, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    iget v3, v1, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->choiceIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 1758
    .local v0, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 1764
    .end local v0    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/offers/OfferFragment;->refreshDataForOffer(Landroid/view/View;)V

    .line 1765
    return-void

    .line 1760
    :cond_0
    iget-object v2, v1, Lcom/mcdonalds/app/offers/OfferFragment$OfferItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    goto :goto_0
.end method
