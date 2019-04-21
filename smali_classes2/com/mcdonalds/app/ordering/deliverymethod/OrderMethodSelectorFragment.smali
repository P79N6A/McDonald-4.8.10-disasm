.class public Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;
    }
.end annotation


# static fields
.field private static final DELIVERY_DATE_FORMATTER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mAsapETAText:Landroid/widget/TextView;

.field private mAsapEtaDate:Ljava/util/Date;

.field private mAsapSelected:Z

.field private mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

.field private mCalEnd:Ljava/util/Calendar;

.field private mCalStart:Ljava/util/Calendar;

.field private mChosenDate:Ljava/util/Date;

.field private mCollapseButton:Landroid/widget/ImageButton;

.field private mContinueButton:Landroid/widget/Button;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mDateSet:Z

.field private mDeliveryAddress:Ljava/lang/String;

.field private mDeliveryDate:Ljava/util/Calendar;

.field private mDeliveryEnabled:Ljava/lang/Boolean;

.field private mDeliveryLayout:Landroid/view/View;

.field private mDeliveryLoggedOutLayout:Landroid/view/View;

.field private mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

.field private mDeliverySaveButton:Landroid/widget/Button;

.field private mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mDeliveryStoreSelected:Z

.field private mDeliveryTime:Ljava/util/Date;

.field private mExpanded:Z

.field private mExpandedContent:Landroid/view/View;

.field private mExternalDeliveryView:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

