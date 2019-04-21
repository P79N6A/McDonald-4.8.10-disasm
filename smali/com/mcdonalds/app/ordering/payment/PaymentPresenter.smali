.class public Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
.super Landroid/databinding/BaseObservable;
.source "PaymentPresenter.java"


# instance fields
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

.field private mCode:Ljava/lang/String;

.field private mComingFromBagCharges:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mCvvDialogShown:Z

.field private mLastAttemptTime:J

.field private mOneClickAddedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mOrigStoreId:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPreparePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mProductsRemoved:Z

.field private mQRCodeScanned:Z

.field private final mRefreshCustomerDataListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCheckinCounter:I

.field private mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field private mShowLocationSelection:Z

.field private mStartTimeToCommunicate:J

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

.field mStoreObserver:Landroid/database/ContentObserver;

.field private mTableServiceSelected:Z

.field private final mTotalizeListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
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

.field private mUpdatedProducts:Z

.field private mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

.field private paymentDataCheckListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/ordering/payment/PaymentView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/mcdonalds/app/ordering/payment/PaymentView;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 574
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$2;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->paymentDataCheckListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1073
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$6;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mRefreshCustomerDataListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1104
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$7;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$7;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mUpdateCardsListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1116
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mStoreLocatorResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1137
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$9;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mStoreObserver:Landroid/database/ContentObserver;

    .line 1153
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$10;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$10;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mTotalizeListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1166
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$11;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$11;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mPreparePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1173
    new-instance v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$12;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCheckinResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 92
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    .line 95
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 96
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mUpdatedProducts:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

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

    .line 58
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mUpdatedProducts:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCheckinResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;Ljava/lang/Integer;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setPreferredCard(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrigStoreId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1400"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->processPreparePaymentResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mRetryCheckinCounter:I

    return v0
.end method

.method static synthetic access$1508(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1508"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mRetryCheckinCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mRetryCheckinCounter:I

    return v0
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->updatePayments()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkinAfterDelay()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$1800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->payStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->finishCheckin()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOneClickAddedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOneClickAddedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/alipay/PayResult;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->doAlipayPayment()Lcom/mcdonalds/app/ordering/alipay/PayResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.payment.PaymentPresenter"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method private areAllItemsUnavailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "problematicProductsCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "problematicOffersCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "areAllItemsUnavailable"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {p1, v5}, Lcom/mcdonalds/app/ordering/OrderUtils;->getErrorCount(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order;)I

    move-result v0

    .line 765
    .local v0, "errorCount":I
    invoke-static {p2}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 766
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {p2, v5}, Lcom/mcdonalds/app/ordering/OrderUtils;->getErrorOfferCount(Ljava/util/ArrayList;Lcom/mcdonalds/sdk/modules/models/Order;)I

    move-result v5

    add-int/2addr v0, v5

    .line 768
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    add-int v1, v5, v6

    .line 769
    .local v1, "orderCount":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    .line 770
    .local v2, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isBagChargeAdded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 771
    add-int/lit8 v1, v1, -0x1

    .line 773
    :cond_1
    if-lt v0, v1, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private checkErrorsAndCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 4
    .param p1, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    const/4 v3, 0x1

    const-string v0, "checkErrorsAndCheckIn"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->haveErrors(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->isNotCurbsideWithCash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mTableServiceSelected:Z

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->continueToTableServices()V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkin(Z)V

    goto :goto_0
.end method

.method private checkinAfterDelay()V
    .locals 6

    .prologue
    const-string v3, "checkinAfterDelay"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1254
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const v4, 0x7f0901f0

    invoke-interface {v3, v4}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showActivityIndicator(I)V

    .line 1255
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.oneClickErrorDelay"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v1

    .line 1256
    .local v1, "delayFromConfig":I
    mul-int/lit16 v0, v1, 0x3e8

    .line 1257
    .local v0, "delay":I
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1258
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$13;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$13;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1265
    return-void
.end method

.method private doAlipayPayment()Lcom/mcdonalds/app/ordering/alipay/PayResult;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "doAlipayPayment"

    invoke-static {p0, v4, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1032
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, "signature":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1034
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->getActivityForAlipay()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 1035
    .local v0, "alipayPayTask":Lcom/alipay/sdk/app/PayTask;
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "rawResult":Ljava/lang/String;
    new-instance v3, Lcom/mcdonalds/app/ordering/alipay/PayResult;

    invoke-direct {v3, v1}, Lcom/mcdonalds/app/ordering/alipay/PayResult;-><init>(Ljava/lang/String;)V

    .line 1060
    .end local v0    # "alipayPayTask":Lcom/alipay/sdk/app/PayTask;
    .end local v1    # "rawResult":Ljava/lang/String;
    .end local v2    # "signature":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private finishCheckin()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v0, "finishCheckin"

    invoke-static {p0, v0, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 347
    invoke-direct {p0, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setShowLocationSelection(Z)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    const-string v1, "\r\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 353
    .local v8, "podString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 355
    .local v7, "podInt":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v0

    array-length v0, v0

    if-le v0, v7, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v0

    aget-object v6, v0, v7

    .line 357
    .local v6, "POD":Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 360
    .end local v6    # "POD":Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 366
    .local v9, "saleTypeInt":I
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v0, v0, v10

    if-eqz v0, :cond_3

    .line 368
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v3, "codes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->getPriceChangeProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const/4 v1, 0x4

    const/16 v2, -0x178b

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showOrderErrors(IILjava/util/List;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 375
    .end local v3    # "codes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-ltz v9, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->values()[Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    move-result-object v0

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    if-nez v0, :cond_4

    .line 378
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->values()[Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    move-result-object v0

    aget-object v0, v0, v9

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 381
    :cond_4
    sget-object v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$14;->$SwitchMap$com$mcdonalds$sdk$modules$models$Order$QRCodeSaleType:[I

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 383
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 384
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    goto/16 :goto_0

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 389
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    goto/16 :goto_0

    .line 393
    :pswitch_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-direct {p0, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setShowLocationSelection(Z)V

    goto/16 :goto_0

    .line 399
    :pswitch_3
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setShowLocationSelection(Z)V

    goto/16 :goto_0

    .line 405
    :pswitch_4
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 406
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    goto/16 :goto_0

    .line 410
    :pswitch_5
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 411
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    goto/16 :goto_0

    .line 381
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

.method private getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f090872

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 809
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v11, "problematicProductCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v23, v0

    .line 812
    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v23

    if-nez v23, :cond_1

    .line 854
    :cond_0
    return-object v11

    .line 816
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v21

    .line 817
    .local v21, "responseOrderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v10

    .line 819
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

    .line 820
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 821
    .local v15, "productViewAfterCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 823
    .local v13, "productCodeAfterCheckIn":I
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getUnitPrice()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 824
    .local v16, "productPriceAfterCheckIn":D
    const-wide/16 v4, 0x0

    .line 826
    .local v4, "discountAmountAfterCheckIn":D
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 827
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 830
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

    .line 831
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 832
    .local v20, "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 834
    .local v14, "productCodeBeforeCheckIn":I
    if-eq v14, v13, :cond_4

    .line 830
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 838
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getUnitPrice()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 839
    .local v18, "productPriceBeforeCheckIn":D
    const-wide/16 v6, 0x0

    .line 841
    .local v6, "discountAmountBeforeCheckIn":D
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    if-eqz v23, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v23

    if-eqz v23, :cond_5

    .line 842
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 845
    :cond_5
    cmpl-double v23, v18, v16

    if-nez v23, :cond_6

    cmpl-double v23, v6, v4

    if-eqz v23, :cond_3

    .line 848
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    .end local v6    # "discountAmountBeforeCheckIn":D
    .end local v14    # "productCodeBeforeCheckIn":I
    .end local v18    # "productPriceBeforeCheckIn":D
    .end local v20    # "productViewBeforeCheckin":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private handleOrderNotReadyError()V
    .locals 18

    .prologue
    const-string v14, "handleOrderNotReadyError"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.checkin.timeBetweenAttemptsDTScanFail"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLongForKey(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v6, v14, v16

    .line 861
    .local v6, "timeBetweenAttemptsDTScanFail":J
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.checkin.timeoutDTScanFail"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLongForKey(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v12, v14, v16

    .line 863
    .local v12, "timeoutDTScanFail":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 864
    .local v2, "currentMillis":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mStartTimeToCommunicate:J

    sub-long v8, v2, v14

    .line 866
    .local v8, "timeOut":J
    cmp-long v14, v8, v12

    if-ltz v14, :cond_0

    .line 867
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v14}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->stopActivityIndicator()V

    .line 868
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v14}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showOrderNotReadyToAcceptError()V

    .line 887
    :goto_0
    return-void

    .line 872
    :cond_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mLastAttemptTime:J

    sub-long v10, v2, v14

    .line 873
    .local v10, "timeOutLastAttempt":J
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mLastAttemptTime:J

    .line 874
    sub-long v4, v6, v10

    .line 876
    .local v4, "diff":J
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-lez v14, :cond_1

    .line 877
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$3;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    invoke-virtual {v14, v15, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 884
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    goto :goto_0
.end method

.method private handleStoreMismatch(I)V
    .locals 6
    .param p1, "storeId"    # I

    .prologue
    const/4 v5, 0x1

    const-string v1, "handleStoreMismatch"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrigStoreId:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(I)V

    .line 317
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/Order;->setNeedsUpdatedRecipes(Z)V

    .line 319
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 321
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const v2, 0x7f09040e

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showActivityIndicator(I)V

    .line 323
    const-string v1, "storeLocator"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 324
    .local v0, "storeLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mStoreLocatorResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoreForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 325
    return-void
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

    .line 777
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 778
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 780
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 781
    .local v2, "totalizeTotalValue":D
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 783
    .local v0, "paymentTotalValue":D
    sub-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 785
    .end local v0    # "paymentTotalValue":D
    .end local v2    # "totalizeTotalValue":D
    :goto_0
    return v4

    .restart local v0    # "paymentTotalValue":D
    .restart local v2    # "totalizeTotalValue":D
    :cond_0
    move v4, v5

    .line 783
    goto :goto_0

    .end local v0    # "paymentTotalValue":D
    .end local v2    # "totalizeTotalValue":D
    :cond_1
    move v4, v5

    .line 785
    goto :goto_0
.end method

.method private haveErrors(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Z
    .locals 18
    .param p1, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    const-string v1, "haveErrors"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object p1, v6, v17

    move-object/from16 v0, p0

    invoke-static {v0, v1, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 596
    if-nez p1, :cond_0

    .line 597
    const/4 v1, 0x1

    .line 760
    :goto_0
    return v1

    .line 600
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getErrorCode()I

    move-result v3

    .line 601
    .local v3, "productError":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v16, "unavailableItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 604
    .local v13, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 605
    .local v12, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 606
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    const/16 v3, -0x3ff

    .line 609
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v9, v6, :cond_1

    .line 610
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 611
    .local v7, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v6, v12, v13, v0}, Lcom/mcdonalds/app/ordering/OrderUtils;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 609
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 615
    .end local v7    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v9    # "i":I
    .end local v12    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    if-nez v3, :cond_5

    .line 618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldSkipOutOfStockErrorHandling(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 619
    const/4 v1, 0x0

    goto :goto_0

    .line 622
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsError()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 623
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->hasPriceChanged(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 624
    const/16 v3, -0x178b

    .line 637
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldSkipOutOfStockErrorHandling(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsOutOfStock()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 639
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductsOutOfStock(Ljava/util/List;)V

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getErrorCode()I

    move-result v3

    .line 644
    :cond_6
    const/4 v8, 0x0

    .line 645
    .local v8, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 646
    .local v11, "offerCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v14, "outOfStockProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->orderHasNoDeliveryOffers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 650
    const/16 v3, -0x1f43

    .line 660
    :cond_7
    :goto_3
    const/4 v2, -0x1

    .line 661
    .local v2, "errorType":I
    sparse-switch v3, :sswitch_data_0

    .line 720
    :goto_4
    const/4 v1, -0x1

    if-ne v2, v1, :cond_d

    .line 721
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 625
    .end local v2    # "errorType":I
    .end local v8    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "offerCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "outOfStockProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->isOrderAvailableAtPOD()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 626
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 628
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showOrderUnavailableAtPODError()V

    .line 629
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 632
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsError()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 654
    .restart local v8    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "offerCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "outOfStockProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->orderHasNoPickupOffers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 655
    const/16 v3, -0x1f42

    goto :goto_3

    .line 664
    .restart local v2    # "errorType":I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v8

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOfferCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v11

    .line 666
    const/4 v2, 0x1

    .line 667
    invoke-interface {v14, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 668
    invoke-interface {v14, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 669
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mProductsRemoved:Z

    goto :goto_4

    .line 673
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsUnavailable()Ljava/util/List;

    move-result-object v8

    .line 674
    if-eqz v8, :cond_c

    .line 675
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .restart local v8    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 678
    const/4 v2, 0x2

    .line 679
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mProductsRemoved:Z

    goto :goto_4

    .line 683
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsTimeRestriction()Ljava/util/List;

    move-result-object v8

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsTimeRestriction()Ljava/util/List;

    move-result-object v11

    .line 685
    const/4 v2, 0x5

    .line 686
    goto/16 :goto_4

    .line 689
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showOrderNotReadyError()V

    .line 690
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 693
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->handleOrderNotReadyError()V

    .line 694
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 697
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->getProblematicOfferCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/ArrayList;

    move-result-object v11

    .line 698
    invoke-interface {v14, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 699
    const/4 v2, 0x1

    .line 700
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mProductsRemoved:Z

    goto/16 :goto_4

    .line 706
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsNotAvailable()Ljava/util/List;

    move-result-object v8

    .line 707
    const/4 v2, 0x6

    .line 708
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mProductsRemoved:Z

    goto/16 :goto_4

    .line 712
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->getPriceChangeProductCodes(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)Ljava/util/ArrayList;

    move-result-object v8

    .line 713
    const/4 v2, 0x4

    .line 714
    goto/16 :goto_4

    .line 724
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v4, "problematicProductsCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_e

    .line 727
    const/4 v9, 0x0

    .restart local v9    # "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "size":I
    :goto_5
    if-ge v9, v15, :cond_e

    .line 728
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 731
    .end local v9    # "i":I
    .end local v15    # "size":I
    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 733
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v5, "problematicOffersCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_f

    .line 735
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 736
    .local v10, "offerCode":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 740
    .end local v10    # "offerCode":Ljava/lang/Integer;
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->areAllItemsUnavailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, -0x1f4f

    if-eq v3, v1, :cond_10

    const/16 v1, -0x178b

    if-eq v3, v1, :cond_10

    .line 743
    const/4 v2, 0x3

    .line 746
    :cond_10
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->setProductErrorCode(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 754
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 756
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setPreparePaymentResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductsOutOfStock(Ljava/util/List;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showOrderErrors(IILjava/util/List;Ljava/util/List;Z)V

    .line 760
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 661
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

.method private isDriveThruPOD()Z
    .locals 2

    .prologue
    const-string v0, "isDriveThruPOD"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->DriveThru:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNotCurbsideWithCash()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "isNotCurbsideWithCash"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v3

    .line 896
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    const/16 v6, 0xc

    const/16 v7, 0xd

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "locationType":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 905
    .local v2, "locationTypeInt":I
    if-ne v2, v3, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v5

    if-nez v5, :cond_0

    .line 907
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showCashNotAcceptedAtCurbsideError()V

    move v3, v4

    .line 908
    goto :goto_0

    .line 900
    .end local v2    # "locationTypeInt":I
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v3}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showInvalidQRCodeError()V

    move v3, v4

    .line 902
    goto :goto_0

    .line 900
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private isOrderAvailableAtPOD()Z
    .locals 5

    .prologue
    const-string v2, "isOrderAvailableAtPOD"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 289
    const/4 v2, 0x1

    .line 300
    :goto_0
    return v2

    .line 293
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    const/4 v0, 0x3

    .line 300
    .local v0, "podId":I
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->validateQRCodePOD(ILcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v2

    goto :goto_0

    .line 296
    .end local v0    # "podId":I
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    const/16 v3, 0xa

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "podStringCode":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "podId":I
    goto :goto_1
.end method

.method private isUnavailableException(Lcom/mcdonalds/sdk/AsyncException;)Z
    .locals 4
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "isUnavailableException"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x40b

    if-eq v2, v3, :cond_0

    .line 515
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x3ff

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 514
    :cond_1
    return v0
.end method

.method private orderHasNoDeliveryOffers()Z
    .locals 3

    .prologue
    const-string v1, "orderHasNoDeliveryOffers"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 791
    .local v0, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 792
    const/4 v1, 0x1

    .line 795
    .end local v0    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private orderHasNoPickupOffers()Z
    .locals 3

    .prologue
    const-string v1, "orderHasNoPickupOffers"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 800
    .local v0, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 801
    const/4 v1, 0x1

    .line 804
    .end local v0    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private payStatus()I
    .locals 3

    .prologue
    const-string v1, "payStatus"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, "paymentMtdDisplayName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "Alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\u652f\u4ed8\u5bf6"

    .line 1244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0900cb

    .line 1245
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    :cond_0
    const/4 v1, 0x1

    .line 1250
    :goto_0
    return v1

    .line 1247
    :cond_1
    if-eqz v0, :cond_3

    const-string v1, "Cash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "\u73fe\u91d1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1248
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1250
    :cond_3
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private preparePaymentAndCheckin()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const-string v0, "preparePaymentAndCheckin"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const v1, 0x7f0901f7

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showActivityIndicator(I)V

    .line 422
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneTimePaymentFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showPaymentChooser(Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->Delivery:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 430
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 433
    :cond_1
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 435
    .local v9, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v3, "problematicProductsCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 438
    .local v8, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    .line 440
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 441
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_3
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 445
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 446
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 447
    .local v6, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    .line 448
    .local v10, "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v10, :cond_4

    .line 449
    invoke-static {v10, v8, v9, v3}, Lcom/mcdonalds/app/ordering/OrderUtils;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 445
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 457
    .end local v6    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v7    # "i":I
    .end local v8    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v10    # "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->areAllItemsUnavailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const/4 v1, 0x3

    const/16 v2, -0x3ff

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showOrderErrors(IILjava/util/List;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 460
    :cond_6
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/OrderUtils;->getOrderWithOnlyAvailableItems(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 461
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mPreparePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto/16 :goto_0
.end method

.method private processPreparePaymentResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x0

    const-string v2, "processPreparePaymentResponse"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iput v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mRetryCheckinCounter:I

    .line 469
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->shouldSkipException(Lcom/mcdonalds/sdk/AsyncException;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 473
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPreparePaymentResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 474
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderPaymentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateTender()V

    .line 477
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getRequiresPassword()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 478
    .local v1, "requiresPassword":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getRequiresCVV()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 480
    .local v0, "requiresCVV":Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getCVV()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldAlwaysAskCVV()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCvvDialogShown:Z

    if-nez v2, :cond_1

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->getCVVMaxLength()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->requestCVV(I)V

    .line 500
    .end local v0    # "requiresCVV":Z
    .end local v1    # "requiresPassword":Z
    :goto_0
    return-void

    .line 482
    .restart local v0    # "requiresCVV":Z
    .restart local v1    # "requiresPassword":Z
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 483
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->requestPassword()V

    goto :goto_0

    .line 485
    :cond_2
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkErrorsAndCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    goto :goto_0

    .line 488
    .end local v0    # "requiresCVV":Z
    .end local v1    # "requiresPassword":Z
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->isDriveThruPOD()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkErrorsAndCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    goto :goto_0

    .line 494
    :cond_4
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->isUnavailableException(Lcom/mcdonalds/sdk/AsyncException;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 495
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->stopActivityIndicator()V

    .line 496
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->showProductErrors(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 498
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scanQRCode()V
    .locals 2

    .prologue
    const-string v0, "scanQRCode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->scanQRCode()V

    .line 311
    return-void
.end method

.method private setPreferredCard(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "identifier"    # Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "setPreferredCard"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1083
    .local v2, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    .line 1084
    .local v4, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1085
    .local v1, "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v3, "preferredCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 1089
    .local v0, "cardItem":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1091
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsPreferred(Ljava/lang/Boolean;)V

    .line 1092
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1094
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isPreferred()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1096
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsPreferred(Ljava/lang/Boolean;)V

    .line 1097
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1101
    .end local v0    # "cardItem":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mUpdateCardsListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v2, v3, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updatePayments(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1102
    return-void
.end method

.method private setShowLocationSelection(Z)V
    .locals 4
    .param p1, "showLocationSelection"    # Z

    .prologue
    const-string v0, "setShowLocationSelection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mShowLocationSelection:Z

    .line 119
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->notifyPropertyChanged(I)V

    .line 120
    return-void
.end method

.method private shouldSkipException(Lcom/mcdonalds/sdk/AsyncException;)Z
    .locals 4
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "shouldSkipException"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x40c

    if-eq v2, v3, :cond_0

    .line 505
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x438

    if-eq v2, v3, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x1f4f

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 503
    :cond_1
    return v0
.end method

.method private showProductErrors(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 13
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "showProductErrors"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v4, v12

    invoke-static {p0, v0, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v2

    .line 520
    .local v2, "productErrorCode":I
    const/4 v5, 0x0

    .line 521
    .local v5, "hidePositive":Z
    const/4 v11, 0x0

    .line 522
    .local v11, "subProductError":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v3, "unavailableProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 524
    .local v9, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 525
    .local v8, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->productIsInCurrentStore(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 526
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 527
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_1
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 531
    const/4 v11, 0x0

    .line 532
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_3

    .line 533
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 534
    .local v6, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    .line 535
    .local v10, "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v10, :cond_2

    .line 536
    invoke-static {v10, v8, v9, v3}, Lcom/mcdonalds/app/ordering/OrderUtils;->checkProductInCurrentStore(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 532
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 539
    .end local v6    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v10    # "subChoiceProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    const/4 v11, 0x1

    goto :goto_0

    .line 544
    .end local v7    # "i":I
    .end local v8    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    if-nez v11, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 545
    :cond_5
    const/4 v5, 0x1

    .line 548
    :cond_6
    const/4 v1, 0x2

    .line 549
    .local v1, "errorType":I
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    const/16 v4, -0x3ff

    if-ne v0, v4, :cond_7

    .line 550
    const/4 v1, 0x3

    .line 553
    :cond_7
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showOrderErrors(IILjava/util/List;Ljava/util/List;Z)V

    .line 554
    return-void
.end method

.method private totalize()V
    .locals 3

    .prologue
    const-string/jumbo v1, "totalize"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const v2, 0x7f09040e

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showActivityIndicator(I)V

    .line 339
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 340
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mTotalizeListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->totalize(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 341
    return-void
.end method

.method private totalizePayment()V
    .locals 3

    .prologue
    const-string/jumbo v1, "totalizePayment"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    .line 329
    .local v0, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isBagChargeAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 331
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->totalize()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    goto :goto_0
.end method

.method private updatePaymentType()V
    .locals 3

    .prologue
    const-string/jumbo v1, "updatePaymentType"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const v2, 0x7f0906b4

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showActivityIndicator(I)V

    .line 918
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 919
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    new-instance v1, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$4;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$4;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethods(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 943
    return-void
.end method

.method private updatePayments()V
    .locals 4

    .prologue
    const-string/jumbo v2, "updatePayments"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1065
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOneClickAddedCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    if-eqz v2, :cond_1

    .line 1066
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mRefreshCustomerDataListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->refreshCustomerData(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1068
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v1

    .line 1069
    .local v1, "identifier":Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setPreferredCard(Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public cashNotAcceptedAtCurbsideErrorResolved()V
    .locals 2

    .prologue
    const-string v0, "cashNotAcceptedAtCurbsideErrorResolved"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->updatePaymentType()V

    .line 206
    return-void
.end method

.method public checkin(Z)V
    .locals 13
    .param p1, "checkForThirdPart"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const-string v8, "checkin"

    new-array v10, v2, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v10, v9

    invoke-static {p0, v8, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const v10, 0x7f0901f0

    invoke-interface {v8, v10}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showActivityIndicator(I)V

    .line 951
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    .line 952
    .local v6, "paymentUrlOrderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    if-nez v6, :cond_0

    .line 953
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v6

    .line 956
    :cond_0
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 957
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPaymentUrl()Ljava/lang/String;

    move-result-object v5

    .line 962
    .local v5, "paymentUrl":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneClickPaymentFlow()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 963
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->isNewCardStub()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 966
    .local v2, "paymentInfoRequired":Z
    :goto_1
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 967
    .local v4, "paymentMtdDisplayName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 968
    const-string v8, "ordering"

    invoke-static {v8}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 969
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    const-string v7, ""

    .line 970
    .local v7, "registerReturnURL":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 971
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPaymentMethodId()I

    move-result v3

    .line 972
    .local v3, "paymentMethodId":I
    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethodForId(I)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    move-result-object v0

    .line 973
    .local v0, "method":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getRegistrationReturnURL()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 974
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getRegistrationReturnURL()Ljava/lang/String;

    move-result-object v7

    .line 977
    .end local v0    # "method":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .end local v3    # "paymentMethodId":I
    :cond_1
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v8, v5, v7}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->requestPaymentInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .end local v1    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v7    # "registerReturnURL":Ljava/lang/String;
    :goto_2
    return-void

    .line 959
    .end local v2    # "paymentInfoRequired":Z
    .end local v4    # "paymentMtdDisplayName":Ljava/lang/String;
    .end local v5    # "paymentUrl":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .restart local v5    # "paymentUrl":Ljava/lang/String;
    goto :goto_0

    :cond_3
    move v2, v9

    .line 963
    goto :goto_1

    .line 978
    .restart local v2    # "paymentInfoRequired":Z
    .restart local v4    # "paymentMtdDisplayName":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_7

    const-string v8, "Alipay"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "\u652f\u4ed8\u5bf6"

    .line 979
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mContext:Landroid/content/Context;

    const v10, 0x7f0900cb

    .line 980
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 984
    :cond_5
    new-instance v8, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$5;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$5;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    new-array v9, v9, [Ljava/lang/Void;

    .line 1017
    instance-of v10, v8, Landroid/os/AsyncTask;

    if-nez v10, :cond_6

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_6
    check-cast v8, Landroid/os/AsyncTask;

    invoke-static {v8, v9}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 1018
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz p1, :cond_8

    .line 1019
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v8, v5}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->openThirdPartyPaymentUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 1021
    :cond_8
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    iget-object v11, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mPassword:Ljava/lang/String;

    iget-object v12, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCheckinResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/mcdonalds/app/ordering/OrderingManager;->checkIn(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_2
.end method

.method public eatIn()V
    .locals 2

    .prologue
    const-string v0, "eatIn"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Eat In"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mTableServiceSelected:Z

    .line 164
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->totalizePayment()V

    .line 165
    return-void
.end method

.method public getShowLocationSelection()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v0, "getShowLocationSelection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mShowLocationSelection:Z

    return v0
.end method

.method public getShowTableService()Z
    .locals 6
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .prologue
    const-string v1, "getShowTableService"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "tableService":Lcom/mcdonalds/sdk/modules/models/TableService;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getTableService()Lcom/mcdonalds/sdk/modules/models/TableService;

    move-result-object v0

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/TableService;->isEnablePOSTableService()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 135
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/TableService;->getMinimumPurchaseAmount()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 136
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 133
    :goto_0
    return v1

    .line 136
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handlePaymentRegistrationError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "handlePaymentRegistrationError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1268
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneClickPaymentFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setPaymentNewCardStub(Z)V

    .line 1270
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkin(Z)V

    .line 1275
    :goto_0
    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->backToBasket()V

    .line 1273
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->finish()V

    goto :goto_0
.end method

.method public initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "initialize"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCvvDialogShown:Z

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mComingFromBagCharges:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setShowLocationSelection(Z)V

    .line 108
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mQRCodeScanned:Z

    if-nez v0, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->finishCheckin()V

    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setShowLocationSelection(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mStoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1147
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mStoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1151
    return-void
.end method

.method public outOfStockErrorResolved(I)V
    .locals 5
    .param p1, "productErrorCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "outOfStockErrorResolved"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    const/16 v0, -0x178b

    if-ne p1, v0, :cond_2

    .line 239
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mProductsRemoved:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    .line 241
    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mProductsRemoved:Z

    .line 256
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mTableServiceSelected:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->continueToTableServices()V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkin(Z)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setOrderPaymentId(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->totalize()V

    goto :goto_0
.end method

.method public paymentInfoEntered(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonCardInfo"    # Ljava/lang/String;

    .prologue
    const-string v1, "paymentInfoEntered"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 571
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->paymentDataCheckListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getPaymentData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 572
    return-void
.end method

.method public paymentSelected()V
    .locals 2

    .prologue
    const-string v0, "paymentSelected"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateTender()V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    .line 215
    return-void
.end method

.method public paymentSelected(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 3
    .param p1, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    const-string v0, "paymentSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->fromPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 220
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 223
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->finishCheckin()V

    .line 224
    return-void
.end method

.method public restaurantMismatchResolved()V
    .locals 3

    .prologue
    const-string v1, "restaurantMismatchResolved"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    const v2, 0x7f09040e

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showActivityIndicator(I)V

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mUpdatedProducts:Z

    .line 261
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 262
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$1;-><init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCatalogUpdated(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 280
    return-void
.end method

.method public setCVVEntered(Ljava/lang/String;)V
    .locals 4
    .param p1, "cvv"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const-string v0, "setCVVEntered"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setCVV(Ljava/lang/String;)V

    .line 195
    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCvvDialogShown:Z

    .line 196
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    .line 197
    return-void
.end method

.method public setComingFromBagCharges(Z)V
    .locals 4
    .param p1, "comingFromBagCharges"    # Z

    .prologue
    const-string v0, "setComingFromBagCharges"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mComingFromBagCharges:Z

    .line 101
    return-void
.end method

.method public setPasswordEntered(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const-string v0, "setPasswordEntered"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mPassword:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    .line 202
    return-void
.end method

.method public setPaymentNewCardStub(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const-string v0, "setPaymentNewCardStub"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setNewCardStub(Z)V

    .line 592
    return-void
.end method

.method public setQRCodeScanned(Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "setQRCodeScanned"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mCode:Ljava/lang/String;

    .line 142
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mQRCodeScanned:Z

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mStartTimeToCommunicate:J

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mLastAttemptTime:J

    .line 147
    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "storeIdString":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 149
    .local v2, "storeId":I
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "currentStoreId":I
    if-ne v0, v2, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->finishCheckin()V

    .line 158
    .end local v0    # "currentStoreId":I
    .end local v2    # "storeId":I
    .end local v3    # "storeIdString":Ljava/lang/String;
    :goto_0
    return-void

    .line 153
    .restart local v0    # "currentStoreId":I
    .restart local v2    # "storeId":I
    .restart local v3    # "storeIdString":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->handleStoreMismatch(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 155
    .end local v0    # "currentStoreId":I
    .end local v2    # "storeId":I
    .end local v3    # "storeIdString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v4}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showInvalidQRCodeError()V

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public tableServices()V
    .locals 2

    .prologue
    const-string v0, "tableServices"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Table Service"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mTableServiceSelected:Z

    .line 190
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->totalizePayment()V

    .line 191
    return-void
.end method

.method public tableServicesFinished(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "tableServicesFinished"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkin(Z)V

    .line 234
    :cond_0
    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mTableServiceSelected:Z

    .line 235
    return-void
.end method

.method public takeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "takeOut"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Take Out"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 171
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mSaleType:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 172
    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mTableServiceSelected:Z

    .line 174
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    .line 175
    .local v0, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isBagChargeAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->mView:Lcom/mcdonalds/app/ordering/payment/PaymentView;

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->continueToBagCharges()V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->preparePaymentAndCheckin()V

    .line 182
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->setShowLocationSelection(Z)V

    goto :goto_0
.end method

.method public thirdPartyFinished()V
    .locals 2

    .prologue
    const-string v0, "thirdPartyFinished"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->checkin(Z)V

    .line 228
    return-void
.end method
