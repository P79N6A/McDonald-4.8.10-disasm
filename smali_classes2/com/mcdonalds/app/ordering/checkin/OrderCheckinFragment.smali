.class public Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OrderCheckinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/ordering/IntentFragment;
.implements Lcom/mcdonalds/app/ordering/checkin/QRCodeListener;


# static fields
.field public static sWeChatPaymentRespString:Ljava/lang/String;

.field private static final weChatAppId:Ljava/lang/String;

.field public static wechatPaymentResult:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private mCheckinResponseListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected mCode:Ljava/lang/String;

.field protected mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mCvvDialogShown:Z

.field protected mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

.field protected mDialog:Landroid/support/v7/app/AlertDialog;

.field protected mEatInButton:Landroid/view/View;

.field private mIsStartedActivityIndicator:Z

.field private mLastAttemptTime:J

.field protected mMainView:Landroid/view/View;

.field protected mMainViewVisible:Z

.field protected mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private final mOrderResponseListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderStoreId:I

.field protected mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field protected mPassword:Ljava/lang/String;

.field private mProcessingScannedCode:Z

.field private mProductsRemoved:Z

.field private mRequiresCVV:Z

.field private mRequiresPassword:Z

.field private mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field protected mShouldLaunchQRCodeScanner:Z

.field private mStartTimeToCommunicate:J

.field private final mStoreInfoAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field protected mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

.field private final mStoreLocatorResponseListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mTableServiceButton:Landroid/view/View;

.field protected mTakeOutButton:Landroid/view/View;

.field private mTimeBetweenAttemptsDTScanFail:J

.field private mTimeoutDTScanFail:J

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

.field private final mUpdateCardsListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private preparePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field private subProductError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x1

    sput v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->wechatPaymentResult:I

    .line 171
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v0

    const v1, 0x7f090a8e

    .line 172
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->weChatAppId:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mShouldLaunchQRCodeScanner:Z

    .line 153
    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mRequiresCVV:Z

    .line 154
    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mRequiresPassword:Z

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    .line 547
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mStoreLocatorResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 570
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$5;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mStoreInfoAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 582
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 810
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$9;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$9;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1419
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$16;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCheckinResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1596
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$18;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$18;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUpdateCardsListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->normalCheckinFlow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->displayMethods()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->updatePayments()V

    return-void
.end method

