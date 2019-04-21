.class public Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "StoreDetailsFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/MapManager$Callback;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private final ADD_TO_FAVORITES_REQUEST_CODE:I

.field private final mAddToFavoritesListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressDetails:Landroid/widget/TextView;

.field private mAddressTitle:Landroid/widget/TextView;

.field private mCurrentRestaurantBanner:Landroid/view/View;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mDayOfWeek:I

.field private mEatHereButton:Landroid/view/View;

.field private mFacilities:Landroid/widget/TextView;

.field private mFavoritesButton:Landroid/widget/Button;

.field private mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

.field private mIsCurrentStore:Z

.field private mIsFavorite:Z

.field private mItemListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

.field private mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private final mRemoveStoreListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRenameButton:Landroid/widget/Button;

.field private mSelectedNickName:Ljava/lang/String;

.field private mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mSelectedStoreId:Ljava/lang/Integer;

.field private mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

.field private mStoreDistance:Landroid/widget/TextView;

.field private mStoreHours:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 72
    const/16 v0, 0x17

    iput v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->ADD_TO_FAVORITES_REQUEST_CODE:I

    .line 74
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 75
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreId:Ljava/lang/Integer;

    .line 76
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 78
    iput-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsCurrentStore:Z

    .line 79
    iput-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsFavorite:Z

    .line 456
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;-><init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddToFavoritesListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 483
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;-><init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mRemoveStoreListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsCurrentStore:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

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

    .line 64
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsCurrentStore:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->goToRenameStoreFragment(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFavoritesButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mRenameButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedNickName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$1600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddressTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Ljava/lang/Integer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/app/storelocator/PagerItemListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mItemListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mCurrentRestaurantBanner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mEatHereButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsFavorite:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsFavorite:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreDetailsFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mRemoveStoreListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method private addStoreToFavorites()V
    .locals 5

    .prologue
    const-string v0, "addStoreToFavorites"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901fb

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 437
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 438
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedNickName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddToFavoritesListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 437
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->renameStoreInFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 454
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901e3

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 447
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 448
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedNickName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddToFavoritesListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 447
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method private checkForPendingAddToFavorites()V
    .locals 4

    .prologue
    const-string v2, "checkForPendingAddToFavorites"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    const-string v2, "EXTRA_SAVING_FAVORITE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 145
    .local v1, "pendingAddToFavorites":Z
    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->addStoreToFavorites()V

    .line 150
    const-string v2, "EXTRA_SAVING_FAVORITE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 151
    const-string v2, "StoreLocatorFragment.SAVING_FAVORITE_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 152
    const-string v2, "saving_fav_section"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 153
    const-string v2, "saving_fav_detail"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 156
    .end local v1    # "pendingAddToFavorites":Z
    :cond_0
    return-void
.end method

.method private detailLogic()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const-string v6, "detailLogic"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 552
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 556
    :goto_0
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddressTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    const-string v0, ""

    .line 560
    .local v0, "addrDetails":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress2()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getState()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 578
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddressDetails:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    :goto_1
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 584
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 585
    .local v5, "word":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0xffff01

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 586
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    .end local v5    # "word":Landroid/text/Spannable;
    :goto_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->getDailyStoreHoursString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "storeHoursString":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 593
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mStoreHours:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :goto_3
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mStoreDistance:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v7, v8}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    const/4 v2, 0x1

    .line 604
    .local v2, "firstPass":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getFacilityNames()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getFacilityNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 606
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getFacilityNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 607
    .local v1, "facilityName":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 608
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const/4 v2, 0x0

    .line 612
    goto :goto_4

    .line 554
    .end local v0    # "addrDetails":Ljava/lang/String;
    .end local v1    # "facilityName":Ljava/lang/String;
    .end local v2    # "firstPass":Z
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "storeHoursString":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPublicName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 580
    .restart local v0    # "addrDetails":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddressDetails:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 588
    :cond_7
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 595
    .restart local v4    # "storeHoursString":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mStoreHours:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 615
    .restart local v2    # "firstPass":Z
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 616
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFacilities:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    :cond_a
    return-void
.end method