.field private mIndicators:[Landroid/widget/RadioButton;

.field private mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

.field private mLoggedIn:Z

.field private mMethodSelectorDelivery:Landroid/widget/RadioButton;

.field private mMethodSelectorGroup:Landroid/widget/RadioGroup;

.field private mMethodSelectorPickup:Landroid/widget/RadioButton;

.field private mMinutesUntilEarliestOrder:I

.field private mMinutesUntilLatestOrder:I

.field private final mOnStorePageChange:Lcom/mcdonalds/app/util/OnPageSelectListener;

.field private mOrderFrom:Landroid/widget/TextView;

.field private mOrderWhenText:Landroid/widget/TextView;

.field private mOrderWhereButton:Landroid/widget/Button;

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mPickupLayout:Landroid/view/View;

.field private mPreviousState:I

.field private mSchedDeliveryDateSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

.field private mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mSendToDeliveryWebsite:Z

.field private mState:I

.field private mStorePager:Landroid/support/v4/view/ViewPager;

.field private mStoreSelected:Z

.field private mStoresAdapter:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;

.field private mTimeSet:Z

.field private mTitle:Landroid/widget/TextView;

.field private mWarningTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->NAME:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$1;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->DELIVERY_DATE_FORMATTER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 151
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    .line 154
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpanded:Z

    .line 938
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$18;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$18;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOnStorePageChange:Lcom/mcdonalds/app/util/OnPageSelectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->initStorePager()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoresAdapter:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSchedDeliveryDateSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhenText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStoreSelected:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->verifyDeliverySaveButtonState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->updateViewsForStateChange()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->navigateToAddressFragment()V

    return-void
.end method

.method static synthetic access$1802(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelected:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$1902"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTimeSet:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDateSet:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mChosenDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mChosenDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilLatestOrder:I

    return v0
.end method

.method static synthetic access$2300(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCalEnd:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCalStart:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryTime:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryTime:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilEarliestOrder:I

    return v0
.end method

.method static synthetic access$2700(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPreviousState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPreviousState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$2900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSendToDeliveryWebsite:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mLoggedIn:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getDeliveryWindow()V

    return-void
.end method

.method static synthetic access$3300(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->updateView()V

    return-void
.end method

.method static synthetic access$3600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhereButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3700"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->setWhereButtonTextSize(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$3800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->initMethodSelectorGroup()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

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

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->finalizeDeliveryOrder(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/models/Order;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;)Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$702"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapEtaDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapEtaDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.deliverymethod.OrderMethodSelectorFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapETAText:Landroid/widget/TextView;

    return-object v0
.end method

.method private collapseContent(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v4, 0x1

    const-string v1, "collapseContent"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f05001f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1122
    .local v0, "clockwiseRotation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1123
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1125
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCollapseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$20;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$20;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/AsyncListener;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1134
    return-void
.end method

.method private expandContent(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const-wide/16 v6, 0x190

    const/4 v4, 0x1

    const-string v1, "expandContent"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f05001e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1050
    .local v0, "counterClockwiseRotation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1051
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1053
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCollapseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1054
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCollapseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    .line 1056
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$19;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$19;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1077
    return-void
.end method

.method private finalizeDeliveryOrder(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "deliveryOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v4, 0x1

    const-string v1, "finalizeDeliveryOrder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    invoke-virtual {p2, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 773
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 774
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 775
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 776
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 780
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$15;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$15;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCatalogUpdated(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 798
    return-void
.end method

.method private getDeliveryWindow()V
    .locals 11

    .prologue
    const v10, 0xea60

    const-string v5, "getDeliveryWindow"

    const/4 v8, 0x0

    invoke-static {p0, v5, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    iget v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilEarliestOrder:I

    if-nez v5, :cond_1

    .line 1083
    const v4, 0xea60

    .line 1084
    .local v4, "minuteInMillis":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1086
    .local v0, "currentTimeMillis":J
    const-string v5, "ordering"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 1088
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMinAdvanceOrderTime()I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilEarliestOrder:I

    .line 1089
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMaxAdvanceOrderTime()I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilLatestOrder:I

    .line 1093
    iget v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilEarliestOrder:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilLatestOrder:I

    if-nez v5, :cond_0

    .line 1094
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMinMinutesToAdvOrder()I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilEarliestOrder:I

    .line 1095
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMaxMinutesToAdvOrder()I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilLatestOrder:I

    .line 1102
    :cond_0
    iget v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilEarliestOrder:I

    mul-int/2addr v5, v10

    int-to-long v8, v5

    add-long v6, v0, v8

    .line 1103
    .local v6, "startTimeMillis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCalStart:Ljava/util/Calendar;

    .line 1104
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCalStart:Ljava/util/Calendar;

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1106
    iget v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMinutesUntilLatestOrder:I

    mul-int/2addr v5, v10

    int-to-long v8, v5

    add-long v2, v0, v8

    .line 1107
    .local v2, "endTimeMillis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCalEnd:Ljava/util/Calendar;

    .line 1108
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCalEnd:Ljava/util/Calendar;

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1110
    .end local v0    # "currentTimeMillis":J
    .end local v2    # "endTimeMillis":J
    .end local v4    # "minuteInMillis":I
    .end local v6    # "startTimeMillis":J
    :cond_1
    return-void
.end method

.method private getStoresWithOrdering(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "storeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v4, "getStoresWithOrdering"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v3, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-nez p1, :cond_1

    .line 935
    :cond_0
    return-object v3

    .line 927
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 928
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 930
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 931
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initMethodSelectorGroup()V
    .locals 3

    .prologue
    const-string v1, "initMethodSelectorGroup"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 811
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.ordering.clearBasketOnOrderTypeChange"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 813
    .local v0, "mClearBasketOnOrderTypeChange":Z
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorPickup:Landroid/widget/RadioButton;

    new-instance v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$16;

    invoke-direct {v2, p0, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$16;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorDelivery:Landroid/widget/RadioButton;

    new-instance v2, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;

    invoke-direct {v2, p0, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    return-void
.end method

.method private initStorePager()V
    .locals 12

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x0

    const-string v9, "initStorePager"

    const/4 v11, 0x0

    invoke-static {p0, v9, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v7, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v1, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 877
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 878
    .local v0, "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_1

    .line 880
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 884
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 885
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 886
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v9

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v11

    if-ne v9, v11, :cond_0

    .line 887
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 892
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 894
    invoke-direct {p0, v7}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getStoresWithOrdering(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 896
    .local v6, "storeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v2, 0x1

    .line 898
    .local v2, "hasOrdering":Z
    :goto_1
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 899
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderFrom:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    move v9, v8

    :goto_2
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStorePager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_4

    move v9, v8

    :goto_3
    invoke-virtual {v11, v9}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 901
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mWarningTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    move v9, v10

    :goto_4
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x2

    if-lt v9, v11, :cond_7

    .line 904
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mIndicators:[Landroid/widget/RadioButton;

    array-length v9, v9

    if-ge v3, v9, :cond_7

    .line 905
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mIndicators:[Landroid/widget/RadioButton;

    aget-object v11, v9, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    move v9, v8

    :goto_6
    invoke-virtual {v11, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 904
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v2    # "hasOrdering":Z
    .end local v3    # "i":I
    :cond_2
    move v2, v8

    .line 896
    goto :goto_1

    .restart local v2    # "hasOrdering":Z
    :cond_3
    move v9, v10

    .line 899
    goto :goto_2

    :cond_4
    move v9, v10

    .line 900
    goto :goto_3

    :cond_5
    move v9, v8

    .line 901
    goto :goto_4

    .restart local v3    # "i":I
    :cond_6
    move v9, v10

    .line 905
    goto :goto_6

    .line 909
    .end local v3    # "i":I
    :cond_7
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoresAdapter:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;

    if-nez v8, :cond_8

    .line 910
    new-instance v8, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;

    invoke-direct {v8, p0, v6}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/List;)V

    iput-object v8, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoresAdapter:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;

    .line 911
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStorePager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoresAdapter:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 916
    :goto_7
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStorePager:Landroid/support/v4/view/ViewPager;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 917
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStorePager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOnStorePageChange:Lcom/mcdonalds/app/util/OnPageSelectListener;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 918
    return-void

    .line 913
    :cond_8
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoresAdapter:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;

    invoke-virtual {v8, v6}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;->setStores(Ljava/util/List;)V

    .line 914
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoresAdapter:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$StorePagerFragmentAdapter;->notifyDataSetChanged()V

    goto :goto_7
.end method

.method private navigateToAddressFragment()V
    .locals 4

    .prologue
    const-string v1, "navigateToAddressFragment"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "/checkout/delivery"

    .line 751
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "On click"

    .line 752
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "Delivery Address"

    .line 753
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 754
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v2

    .line 750
    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 756
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 757
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "update_default"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 759
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 760
    const-class v1, Lcom/mcdonalds/app/account/ModifyAddressesActivity;

    sget-object v2, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->NAME:Ljava/lang/String;

    const/16 v3, 0x1882

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 767
    :cond_0
    return-void
.end method

.method private setWhereButtonTextSize(I)V
    .locals 4
    .param p1, "sizeInSP"    # I

    .prologue
    const-string v0, "setWhereButtonTextSize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhereButton:Landroid/widget/Button;

    const/4 v1, 0x2

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1276
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhereButton:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$22;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$22;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 1284
    return-void
.end method

.method private setupStoreSelectionController()V
    .locals 3

    .prologue
    const-string v1, "setupStoreSelectionController"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, "storeSelectionController":Lcom/mcdonalds/app/ordering/start/StoreSelectionController;
    new-instance v1, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$2;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->addListener(Lcom/mcdonalds/app/storelocator/StoreLocationListener;)V

    .line 239
    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 240
    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    .line 242
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isFirstTimeOrdering()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    .line 243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    .line 244
    return-void

    .line 242
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "updateView"

    invoke-static {p0, v0, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1311
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 1312
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1314
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$24;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$24;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    .line 1311
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1359
    return-void
.end method

.method private updateViewsForStateChange()V
    .locals 7

    .prologue
    const v6, 0x7f0905e7

    const v5, 0x7f110199

    const v4, 0x7f0901de

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "updateViewsForStateChange"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    iget v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1045
    :goto_0
    return-void

    .line 950
    :pswitch_0
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    .line 952
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorPickup:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorDelivery:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExternalDeliveryView:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPickupLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLoggedOutLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f110198

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 962
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderFrom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 970
    :pswitch_1
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    .line 972
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorPickup:Landroid/widget/RadioButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorDelivery:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExternalDeliveryView:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPickupLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 979
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLoggedOutLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f110198

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 982
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderFrom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 989
    :pswitch_2
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    .line 991
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLoggedOutLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPickupLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExternalDeliveryView:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorPickup:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorDelivery:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1001
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1010
    :pswitch_3
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    .line 1011
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorPickup:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorDelivery:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExternalDeliveryView:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPickupLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLoggedOutLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1021
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderFrom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090603

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1028
    :pswitch_4
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    .line 1030
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorPickup:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorDelivery:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLoggedOutLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExternalDeliveryView:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPickupLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1041
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private verifyDeliverySaveButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v4, "verifyDeliverySaveButtonState"

    invoke-static {p0, v4, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 1168
    .local v0, "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    const/4 v2, 0x0

    .line 1169
    .local v2, "timeWithinWindow":Z
    iget-boolean v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDateSet:Z

    if-eqz v4, :cond_0

    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTimeSet:Z

    iget-boolean v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelected:Z

    if-nez v4, :cond_4

    move v4, v1

    :goto_0
    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 1171
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryTime:Ljava/util/Date;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCalStart:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryTime:Ljava/util/Date;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCalEnd:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1172
    const/4 v2, 0x1

    .line 1173
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setNormalOrder(Z)V

    .line 1185
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStoreSelected:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDateSet:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTimeSet:Z

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelected:Z

    if-eqz v4, :cond_6

    .line 1187
    .local v1, "isDeliveryOK":Z
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliverySaveButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1188
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliverySaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    const v3, 0x7f02008d

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1190
    if-eqz v1, :cond_3

    .line 1191
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDate(Ljava/util/Date;)V

    .line 1192
    sget-object v3, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->DELIVERY_DATE_FORMATTER:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDateString(Ljava/lang/String;)V

    .line 1194
    :cond_3
    return-void

    .end local v1    # "isDeliveryOK":Z
    :cond_4
    move v4, v3

    .line 1169
    goto :goto_0

    .line 1176
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 1177
    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f0905d4

    .line 1178
    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 1179
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 1180
    invoke-virtual {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 1181
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1

    :cond_6
    move v1, v3

    .line 1185
    goto :goto_2

    .line 1188
    .restart local v1    # "isDeliveryOK":Z
    :cond_7
    const v3, 0x7f02008b

    goto :goto_3
.end method


# virtual methods
.method public changeState(Z)V
    .locals 4
    .param p1, "change"    # Z

    .prologue
    const-string v0, "changeState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    if-nez p1, :cond_0

    .line 802
    iget v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPreviousState:I

    iput v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->updateViewsForStateChange()V

    .line 805
    return-void
.end method

.method public getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const-string v0, "getSelectedStore"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-nez v0, :cond_0

    .line 1156
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 1158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1289
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1291
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->setupStoreSelectionController()V

    .line 1292
    new-instance v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$23;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$23;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->expandContent(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1303
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1198
    const/16 v1, 0x12

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1200
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->initStorePager()V

    .line 1201
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    check-cast v1, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->refresh()V

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1208
    const/4 v1, 0x4

    iput v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    .line 1210
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ADDRESS_RETURN_KEY"

    .line 1211
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 1215
    .local v0, "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    if-eqz v0, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhereButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->setWhereButtonTextSize(I)V

    .line 1222
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0906ff

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 1223
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1226
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 1223
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public onBackPressed(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v0, "onBackPressed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->collapseContent(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryEnabled:Ljava/lang/Boolean;

    .line 174
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 175
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v3, "modules.delivery.sendToDeliveryWebsite"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSendToDeliveryWebsite:Z

    .line 177
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mLoggedIn:Z

    .line 180
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSendToDeliveryWebsite:Z

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x5

    iput v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    .line 197
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isFirstTimeOrdering()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStoreSelected:Z

    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    .line 199
    return-void

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mLoggedIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    .line 187
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getDeliveryWindow()V

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    .line 191
    :cond_2
    iput v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    goto :goto_0

    .line 194
    :cond_3
    iput v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mState:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 197
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    const v13, 0x7f04006e

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 251
    .local v7, "rootView":Landroid/view/View;
    const v13, 0x7f110067

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mTitle:Landroid/widget/TextView;

    .line 252
    const v13, 0x7f110196

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    .line 253
    const v13, 0x7f110182

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCollapseButton:Landroid/widget/ImageButton;

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f1101a8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    .line 261
    .local v5, "deliveryWhenSelector":Landroid/widget/RadioGroup;
    const v13, 0x7f1101ad

    invoke-virtual {v5, v13}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSchedDeliveryDateSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f110197

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorGroup:Landroid/widget/RadioGroup;

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f110198

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorPickup:Landroid/widget/RadioButton;

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f110199

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mMethodSelectorDelivery:Landroid/widget/RadioButton;

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f11019a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mPickupLayout:Landroid/view/View;

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f1101a3

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLayout:Landroid/view/View;

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f1101b1

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLoggedOutLayout:Landroid/view/View;

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f1101b0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliverySaveButton:Landroid/widget/Button;

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f1101a5

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhereButton:Landroid/widget/Button;

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f1101a7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhenText:Landroid/widget/TextView;

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f11019b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderFrom:Landroid/widget/TextView;

    .line 277
    const v13, 0x7f1101a9

    invoke-virtual {v5, v13}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    const v14, 0x7f1101ac

    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapETAText:Landroid/widget/TextView;

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f11019e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mStorePager:Landroid/support/v4/view/ViewPager;

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExpandedContent:Landroid/view/View;

    const v14, 0x7f1101a2

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mExternalDeliveryView:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCollapseButton:Landroid/widget/ImageButton;

    new-instance v14, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$3;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v13, 0x7f1101a1

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 291
    .local v6, "findAnotherButton":Landroid/widget/Button;
    const v13, 0x7f110097

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mContinueButton:Landroid/widget/Button;

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSchedDeliveryDateSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    const v14, 0x7f1101af

    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 294
    .local v8, "schedDeliveryDateText":Landroid/widget/TextView;
    const v13, 0x7f1101ad

    invoke-virtual {v5, v13}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    .line 295
    .local v9, "schedDeliveryTimeSelector":Lcom/mcdonalds/app/widget/CheckableRelativeLayout;
    const v13, 0x7f1101af

    invoke-virtual {v9, v13}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 297
    .local v10, "schedDeliveryTimeText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLoggedOutLayout:Landroid/view/View;

    const v14, 0x7f1101b4

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 298
    .local v11, "signInText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryLoggedOutLayout:Landroid/view/View;

    const v14, 0x7f1101b3

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 303
    .local v12, "signUpButton":Landroid/widget/Button;
    new-instance v13, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$4;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mContinueButton:Landroid/widget/Button;

    new-instance v14, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$5;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getDeliveryWindow()V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliverySaveButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliverySaveButton:Landroid/widget/Button;

    new-instance v14, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 426
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    .line 427
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v13

    .line 428
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v13

    .line 429
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryAddress:Ljava/lang/String;

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhereButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryAddress:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 433
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->setWhereButtonTextSize(I)V

    .line 435
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 436
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    .line 437
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v13

    .line 438
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    .line 439
    .local v2, "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    if-eqz v2, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-nez v13, :cond_1

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0906ff

    invoke-static {v13, v14}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 442
    const-string v13, "delivery"

    invoke-static {v13}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 446
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v15

    new-instance v16, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$7;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 443
    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 523
    .end local v2    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhereButton:Landroid/widget/Button;

    new-instance v14, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$8;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhenText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    new-instance v14, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$9;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnCheckedChangeListener(Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    new-instance v14, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v8, v10}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$10;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/app/widget/CheckableRelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSchedDeliveryDateSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    new-instance v14, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v9, v8}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$11;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Landroid/widget/TextView;Lcom/mcdonalds/app/widget/CheckableRelativeLayout;Landroid/widget/TextView;)V

    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    new-instance v13, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10, v9}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$12;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Landroid/widget/TextView;Lcom/mcdonalds/app/widget/CheckableRelativeLayout;)V

    invoke-virtual {v9, v13}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    new-instance v13, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$13;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$13;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901df

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    new-instance v13, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$14;-><init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    const v13, 0x7f11019d

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mWarningTextView:Landroid/widget/TextView;

    .line 746
    return-object v7

    .line 491
    .restart local v2    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapEtaDate:Ljava/util/Date;

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapEtaDate:Ljava/util/Date;

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "asapEtaDateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapEtaDate:Ljava/util/Date;

    if-eqz v13, :cond_2

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapETAText:Landroid/widget/TextView;

    const v14, 0x7f0901e1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapETAText:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setVisibility(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSchedDeliveryDateSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setVisibility(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mOrderWhenText:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    .line 505
    .local v4, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 506
    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapEtaDate:Ljava/util/Date;

    invoke-virtual {v4, v13}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDate(Ljava/util/Date;)V

    .line 508
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDateString(Ljava/lang/String;)V

    .line 509
    sget-object v13, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v4, v13}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 510
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryStoreSelected:Z

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    if-nez v13, :cond_3

    .line 513
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    .line 515
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mDeliveryDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mAsapEtaDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->verifyDeliverySaveButtonState()V

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->updateViewsForStateChange()V

    goto/16 :goto_0
.end method

.method public onInfoButtonPressed(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v1, "onInfoButtonPressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    const-string v1, "/restaurant-locator"

    const-string v2, "Info Icon"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1142
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_store_detail"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1143
    const-string v1, "extra_store_section"

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    const-class v1, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1146
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1307
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 1308
    return-void
.end method

.method public onStoreSelected(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "onStoreSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mSelectedStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1151
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 1152
    return-void
.end method