.method static synthetic access$1302(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

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

    .line 115
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mIsStartedActivityIndicator:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->payStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$1500"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showDialogHint(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$1602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mRequiresPassword:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$1702"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mRequiresCVV:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

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

    .line 115
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCvvDialogShown:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$1900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->updatePaymentType()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderStoreId:I

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mStoreInfoAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->displayRestaurantMismatchFragment()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->finishCheckin()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

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

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->processPreparePaymentResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)Lcom/mcdonalds/app/ordering/alipay/PayResult;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->doAlipayPayment()Lcom/mcdonalds/app/ordering/alipay/PayResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$800"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.checkin.OrderCheckinFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCheckinResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method private checkErrorsAndCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 3
    .param p1, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    const-string v0, "checkErrorsAndCheckIn"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->haveErrors(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->isNotCurbsideWithCash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->checkin()V

    .line 928
    :cond_0
    return-void
.end method

.method private cvvEntered()Z
    .locals 2

    .prologue
    const-string v0, "cvvEntered"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getCVV()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayMethods()V
    .locals 2

    .prologue
    const-string v0, "displayMethods"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainViewVisible:Z

    .line 495
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    return-void
.end method

.method private displayOrderNotReadyDialog()V
    .locals 3

    .prologue
    const-string v0, "displayOrderNotReadyDialog"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1164
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09030f

    .line 1165
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090106

    new-instance v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$12;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$12;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1166
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->setPositiveButtonText(ILandroid/view/View$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v0

    .line 1171
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1172
    return-void
.end method

.method private displayRestaurantMismatchFragment()V
    .locals 3

    .prologue
    const-string v0, "displayRestaurantMismatchFragment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 579
    const-class v0, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v1, "RestaurantMismatchFragment"

    const/16 v2, 0xff7

    invoke-virtual {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 580
    return-void
.end method

.method private doAlipayPayment()Lcom/mcdonalds/app/ordering/alipay/PayResult;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "doAlipayPayment"

    invoke-static {p0, v4, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1348
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 1349
    .local v2, "signature":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1350
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 1351
    .local v0, "alipayPayTask":Lcom/alipay/sdk/app/PayTask;
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1352
    .local v1, "rawResult":Ljava/lang/String;
    new-instance v3, Lcom/mcdonalds/app/ordering/alipay/PayResult;

    invoke-direct {v3, v1}, Lcom/mcdonalds/app/ordering/alipay/PayResult;-><init>(Ljava/lang/String;)V

    .line 1383
    .end local v0    # "alipayPayTask":Lcom/alipay/sdk/app/PayTask;
    .end local v1    # "rawResult":Ljava/lang/String;
    .end local v2    # "signature":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private doWechatPayment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "doWechatPayment"

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1387
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 1389
    .local v0, "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 1390
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getNoncestr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 1391
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPartnerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 1392
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPrepayid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 1393
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 1394
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 1395
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getSign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 1398
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 1407
    .end local v0    # "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    :goto_0
    return-void

    .line 1400
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1401
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090822

    .line 1402
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    .line 1403
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 1404
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1405
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private finishCheckin()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-string v5, "finishCheckin"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 684
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 685
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 686
    const-class v4, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v5, "check_in_price_different"

    const/16 v6, 0x15

    invoke-virtual {p0, v4, v5, v6}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->displayMethods()V

    goto :goto_0

    .line 694
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    const/16 v6, 0xa

    const/16 v7, 0xc

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "podString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 697
    .local v1, "podInt":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v5

    array-length v5, v5

    if-le v5, v1, :cond_3

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 698
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v5

    aget-object v0, v5, v1

    .line 699
    .local v0, "POD":Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 702
    .end local v0    # "POD":Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 706
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 708
    .local v3, "saleTypeInt":I
    if-ltz v3, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->values()[Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 710
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    if-nez v5, :cond_4

    .line 711
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->values()[Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    move-result-object v5

    aget-object v5, v5, v3

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 714
    :cond_4
    sget-object v5, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$26;->$SwitchMap$com$mcdonalds$sdk$modules$models$Order$QRCodeSaleType:[I

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 748
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v4, 0x1

    :cond_6
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainViewVisible:Z

    goto :goto_0

    .line 716
    :pswitch_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v6, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 717
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    goto :goto_1

    .line 721
    :pswitch_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v6, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 722
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    goto :goto_1

    .line 726
    :pswitch_2
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v5

    if-nez v5, :cond_5

    .line 727
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 732
    :pswitch_3
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v5

    if-nez v5, :cond_5

    .line 733
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 738
    :pswitch_4
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v6, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 739
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    goto :goto_1

    .line 743
    :pswitch_5
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v6, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 744
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    goto :goto_1

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getPriceChangeProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Ljava/util/ArrayList;
    .locals 26
    .param p1, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v23, "getPriceChangeProductCodes"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object p1, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v11, "problematicProductCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v23, v0

    .line 635
    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v23

    if-nez v23, :cond_1

    .line 677
    :cond_0
    return-object v11

    .line 639
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v21

    .line 640
    .local v21, "responseOrderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v10

    .line 642
    .local v10, "mOrderOrderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v22

    .local v22, "size":I
    :goto_0
    move/from16 v0, v22

    if-ge v8, v0, :cond_0

    .line 643
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 644
    .local v15, "productViewAfterCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 646
    .local v13, "productCodeAfterCheckIn":I
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getUnitPrice()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 647
    .local v16, "productPriceAfterCheckIn":D
    const-wide/16 v4, 0x0

    .line 649
    .local v4, "discountAmountAfterCheckIn":D
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 650
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 653
    :cond_2
    const/4 v9, 0x0

    .local v9, "j":I
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "prodSize":I
    :goto_1
    if-ge v9, v12, :cond_7

    .line 654
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 655
    .local v20, "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 657
    .local v14, "productCodeBeforeCheckIn":I
    if-eq v14, v13, :cond_4

    .line 653
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 661
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getUnitPrice()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 662
    .local v18, "productPriceBeforeCheckIn":D
    const-wide/16 v6, 0x0

    .line 664
    .local v6, "discountAmountBeforeCheckIn":D
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    if-eqz v23, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v23

    if-eqz v23, :cond_5

    .line 665
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 668
    :cond_5
    cmpl-double v23, v18, v16

    if-nez v23, :cond_6

    cmpl-double v23, v6, v4

    if-eqz v23, :cond_3

    .line 671
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v6    # "discountAmountBeforeCheckIn":D
    .end local v14    # "productCodeBeforeCheckIn":I
    .end local v18    # "productPriceBeforeCheckIn":D
    .end local v20    # "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private handleOrderNotReadyError()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-string v3, "handleOrderNotReadyError"

    const/4 v10, 0x0

    invoke-static {p0, v3, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1125
    .local v0, "currentMillis":J
    iget-wide v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mStartTimeToCommunicate:J

    sub-long v6, v0, v10

    .line 1127
    .local v6, "timeOut":J
    iget-wide v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTimeoutDTScanFail:J

    cmp-long v3, v6, v10

    if-ltz v3, :cond_0

    .line 1128
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mIsStartedActivityIndicator:Z

    .line 1129
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1131
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v3

    const v10, 0x7f09030f

    .line 1132
    invoke-virtual {v3, v10}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v3

    const v10, 0x7f090104

    new-instance v11, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$11;

    invoke-direct {v11, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$11;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1133
    invoke-virtual {v3, v10, v11}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->setPositiveButtonText(ILandroid/view/View$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;

    move-result-object v3

    .line 1140
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v2

    .line 1141
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1155
    .end local v2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 1145
    :cond_0
    iget-wide v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mLastAttemptTime:J

    sub-long v8, v0, v10

    .line 1146
    .local v8, "timeOutLastAttempt":J
    iput-wide v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mLastAttemptTime:J

    .line 1147
    iget-wide v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTimeBetweenAttemptsDTScanFail:J

    sub-long v4, v10, v8

    .line 1149
    .local v4, "diff":J
    cmp-long v3, v4, v12

    if-lez v3, :cond_1

    .line 1150
    invoke-direct {p0, v4, v5}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startNewAttempt(J)V

    goto :goto_0

    .line 1152
    :cond_1
    invoke-direct {p0, v12, v13}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startNewAttempt(J)V

    goto :goto_0
.end method

.method private handleStoreMismatch(I)V
    .locals 5
    .param p1, "storeId"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "handleStoreMismatch"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 536
    :cond_0
    iput p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderStoreId:I

    .line 538
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setNeedsUpdatedRecipes(Z)V

    .line 541
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 543
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09040e

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 544
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mStoreLocatorResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoreForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private hasPriceChanged(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Z
    .locals 10
    .param p1, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "hasPriceChanged"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v5

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 619
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 621
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 622
    .local v2, "totalizeTotalValue":D
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 624
    .local v0, "paymentTotalValue":D
    sub-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 626
    .end local v0    # "paymentTotalValue":D
    .end local v2    # "totalizeTotalValue":D
    :goto_0
    return v4

    .restart local v0    # "paymentTotalValue":D
    .restart local v2    # "totalizeTotalValue":D
    :cond_0
    move v4, v5

    .line 624
    goto :goto_0

    .end local v0    # "paymentTotalValue":D
    .end local v2    # "totalizeTotalValue":D
    :cond_1
    move v4, v5

    .line 626
    goto :goto_0
.end method

.method private haveErrors(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Z
    .locals 16
    .param p1, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    const-string v13, "haveErrors"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 932
    if-nez p1, :cond_0

    .line 933
    const/4 v13, 0x1

    .line 1100
    :goto_0
    return v13

    .line 936
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getErrorCode()I

    move-result v11

    .line 938
    .local v11, "productError":I
    if-nez v11, :cond_2

    .line 941
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v13}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldSkipOutOfStockErrorHandling(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 942
    const/4 v13, 0x0

    goto :goto_0

    .line 945
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->hasPriceChanged(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 946
    const/16 v11, -0x178b

    .line 958
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v13}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldSkipOutOfStockErrorHandling(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 959
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsOutOfStock()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 960
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductsOutOfStock(Ljava/util/List;)V

    .line 961
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getErrorCode()I

    move-result v11

    .line 965
    :cond_3
    const-string v4, ""

    .line 966
    .local v4, "fragmentName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 967
    .local v2, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 969
    .local v7, "offerCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 971
    .local v8, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 972
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v14

    if-nez v14, :cond_6

    .line 973
    if-nez v2, :cond_5

    .line 974
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .restart local v2    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_6
    if-eqz v2, :cond_4

    .line 981
    const/16 v11, -0x1f43

    .line 982
    const-string v4, "check_in_offers_not_valid"

    goto :goto_1

    .line 948
    .end local v2    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "fragmentName":Ljava/lang/String;
    .end local v7    # "offerCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->isOrderAvailableAtPOD()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 949
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 951
    :cond_8
    const-class v13, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v14, "check_out_pod_unavailable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 953
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 985
    .restart local v2    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "fragmentName":Ljava/lang/String;
    .restart local v7    # "offerCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v14

    if-nez v14, :cond_4

    .line 986
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v14

    if-nez v14, :cond_b

    .line 987
    if-nez v2, :cond_a

    .line 988
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .restart local v2    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_b
    if-eqz v2, :cond_4

    .line 994
    const/16 v11, -0x1f42

    .line 995
    const-string v4, "check_in_offers_not_valid"

    goto :goto_1

    .line 1001
    .end local v8    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_c
    sparse-switch v11, :sswitch_data_0

    .line 1053
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1054
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1004
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1005
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOfferCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1006
    const-string v4, "check_in_items_out_of_stock"

    .line 1007
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProductsRemoved:Z

    goto :goto_2

    .line 1011
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsUnavailable()Ljava/util/List;

    move-result-object v2

    .line 1012
    const-string v4, "check_in_items_unavailable"

    .line 1013
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProductsRemoved:Z

    goto :goto_2

    .line 1017
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsTimeRestriction()Ljava/util/List;

    move-result-object v2

    .line 1018
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsTimeRestriction()Ljava/util/List;

    move-result-object v7

    .line 1019
    const-string v4, "check_in_items_time_restriction"

    .line 1020
    goto :goto_2

    .line 1023
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->displayOrderNotReadyDialog()V

    .line 1024
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1027
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->handleOrderNotReadyError()V

    .line 1028
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1031
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOfferCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1032
    const-string v4, "check_in_offers_not_valid"

    .line 1033
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProductsRemoved:Z

    goto :goto_2

    .line 1039
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsNotAvailable()Ljava/util/List;

    move-result-object v2

    .line 1040
    const-string v4, "check_in_offers_not_valid"

    .line 1041
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProductsRemoved:Z

    goto :goto_2

    .line 1045
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getPriceChangeProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1046
    const-string v4, "check_in_price_different"

    .line 1047
    goto :goto_2

    .line 1057
    :cond_d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    .local v10, "problematicProductsCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_e

    .line 1060
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "size":I
    :goto_3
    if-ge v5, v12, :cond_e

    .line 1061
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1065
    .end local v5    # "i":I
    .end local v12    # "size":I
    :cond_e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v9, "problematicOffersCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_f

    .line 1067
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1068
    .local v6, "offerCode":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1072
    .end local v6    # "offerCode":Ljava/lang/Integer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v10, v13}, Lcom/mcdonalds/app/ordering/OrderUtils;->getErrorCount(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v9, v14}, Lcom/mcdonalds/app/ordering/OrderUtils;->getErrorOfferCount(Ljava/util/ArrayList;Lcom/mcdonalds/sdk/modules/models/Order;)I

    move-result v14

    add-int v3, v13, v14

    .line 1074
    .local v3, "errorCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    add-int/2addr v13, v14

    if-lt v3, v13, :cond_10

    const/16 v13, -0x1f4f

    if-eq v11, v13, :cond_10

    const/16 v13, -0x178b

    if-eq v11, v13, :cond_10

    .line 1077
    const-string v4, "check_in_all_items_unavailable"

    .line 1080
    :cond_10
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/mcdonalds/app/ordering/OrderingManager;->setProductErrorCode(I)V

    .line 1084
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1085
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v13, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v1, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1086
    sget-object v13, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    invoke-virtual {v1, v13, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1087
    sget-object v13, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_OFFERS_CODES:Ljava/lang/String;

    invoke-virtual {v1, v13, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v13

    if-eqz v13, :cond_11

    .line 1095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 1097
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/Order;->setPreparePaymentResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 1098
    const-class v13, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const/16 v14, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4, v1, v14}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1100
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1001
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f4f -> :sswitch_6
        -0x1f43 -> :sswitch_6
        -0x1f42 -> :sswitch_6
        -0x1f41 -> :sswitch_5
        -0x178b -> :sswitch_7
        -0x438 -> :sswitch_2
        -0x40c -> :sswitch_0
        -0x3ff -> :sswitch_1
        0x2f -> :sswitch_4
        0x7da -> :sswitch_3
    .end sparse-switch
.end method

.method private isNotCurbsideWithCash()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "isNotCurbsideWithCash"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1678
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return v4

    .line 1683
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    const/16 v7, 0xc

    const/16 v8, 0xd

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1686
    .local v2, "locationType":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 1692
    .local v3, "locationTypeInt":I
    if-ne v3, v4, :cond_0

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1694
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProcessingScannedCode:Z

    .line 1695
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 1698
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 1699
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09019c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 1700
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09019d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v6, 0x7f0905d4

    new-instance v7, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$24;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$24;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1701
    invoke-virtual {v4, v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v6, 0x7f090145

    new-instance v7, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$23;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$23;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1709
    invoke-virtual {v4, v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 1716
    invoke-virtual {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 1717
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    move v4, v5

    .line 1719
    goto :goto_0

    .line 1687
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "locationTypeInt":I
    :catch_0
    move-exception v1

    .line 1688
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showInvalidQRDialiog()V

    move v4, v5

    .line 1689
    goto :goto_0

    .line 1687
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private isOrderAvailableAtPOD()Z
    .locals 5

    .prologue
    const-string v2, "isOrderAvailableAtPOD"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1105
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1106
    const/4 v2, 0x1

    .line 1117
    :goto_0
    return v2

    .line 1110
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    const/4 v0, 0x3

    .line 1117
    .local v0, "podId":I
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->validateQRCodePOD(ILcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v2

    goto :goto_0

    .line 1113
    .end local v0    # "podId":I
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    const/16 v3, 0xa

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "podStringCode":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "podId":I
    goto :goto_1
.end method

.method private isaMWException(Lcom/mcdonalds/sdk/connectors/middleware/MWException;)Z
    .locals 4
    .param p1, "exception"    # Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "isaMWException"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 917
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x40c

    if-eq v2, v3, :cond_0

    .line 918
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x438

    if-eq v2, v3, :cond_0

    .line 919
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x1f4f

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 917
    :cond_1
    return v0
.end method

.method private normalCheckinFlow(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v1, "normalCheckinFlow"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mEatInButton:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Eat In"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 404
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->totalizePayment()V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTakeOutButton:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 406
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Take Out"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 409
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 411
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    .line 412
    .local v0, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isBagChargeAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->proceedToBagCharge()V

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    .line 419
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 421
    .end local v0    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    :cond_4
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTableServiceButton:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Table Service"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-class v1, Lcom/mcdonalds/app/ordering/checkin/TableServiceActivity;

    const/16 v2, 0x300f

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method private openThirdPartURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v1, "openThirdPartURL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1413
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "payment_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-class v1, Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    const/16 v2, 0xff4

    invoke-virtual {p0, v1, v0, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 1417
    return-void
.end method

.method private parseStoreIdFromQrCode(Ljava/lang/String;)I
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v1, "parseStoreIdFromQrCode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    const/16 v1, 0xa

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "storeIdString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private payStatus()I
    .locals 3

    .prologue
    const-string v1, "payStatus"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1536
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, "paymentMtdDisplayName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "Alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u652f\u4ed8\u5bf6"

    .line 1538
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0900cb

    .line 1539
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1540
    :cond_0
    const/4 v1, 0x1

    .line 1544
    :goto_0
    return v1

    .line 1541
    :cond_1
    if-eqz v0, :cond_3

    const-string v1, "Cash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u73fe\u91d1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1542
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1544
    :cond_3
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private proceedToBagCharge()V
    .locals 2

    .prologue
    const-string v0, "proceedToBagCharge"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    const-class v0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;

    const/16 v1, 0x2a8c

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;I)V

    .line 754
    return-void
.end method

.method private processPreparePaymentResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 10
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "processPreparePaymentResponse"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object p2, v6, v9

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    if-eqz p2, :cond_0

    instance-of v5, p2, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    if-eqz v5, :cond_4

    move-object v5, p2

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    invoke-direct {p0, v5}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->isaMWException(Lcom/mcdonalds/sdk/connectors/middleware/MWException;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 820
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 822
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPreparePaymentResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 823
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderPaymentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 825
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPaymentDataId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentDataId(I)V

    .line 826
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateTender()V

    .line 828
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getRequiresPassword()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mRequiresPassword:Z

    .line 829
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getRequiresCVV()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mRequiresCVV:Z

    .line 831
    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mRequiresCVV:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->cvvEntered()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldAlwaysAskCVV()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCvvDialogShown:Z

    if-nez v5, :cond_2

    .line 832
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->promptUserForCVV()V

    .line 914
    :goto_0
    return-void

    .line 833
    :cond_2
    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mRequiresPassword:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mPassword:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 834
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->promptUserForPassword()V

    goto :goto_0

    .line 836
    :cond_3
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->checkErrorsAndCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    goto :goto_0

    .line 839
    :cond_4
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v5

    sget-object v6, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->DriveThru:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    if-ne v5, v6, :cond_5

    .line 843
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->checkErrorsAndCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    goto :goto_0

    .line 844
    :cond_5
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v5

    const/16 v6, -0x40b

    if-ne v5, v6, :cond_d

    .line 845
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 846
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v5, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 847
    iput-boolean v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->subProductError:Z

    .line 848
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 849
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 850
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 851
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_7
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 855
    iput-boolean v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->subProductError:Z

    .line 856
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 857
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 858
    .local v1, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    .line 859
    .local v4, "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v4, :cond_8

    .line 860
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-static {v4, v3, v6, v7}, Lcom/mcdonalds/app/ordering/OrderUtils;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 856
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 863
    .end local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v4    # "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_9
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_6

    .line 864
    iput-boolean v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->subProductError:Z

    goto :goto_1

    .line 868
    .end local v2    # "i":I
    .end local v3    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_a
    iget-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->subProductError:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-ne v5, v6, :cond_c

    .line 869
    :cond_b
    sget-object v5, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->PARAMETER_HIDE_POSITIVE:Ljava/lang/String;

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 871
    :cond_c
    sget-object v6, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 872
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 873
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 874
    const-class v5, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v6, "check_in_items_unavailable"

    const/16 v7, 0x330b

    invoke-virtual {p0, v5, v6, v0, v7}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 875
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_d
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v5

    const/16 v6, -0x3ff

    if-ne v5, v6, :cond_13

    .line 876
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 877
    .restart local v0    # "bundle":Landroid/os/Bundle;
    sget-object v5, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PRODUCT_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 878
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 879
    .restart local v3    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v6

    if-nez v6, :cond_f

    .line 880
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 881
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_f
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 885
    iput-boolean v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->subProductError:Z

    .line 886
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_11

    .line 887
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 888
    .restart local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    .line 889
    .restart local v4    # "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v4, :cond_10

    .line 890
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-static {v4, v3, v6, v7}, Lcom/mcdonalds/app/ordering/OrderUtils;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 886
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 893
    .end local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v4    # "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_11
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_e

    .line 894
    iput-boolean v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->subProductError:Z

    goto :goto_3

    .line 899
    .end local v2    # "i":I
    .end local v3    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_12
    sget-object v6, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->PARAMETER_PROBLEMATIC_PRODUCTS_CODES:Ljava/lang/String;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUnavailableProductCodes:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 900
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 901
    const-class v5, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v6, "check_in_all_items_unavailable"

    const/16 v7, 0x15

    invoke-virtual {p0, v5, v6, v0, v7}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 903
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_13
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f090338

    .line 904
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    .line 905
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f090121

    .line 906
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$10;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$10;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    .line 912
    invoke-virtual {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private promptUserForCVV()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "promptUserForCVV"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1619
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1620
    .local v1, "input":Landroid/widget/EditText;
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1621
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->getCVVMaxLength()I

    move-result v0

    .line 1622
    .local v0, "cvvMaxLenght":I
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1624
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f090201

    .line 1625
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0901f3

    .line 1626
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 1627
    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 1628
    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0905d4

    new-instance v4, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$20;

    invoke-direct {v4, p0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$20;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Landroid/widget/EditText;)V

    .line 1629
    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f090145

    new-instance v4, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$19;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$19;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1637
    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 1644
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 1645
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1646
    return-void
.end method

.method private promptUserForPassword()V
    .locals 4

    .prologue
    const-string v1, "promptUserForPassword"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1651
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1652
    .local v0, "input":Landroid/widget/EditText;
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1654
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090203

    .line 1655
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0901f4

    .line 1656
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1657
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 1658
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    new-instance v3, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$22;

    invoke-direct {v3, p0, v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$22;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Landroid/widget/EditText;)V

    .line 1659
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090145

    new-instance v3, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$21;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$21;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1666
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 1672
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1673
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1674
    return-void
.end method

.method private showDialogHint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v2, "showDialogHint"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1548
    new-instance v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$17;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$17;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1559
    .local v1, "positiveBtn":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 1560
    invoke-virtual {v2, p2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0905d4

    .line 1561
    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 1562
    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 1563
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1564
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1565
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1566
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "msgId"    # I

    .prologue
    const-string v0, "showErrorDialog"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1313
    const-string v0, ""

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "showErrorDialog"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1309
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const-string v2, "showErrorDialog"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    new-instance v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$15;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$15;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 1330
    .local v1, "positiveBtn":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 1331
    invoke-virtual {v2, p2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0905d4

    .line 1332
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 1333
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1334
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1335
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1337
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1338
    return-void
.end method

.method private showInvalidQRDialiog()V
    .locals 3

    .prologue
    const-string v0, "showInvalidQRDialiog"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0900b4

    .line 600
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090a11

    .line 601
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    .line 602
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$7;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$7;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 609
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 612
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Must select delivery address before placing order"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 615
    return-void
.end method

.method private skipQRAndLocationSelection()V
    .locals 2

    .prologue
    const-string v0, "skipQRAndLocationSelection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->updateOrder()V

    .line 325
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    .line 326
    return-void
.end method

.method private startNewAttempt(J)V
    .locals 5
    .param p1, "diff"    # J

    .prologue
    const-string v0, "startNewAttempt"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$13;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$13;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1181
    return-void
.end method

.method private updatePaymentType()V
    .locals 2

    .prologue
    const-string v0, "updatePaymentType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1727
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0906b4

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 1729
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    new-instance v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$25;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$25;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethods(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1762
    return-void
.end method

.method private updatePayments()V
    .locals 8

    .prologue
    const-string v6, "updatePayments"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1570
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1571
    const-string v6, "customer"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1572
    .local v2, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v3

    .line 1573
    .local v3, "identifier":Ljava/lang/Integer;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    .line 1574
    .local v5, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1575
    .local v1, "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    .local v4, "preferredCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 1579
    .local v0, "cardItem":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1581
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsPreferred(Ljava/lang/Boolean;)V

    .line 1582
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1585
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isPreferred()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1587
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsPreferred(Ljava/lang/Boolean;)V

    .line 1588
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1592
    .end local v0    # "cardItem":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mUpdateCardsListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v2, v4, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updatePayments(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1594
    .end local v1    # "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .end local v2    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v3    # "identifier":Ljava/lang/Integer;
    .end local v4    # "preferredCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    .end local v5    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_3
    return-void
.end method


# virtual methods
.method public checkin()V
    .locals 2

    .prologue
    const-string v0, "checkin"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->checkin(Z)V

    .line 1213
    return-void
.end method

.method public checkin(Z)V
    .locals 11
    .param p1, "checkForThirdPart"    # Z

    .prologue
    const v10, 0x7f0901f0

    const/4 v9, 0x0

    const-string v6, "checkin"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1222
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPaymentUrl()Ljava/lang/String;

    move-result-object v4

    .line 1228
    .local v4, "paymentUrl":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, "paymentMtdDisplayName":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v6, "Alipay"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "\u652f\u4ed8\u5bf6"

    .line 1230
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f0900cb

    .line 1231
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1233
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1276
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    .line 1277
    .local v2, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1278
    .local v5, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1279
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "EVENT_NAME"

    const-string v8, "pay"

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-string v7, "pdid"

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const-string v7, "pdname"

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v7, "pdismds"

    const-string v8, "Delivery"

    .line 1283
    invoke-virtual {v5, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v8

    .line 1282
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string v7, "pdispickup"

    const-string v8, "Pickup"

    .line 1285
    invoke-virtual {v5, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v8

    .line 1284
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    new-instance v7, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 1287
    invoke-virtual {v7, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    .line 1288
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 1289
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v7, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v7, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_2

    .line 1224
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v1    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v3    # "paymentMtdDisplayName":Ljava/lang/String;
    .end local v4    # "paymentUrl":Ljava/lang/String;
    .end local v5    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    const-string v4, ""

    .restart local v4    # "paymentUrl":Ljava/lang/String;
    goto/16 :goto_1

    .line 1292
    .restart local v3    # "paymentMtdDisplayName":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    .line 1293
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "supportedPaymentMethods.wechatPayment.displayName"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1294
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v9}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1295
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->doWechatPayment()V

    goto/16 :goto_0

    .line 1296
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz p1, :cond_6

    .line 1297
    invoke-direct {p0, v4}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->openThirdPartURL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1299
    :cond_6
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinFlow()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1300
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    const v7, 0x7f090a65

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 1304
    :goto_3
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mPassword:Ljava/lang/String;

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCheckinResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/mcdonalds/app/ordering/OrderingManager;->checkIn(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto/16 :goto_0

    .line 1302
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public completeCheckIn(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 3
    .param p1, "selectedPayment"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const-string v0, "completeCheckIn"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->fromPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 1768
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 1771
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->finishCheckin()V

    .line 1772
    return-void
.end method

.method protected continueToOrderSummary()V
    .locals 2

    .prologue
    const-string v0, "continueToOrderSummary"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    const-class v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryActivity;

    const-string v1, "order_summary"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method public doneScanningCode(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const-string v2, "doneScanningCode"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    .line 461
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    .line 463
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 464
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const-string v4, "On scan"

    .line 465
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    .line 466
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const/16 v4, 0x29

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    .line 467
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->addCustom(ILjava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 468
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v3

    .line 463
    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 470
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mStartTimeToCommunicate:J

    .line 471
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mLastAttemptTime:J

    .line 473
    iput-boolean v6, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProcessingScannedCode:Z

    .line 475
    const/4 v1, -0x1

    .line 478
    .local v1, "storeId":I
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->parseStoreIdFromQrCode(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 484
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderStoreId:I

    if-ne v1, v2, :cond_2

    .line 485
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isRegularPaymentFlow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->displayMethods()V

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showInvalidQRDialiog()V

    goto :goto_0

    .line 488
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    iget v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderStoreId:I

    if-eq v1, v2, :cond_0

    .line 489
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->handleStoreMismatch(I)V

    goto :goto_0

    .line 479
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const v0, 0x7f090872

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "onClick"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "CHECKIN_TIMER"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->hasObjectInCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinAllowOrdering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$2;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Landroid/view/View;)V

    invoke-static {v0, v4, v2, v1}, Lcom/mcdonalds/app/util/UIUtils;->showCheckinFlowAlert(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 398
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2, v2}, Lcom/mcdonalds/app/util/UIUtils;->showCheckinFlowAlert(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 395
    :cond_1
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->normalCheckinFlow(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 187
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 191
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 192
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 193
    const-string v0, "storeLocator"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 194
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 196
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.checkin.timeBetweenAttemptsDTScanFail"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLongForKey(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTimeBetweenAttemptsDTScanFail:J

    .line 197
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.checkin.timeoutDTScanFail"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLongForKey(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTimeoutDTScanFail:J

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCvvDialogShown:Z

    .line 200
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->weChatAppId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 201
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    sget-object v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->weChatAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->handler:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 209
    const v1, 0x7f0400f1

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1100da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    .line 212
    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainViewVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :goto_0
    const v1, 0x7f1100dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTableServiceButton:Landroid/view/View;

    .line 218
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTableServiceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v1, 0x7f1100de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mEatInButton:Landroid/view/View;

    .line 221
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mEatInButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v1, 0x7f1100df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTakeOutButton:Landroid/view/View;

    .line 224
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTakeOutButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-object v0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 272
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 273
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const-string v2, "onNewIntent"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "fromBagCharge":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 259
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 260
    const-string v2, "FROM_BAG_CHARGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 262
    :cond_0
    if-eqz v1, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->skipQRAndLocationSelection()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_1
    iput-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mShouldLaunchQRCodeScanner:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 231
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 233
    sget v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->wechatPaymentResult:I

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->wechatPaymentResult:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setWechatPaymentResult(I)V

    .line 237
    sput v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->wechatPaymentResult:I

    .line 238
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCheckinResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->checkIn(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 250
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTableServiceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mTakeOutButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->setupTableServiceButton(Landroid/view/View;Landroid/view/View;)V

    .line 253
    :cond_1
    return-void

    .line 240
    :cond_2
    sget v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->wechatPaymentResult:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 241
    sput v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->wechatPaymentResult:I

    .line 242
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 243
    sget-object v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->sWeChatPaymentRespString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_3
    sget v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->wechatPaymentResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 245
    sput v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->wechatPaymentResult:I

    .line 246
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 247
    sget-object v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->sWeChatPaymentRespString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 444
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->unregisterApp()V

    .line 450
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const-string v2, "onViewCreated"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "fromBagCharge":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 286
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 287
    const-string v2, "FROM_BAG_CHARGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->skipQRAndLocationSelection()V

    .line 320
    :cond_2
    :goto_0
    return-void

    .line 295
    :cond_3
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mShouldLaunchQRCodeScanner:Z

    if-eqz v2, :cond_4

    .line 297
    iput-boolean v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mShouldLaunchQRCodeScanner:Z

    .line 300
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->updateOrder()V

    .line 304
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->scanQRCode()V

    goto :goto_0

    .line 315
    :cond_4
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProcessingScannedCode:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainViewVisible:Z

    if-nez v2, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public preparePaymentAndCheckin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "preparePaymentAndCheckin"

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    if-nez v1, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090338

    .line 760
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090321

    .line 761
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 762
    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090121

    .line 763
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$8;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$8;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 808
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f0901f7

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 777
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProcessingScannedCode:Z

    .line 780
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 781
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentMethodId(I)V

    .line 785
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 793
    :cond_2
    :goto_1
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 794
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->Delivery:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 795
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 807
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/OrderUtils;->getOrderWithOnlyAvailableItems(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 786
    :cond_4
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 787
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;-><init>()V

    .line 788
    .local v0, "orderPayment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentMethodId(I)V

    .line 789
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    goto :goto_1
.end method

.method public resumeFromAlert(I)V
    .locals 4
    .param p1, "productErrorCode"    # I

    .prologue
    const/4 v3, 0x0

    const-string v0, "resumeFromAlert"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    const/16 v0, -0x178b

    if-ne p1, v0, :cond_1

    .line 1185
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProductsRemoved:Z

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    .line 1187
    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mProductsRemoved:Z

    .line 1200
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->checkin()V

    goto :goto_0

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->updateOrder()V

    .line 1197
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->totalize()V

    goto :goto_0
.end method

.method public resumeFromChoosePayment()V
    .locals 2

    .prologue
    const-string v0, "resumeFromChoosePayment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateTender()V

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    .line 1209
    return-void
.end method

.method public resumeFromMismatch()V
    .locals 3

    .prologue
    const-string v1, "resumeFromMismatch"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 508
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCatalogUpdated(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 524
    return-void
.end method

.method protected scanQRCode()V
    .locals 5

    .prologue
    const-string v1, "scanQRCode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-class v1, Lcom/mcdonalds/app/ordering/checkin/QRScanActivity;

    const-string v2, "qrscan"

    const/16 v3, 0x33

    invoke-virtual {p0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 352
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$1;-><init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 346
    .local v0, "cameraPermisionListener":Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    const/4 v3, 0x2

    const v4, 0x7f090624

    .line 347
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    goto :goto_0
.end method

.method public setupTableServiceButton(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "tableServiceButton"    # Landroid/view/View;
    .param p2, "takeOutButton"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const-string v1, "setupTableServiceButton"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    if-eqz p1, :cond_0

    .line 356
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getTableService()Lcom/mcdonalds/sdk/modules/models/TableService;

    move-result-object v0

    .line 358
    .local v0, "tableService":Lcom/mcdonalds/sdk/modules/models/TableService;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/TableService;->isEnablePOSTableService()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 360
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/TableService;->getMinimumPurchaseAmount()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 361
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-eq v1, v2, :cond_0

    .line 362
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 363
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->updateTakeOutButton(Landroid/view/View;)V

    .line 367
    .end local v0    # "tableService":Lcom/mcdonalds/sdk/modules/models/TableService;
    :cond_0
    return-void
.end method

.method protected totalize()V
    .locals 2

    .prologue
    const-string v0, "totalize"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09040e

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 500
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->totalize(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 501
    return-void
.end method

.method public totalizePayment()V
    .locals 3

    .prologue
    const-string v1, "totalizePayment"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 429
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mMainView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    .line 431
    .local v0, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isBagChargeAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 433
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->totalize()V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    goto :goto_0
.end method

.method public updateOrder()V
    .locals 2

    .prologue
    const-string v0, "updateOrder"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 277
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrderStoreId:I

    .line 278
    return-void
.end method

.method public updateTakeOutButton(Landroid/view/View;)V
    .locals 3
    .param p1, "takeOutButton"    # Landroid/view/View;

    .prologue
    const-string v0, "updateTakeOutButton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    const v0, 0x7f02008d

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 371
    return-void
.end method