.method private goToRenameStoreFragment(Z)V
    .locals 5
    .param p1, "addToFavorites"    # Z

    .prologue
    const-string v1, "goToRenameStoreFragment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    const/16 v0, 0x16

    .line 376
    .local v0, "requestCode":I
    if-eqz p1, :cond_0

    .line 377
    const/16 v0, 0x17

    .line 382
    :goto_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->startStoreNicknamingActivity(I)V

    .line 383
    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rename this restaurant"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSignInActivity(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "startSignInActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    const-class v0, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v1, "signin"

    invoke-virtual {p0, v0, v1, p1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 430
    return-void
.end method

.method private startStoreNicknamingActivity(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    const-string v0, "startStoreNicknamingActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreNicknamingActivity;

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 426
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const v0, 0x7f0908a4

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 388
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 395
    const/16 v3, 0x17

    if-eq p1, v3, :cond_0

    const/16 v3, 0x16

    if-ne p1, v3, :cond_1

    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 398
    const-string v3, "name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedNickName:Ljava/lang/String;

    .line 399
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedNickName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 401
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_store_detail"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 403
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 404
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v3, "name"

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedNickName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v3, "EXTRA_STORE_ID"

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 407
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->addStoreToFavorites()V

    .line 421
    .end local v1    # "resultIntent":Landroid/content/Intent;
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v3, "EXTRA_SAVING_FAVORITE"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    const-string v3, "saving_fav_detail"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    const-string v3, "StoreLocatorFragment.SAVING_FAVORITE_ID"

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string v3, "saving_fav_section"

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 417
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->startSignInActivity(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 161
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoresManager;->getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/storelocator/StoresManager;->getController()Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v5

    .line 163
    .local v5, "storeLocatorController":Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    new-instance v1, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;-><init>(Landroid/content/Context;)V

    .line 164
    .local v1, "controller":Lcom/mcdonalds/app/ordering/start/StoreSelectionController;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v9, "extra_store_detail"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 165
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v9, "extra_store_section"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, "section":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v9, "extra_store_controller"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 168
    .local v2, "isLocatorController":Z
    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v6, "stores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v1, v6}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->setNearbyStores(Ljava/util/List;)V

    .line 174
    .end local v6    # "stores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 175
    .local v0, "c":Ljava/util/Calendar;
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mDayOfWeek:I

    .line 177
    if-eqz v2, :cond_3

    move-object v7, v5

    :goto_0
    check-cast v7, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 178
    if-eqz v2, :cond_4

    move-object v7, v5

    :goto_1
    check-cast v7, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    .line 179
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    check-cast v7, Lcom/mcdonalds/app/storelocator/PagerItemListener;

    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mItemListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .line 181
    if-eqz v4, :cond_1

    .line 183
    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 184
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreId:Ljava/lang/Integer;

    .line 186
    if-eq v3, v10, :cond_1

    .line 187
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->values()[Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v7

    aget-object v7, v7, v3

    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 191
    :cond_1
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 192
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    iget-object v9, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v9}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v9

    if-ne v7, v9, :cond_5

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsCurrentStore:Z

    .line 194
    const-string v7, "customer"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 196
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v7, :cond_2

    .line 197
    const/16 v7, 0x13

    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    .line 199
    :cond_2
    return-void

    :cond_3
    move-object v7, v1

    .line 177
    goto :goto_0

    :cond_4
    move-object v7, v1

    .line 178
    goto :goto_1

    :cond_5
    move v7, v8

    .line 192
    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 204
    const v4, 0x7f040117

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 206
    .local v3, "rootView":Landroid/view/View;
    const v4, 0x7f1103d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mCurrentRestaurantBanner:Landroid/view/View;

    .line 207
    const v4, 0x7f1103d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddressTitle:Landroid/widget/TextView;

    .line 208
    const v4, 0x7f1103d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mAddressDetails:Landroid/widget/TextView;

    .line 209
    const v4, 0x7f1103d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 210
    const v4, 0x7f1103d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mStoreHours:Landroid/widget/TextView;

    .line 211
    const v4, 0x7f1103d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mStoreDistance:Landroid/widget/TextView;

    .line 212
    const v4, 0x7f1103da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFacilities:Landroid/widget/TextView;

    .line 214
    const v4, 0x7f1103de

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 215
    .local v2, "mDirectionsButton":Landroid/widget/Button;
    const v4, 0x7f1103dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mEatHereButton:Landroid/view/View;

    .line 216
    const v4, 0x7f1103dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mRenameButton:Landroid/widget/Button;

    .line 217
    const v4, 0x7f1103df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFavoritesButton:Landroid/widget/Button;

    .line 219
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->canBeFavorited()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->isCurrentStoreSelectionMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 220
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFavoritesButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    :goto_0
    new-instance v4, Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7, p0}, Lcom/mcdonalds/app/storelocator/MapManager;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 227
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 228
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v7, 0x7f11028d

    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 229
    invoke-virtual {v8}, Lcom/mcdonalds/app/storelocator/MapManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const/4 v7, 0x0

    .line 230
    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 234
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->detailLogic()V

    .line 237
    iget-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsCurrentStore:Z

    if-nez v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mCurrentRestaurantBanner:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 244
    iget-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsCurrentStore:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 245
    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->isCurrentStoreSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 246
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mEatHereButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mEatHereButton:Landroid/view/View;

    new-instance v7, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;-><init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mEatHereButton:Landroid/view/View;

    iget-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsCurrentStore:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 272
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->getCloseStatus(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "closeSting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 274
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mEatHereButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .end local v0    # "closeSting":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 280
    iput-boolean v9, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mIsFavorite:Z

    .line 282
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFavoritesButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0906a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFavoritesButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    const v6, 0x1030046

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 284
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFavoritesButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    const v6, 0x106000b

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 293
    :goto_3
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFavoritesButton:Landroid/widget/Button;

    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;-><init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mRenameButton:Landroid/widget/Button;

    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$4;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$4;-><init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;-><init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 354
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$6;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$6;-><init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 369
    return-object v3

    .line 222
    .end local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mFavoritesButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 248
    .restart local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    :cond_5
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mEatHereButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v4, v6

    .line 269
    goto/16 :goto_2

    .line 290
    :cond_7
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mRenameButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method public onMapAvailable()V
    .locals 6

    .prologue
    const-string v2, "onMapAvailable"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    if-nez v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/MapManager;->getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v0

    .line 528
    .local v0, "map":Lcom/mcdonalds/app/storelocator/maps/McdMap;
    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v0}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->configure()V

    .line 534
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_0

    .line 535
    new-instance v1, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    .line 537
    .local v1, "position":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    new-instance v2, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;-><init>()V

    .line 538
    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->position(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 539
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    move-result-object v2

    const v3, 0x7f0201ce

    .line 540
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->icon(I)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    move-result-object v2

    .line 537
    invoke-interface {v0, v2}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->addMarker(Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .line 542
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/MapUtils;->with(Landroid/content/Context;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v2

    .line 543
    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map(Lcom/mcdonalds/app/storelocator/maps/McdMap;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 544
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->store(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    .line 545
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->move(F)V

    goto :goto_0
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

    .line 512
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 515
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 112
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 113
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getStoreOrderingCapabilties(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 121
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 126
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->checkForPendingAddToFavorites()V

    .line 127
    return-void
.end method
