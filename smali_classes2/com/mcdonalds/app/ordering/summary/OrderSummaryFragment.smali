.class public Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OrderSummaryFragment.java"


# instance fields
.field private final CONFIG_CONTACT_US_URL:Ljava/lang/String;

.field private final CONFIG_FEEDBACK_URL:Ljava/lang/String;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

.field private mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

.field private mFavoriteNameInput:Landroid/widget/TextView;

.field private mFavoritedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mRatingBox:Lcom/mcdonalds/app/ordering/summary/RatingBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 87
    const-string v0, "interface.legalCopy.feedbackUrl"

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->CONFIG_FEEDBACK_URL:Ljava/lang/String;

    .line 88
    const-string v0, "interface.aboutMcDonald.contactUs"

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->CONFIG_CONTACT_US_URL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->navigateToTrackOrder()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->onAddToFavoritesClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoriteNameInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoritedItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoritedItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.OrderSummaryFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->trackAddToFavorites()V

    return-void
.end method

.method private configureEmailReceiptMessage(Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;)V
    .locals 10
    .param p1, "details"    # Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "configureEmailReceiptMessage"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v3

    .line 523
    .local v3, "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    if-nez v3, :cond_0

    .line 524
    const-string v5, "ordering"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 525
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPaymentMethodId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethodForId(I)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    move-result-object v2

    .line 526
    .local v2, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v3

    .line 531
    .end local v1    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v2    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->isPaymentCash(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 532
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->getEmailMsg()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 535
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 536
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 538
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->getEmailMsg()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    const v5, 0x7f0905f6

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 540
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 539
    invoke-virtual {p0, v5, v6}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "emailMsg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 544
    .local v4, "styledText":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->getEmailMsg()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 546
    .end local v0    # "emailMsg":Ljava/lang/String;
    .end local v4    # "styledText":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->getEmailMsg()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private configureOrderDetails(Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;)V
    .locals 12
    .param p1, "details"    # Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const-string v7, "configureOrderDetails"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-nez v7, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->configureEmailReceiptMessage(Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;)V

    .line 467
    const-string v4, ""

    .line 468
    .local v4, "orderNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 469
    .local v3, "orderDate":Ljava/util/Date;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 470
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v4

    .line 471
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderDate()Ljava/util/Date;

    move-result-object v3

    .line 476
    :cond_2
    :goto_1
    const v7, 0x7f0905e2

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "orderNumberMsg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->getOrderNumber()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 481
    .local v1, "format":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "locale":Ljava/lang/String;
    const-string v7, "zh"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 483
    const-string v1, "yyyy/MM/dd aaa hh:mm "

    .line 489
    :goto_2
    if-eqz v3, :cond_3

    .line 490
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 491
    .local v0, "date":Ljava/text/DateFormat;
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->getOrderTimestamp()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .end local v0    # "date":Ljava/text/DateFormat;
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 496
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, "paymentTitle":Ljava/lang/String;
    :goto_3
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 509
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v9

    .line 510
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->getOrderReceiptContainer()Landroid/widget/LinearLayout;

    move-result-object v10

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 511
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v7

    .line 507
    :goto_4
    invoke-static {v8, v9, v10, v7, v6}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->configureOrderReceiptForDisplay(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isNutritionAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 516
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;->getCaloriesWarningView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 472
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "locale":Ljava/lang/String;
    .end local v5    # "orderNumberMsg":Ljava/lang/String;
    .end local v6    # "paymentTitle":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 473
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v4

    .line 474
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getEstimatedDeliveryTime()Ljava/util/Date;

    move-result-object v3

    goto/16 :goto_1

    .line 486
    .restart local v1    # "format":Ljava/lang/String;
    .restart local v2    # "locale":Ljava/lang/String;
    .restart local v5    # "orderNumberMsg":Ljava/lang/String;
    :cond_5
    const-string v1, "MM/dd/yyyy hh:mm aaa"

    goto/16 :goto_2

    .line 497
    :cond_6
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 498
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 499
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "paymentTitle":Ljava/lang/String;
    goto/16 :goto_3

    .line 501
    .end local v6    # "paymentTitle":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "paymentTitle":Ljava/lang/String;
    goto/16 :goto_3

    .line 504
    .end local v6    # "paymentTitle":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getPaymentName(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "paymentTitle":Ljava/lang/String;
    goto/16 :goto_3

    .line 511
    :cond_9
    const-string v7, ""

    goto/16 :goto_4
.end method

.method private getPaymentName(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Ljava/lang/String;
    .locals 3
    .param p1, "paymentMode"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .prologue
    const-string v0, "getPaymentName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->isPaymentCash(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 567
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_1
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->WeChat:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    const v0, 0x7f0905fe

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isFavoriteOrderProduct()Z
    .locals 5

    .prologue
    const-string v2, "isFavoriteOrderProduct"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, "retValue":Z
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 751
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    invoke-virtual {v3, v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isFavoriteOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 752
    const/4 v1, 0x1

    goto :goto_0

    .line 755
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return v1
.end method

.method private isPaymentCash(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Z
    .locals 4
    .param p1, "paymentMode"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "isPaymentCash"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    if-eqz p1, :cond_0

    .line 554
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 555
    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 558
    :cond_1
    return v0
.end method

.method private navigateToTrackOrder()V
    .locals 6

    .prologue
    const-string v4, "navigateToTrackOrder"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v2, "extras":Landroid/os/Bundle;
    const-string v4, "arg_order_number"

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderDate()Ljava/util/Date;

    move-result-object v3

    .line 406
    .local v3, "orderDate":Ljava/util/Date;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getEstimatedDeliveryTime()Ljava/util/Date;

    move-result-object v0

    .line 407
    .local v0, "edt":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "edtString":Ljava/lang/String;
    const-string v4, "arg_edt"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-class v4, Lcom/mcdonalds/app/ordering/summary/TrackOrderActivity;

    const-string v5, "track_order"

    invoke-virtual {p0, v4, v5, v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 410
    return-void
.end method

.method private onAddToFavoritesClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v3, "onAddToFavoritesClicked"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 581
    check-cast v0, Landroid/widget/Button;

    .line 583
    .local v0, "addFavoritesButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->show()V

    .line 584
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getRemoveFromFavoritesButton()Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v3}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getCancelToFavoritesButton()Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$8;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$8;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 728
    .local v2, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "EVENT_NAME"

    const-string v4, "trackingdd"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 730
    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 731
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 732
    .local v1, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v3, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 733
    return-void
.end method

.method private setupEDTContainer(Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;Lcom/mcdonalds/sdk/modules/models/OrderResponse;Z)V
    .locals 11
    .param p1, "header"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;
    .param p2, "checkoutResult"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p3, "isLargeOrder"    # Z

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const-string v5, "setupEDTContainer"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getEstimatedDeliveryTimeMessage()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getEstimatedDeliveryTime()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.hideEDTonConfirmationScreen"

    .line 418
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    .line 419
    .local v3, "hideEDT":Z
    if-nez v3, :cond_1

    .line 420
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderDate()Ljava/util/Date;

    move-result-object v4

    .line 421
    .local v4, "orderDate":Ljava/util/Date;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getEstimatedDeliveryTime()Ljava/util/Date;

    move-result-object v0

    .line 422
    .local v0, "edt":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatDateInSummary(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "formattedEDT":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/mcdonalds/app/util/UIUtils;->formatTimeInSummary(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "formattedOrderDate":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 425
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getOrderReceivedTime()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez p3, :cond_1

    .line 428
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getEstimatedDeliveryTime()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getEstimatedDeliveryTimeMessage()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getEstimatedDeliveryTime()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    .end local v0    # "edt":Ljava/util/Date;
    .end local v1    # "formattedEDT":Ljava/lang/String;
    .end local v2    # "formattedOrderDate":Ljava/lang/String;
    .end local v4    # "orderDate":Ljava/util/Date;
    :cond_1
    return-void
.end method

.method private setupModules()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const-string v4, "setupModules"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v4, :cond_1

    .line 440
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    .line 441
    .local v1, "manager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    .line 442
    .local v2, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    if-eqz v4, :cond_0

    move v0, v3

    .line 448
    .local v0, "doSetup":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 451
    iput-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 452
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->setNeedsToUpdateDeliveryTracking(Z)V

    .line 457
    .end local v0    # "doSetup":Z
    .end local v1    # "manager":Lcom/mcdonalds/app/ordering/OrderingManager;
    .end local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    return-void

    .line 445
    .restart local v1    # "manager":Lcom/mcdonalds/app/ordering/OrderingManager;
    .restart local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-eqz v4, :cond_3

    move v0, v3

    .restart local v0    # "doSetup":Z
    :cond_3
    goto :goto_0
.end method

.method private trackAddToFavorites()V
    .locals 6

    .prologue
    const-string v1, "trackAddToFavorites"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 737
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "save_orderm_as_favorite"

    .line 738
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "order_id"

    .line 739
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "product_id"

    .line 740
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "product_name"

    .line 741
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "product_quantity"

    .line 742
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "local_timestamp"

    .line 743
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 744
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v2

    .line 737
    invoke-static {v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 746
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-void
.end method

.method private trackOrderSummary()V
    .locals 18

    .prologue
    const-string v3, "trackOrderSummary"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    if-eqz v3, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v3

    if-nez v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v13

    .line 127
    .local v13, "orderNumber":Ljava/lang/String;
    const-string v16, "Delivery"

    .line 136
    .local v16, "pod":Ljava/lang/String;
    :goto_1
    const-string v12, ""

    .line 137
    .local v12, "offerType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 139
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 142
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v10, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "EVENT_NAME"

    const-string v4, "paysuccess"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v3, "ddtype"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v3, "ddoffertype"

    invoke-virtual {v10, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v3, "ddid"

    invoke-virtual {v10, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v4, "ddisoffer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    .line 148
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 147
    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 153
    .local v14, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v15

    .line 154
    .local v15, "p":Lcom/mcdonalds/sdk/modules/models/Product;
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;

    const-string v3, ""

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 156
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v6

    .line 155
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    .local v2, "item":Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 129
    .end local v2    # "item":Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;
    .end local v10    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;>;"
    .end local v12    # "offerType":Ljava/lang/String;
    .end local v13    # "orderNumber":Ljava/lang/String;
    .end local v14    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v15    # "p":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v16    # "pod":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v13

    .line 133
    .restart local v13    # "orderNumber":Ljava/lang/String;
    const-string v16, "Pickup"

    .restart local v16    # "pod":Ljava/lang/String;
    goto/16 :goto_1

    .line 148
    .restart local v10    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "offerType":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 156
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;>;"
    .restart local v14    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v15    # "p":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_5
    invoke-virtual {v15}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v6

    goto :goto_4

    .line 160
    .end local v14    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v15    # "p":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_6
    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 161
    invoke-virtual {v3, v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 163
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v6

    .line 162
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 164
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-direct {v4, v5, v13, v6, v11}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 162
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v8

    .line 166
    .local v8, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v3, v8}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    const v0, 0x7f090897

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 398
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    .line 399
    .local v0, "manager":Lcom/mcdonalds/app/ordering/OrderingManager;
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->deleteCurrentOrder()V

    .line 400
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 109
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 110
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 112
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->setupModules()V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->setHasOptionsMenu(Z)V

    .line 114
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->trackOrderSummary()V

    .line 115
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

    .line 173
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 174
    const v0, 0x7f120011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 175
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    const/16 v19, 0x0

    .line 200
    .local v19, "view":Landroid/view/View;
    const v22, 0x7f0400f3

    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 206
    const v22, 0x7f11035a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/app/ordering/summary/RatingBox;

    .line 207
    .local v18, "ratingBox":Lcom/mcdonalds/app/ordering/summary/RatingBox;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v22

    const-string v23, "interface.hideFeedbackCommentBox"

    invoke-virtual/range {v22 .. v23}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->hideCommentFields(Ljava/lang/Boolean;)V

    .line 209
    new-instance v10, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;

    const v22, 0x7f110359

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;-><init>(Landroid/view/View;)V

    .line 211
    .local v10, "header":Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;
    const v22, 0x7f1101fa

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoriteNameInput:Landroid/widget/TextView;

    .line 212
    new-instance v22, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mFavoriteInputViewHolder:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .line 214
    const-string v6, ""

    .line 215
    .local v6, "displayOrderNumber":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getOrderNumber()Landroid/widget/TextView;

    move-result-object v14

    .line 217
    .local v14, "orderNumberTextView":Landroid/widget/TextView;
    const v22, 0x7f110505

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v17

    .line 221
    .local v17, "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    if-nez v17, :cond_0

    .line 222
    const-string v22, "ordering"

    invoke-static/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 223
    .local v15, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPaymentMethodId()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethodForId(I)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    move-result-object v16

    .line 224
    .local v16, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    if-eqz v16, :cond_0

    .line 225
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v17

    .line 231
    .end local v15    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v16    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OrderView;->isIsLargeOrder()Z

    move-result v11

    .line 234
    .local v11, "isLargeOrder":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    .line 235
    .local v4, "checkoutResult":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->isPaymentCash(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 236
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getDisplayMessageContainerCash()Landroid/widget/LinearLayout;

    move-result-object v23

    if-eqz v11, :cond_6

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    :goto_1
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v6

    .line 244
    const/16 v22, 0x2

    const/high16 v23, 0x41c00000    # 24.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    if-eqz v11, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderDate()Ljava/util/Date;

    move-result-object v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v10, v0, v1, v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->showLargeOrderAlert(ZLandroid/content/Context;Ljava/util/Date;)V

    .line 250
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v11}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->setupEDTContainer(Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;Lcom/mcdonalds/sdk/modules/models/OrderResponse;Z)V

    .line 252
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getTrackOrderButton()Landroid/widget/Button;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getTrackOrderButton()Landroid/widget/Button;

    move-result-object v22

    new-instance v23, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$1;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .end local v4    # "checkoutResult":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .end local v11    # "isLargeOrder":Z
    :cond_2
    :goto_2
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getOrderNumber()Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    new-instance v8, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;

    const v22, 0x7f11035c

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;-><init>(Landroid/view/View;)V

    .line 288
    .local v8, "favoritesSaveCard":Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->getFeedbackButton()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$2;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v22

    const-string v23, "interface.ordering.hideFeedbackLink"

    invoke-virtual/range {v22 .. v23}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 317
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->getFeedbackButton()Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->isFavoriteOrderProduct()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 321
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->getAddToFavorites()Landroid/widget/Button;

    move-result-object v22

    const v23, 0x7f0905e5

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(I)V

    .line 326
    :goto_3
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->getAddToFavorites()Landroid/widget/Button;

    move-result-object v22

    new-instance v23, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$3;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v22, 0x7f11035a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/mcdonalds/app/ordering/summary/RatingBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mRatingBox:Lcom/mcdonalds/app/ordering/summary/RatingBox;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mRatingBox:Lcom/mcdonalds/app/ordering/summary/RatingBox;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->getSkipButton()Landroid/widget/Button;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mRatingBox:Lcom/mcdonalds/app/ordering/summary/RatingBox;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v23

    const-string v24, "interface.hideFeedbackCommentBox"

    invoke-virtual/range {v23 .. v24}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->hideCommentFields(Ljava/lang/Boolean;)V

    .line 337
    const v22, 0x7f1104c5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 338
    .local v12, "myvoice":Landroid/widget/Button;
    new-instance v22, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$4;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 358
    const v22, 0x7f0905df

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, "formattedString":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->getSaveCard()Landroid/widget/Button;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->getSaveCard()Landroid/widget/Button;

    move-result-object v22

    new-instance v23, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$5;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    .end local v9    # "formattedString":Ljava/lang/String;
    :cond_4
    new-instance v13, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;

    const v22, 0x7f11035d

    .line 371
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;-><init>(Landroid/view/View;)V

    .line 373
    .local v13, "orderDetailsHolder":Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->configureOrderDetails(Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;)V

    .line 376
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v22

    const-string v23, "interface.orderingDisclaimerInfo"

    invoke-virtual/range {v22 .. v23}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 377
    const v22, 0x7f1100e6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 378
    .local v21, "warningsContainer":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "orderSummaryView"

    invoke-static/range {v21 .. v23}, Lcom/mcdonalds/app/util/UIUtils;->addDisclaimerTextView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    .end local v21    # "warningsContainer":Landroid/view/ViewGroup;
    :cond_5
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "currencyCode":Ljava/lang/String;
    new-instance v22, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct/range {v22 .. v22}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v23, "payment_confirm"

    .line 384
    invoke-virtual/range {v22 .. v23}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v22

    const-string v23, "order_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v24, v0

    .line 385
    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderNumber()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v22

    const-string v23, "fop_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v24, v0

    .line 386
    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getOrderPaymentId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v22

    const-string v23, "curr_cd"

    .line 387
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v22

    const-string v23, "order_amt"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v24, v0

    .line 388
    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v22

    const-string v23, "local_timestamp"

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    new-instance v25, Ljava/util/Date;

    invoke-direct/range {v25 .. v25}, Ljava/util/Date;-><init>()V

    invoke-static/range {v24 .. v25}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v22

    .line 390
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v22

    .line 383
    invoke-static/range {v22 .. v22}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    move-object/from16 v20, v19

    .line 392
    .end local v5    # "currencyCode":Ljava/lang/String;
    .end local v6    # "displayOrderNumber":Ljava/lang/String;
    .end local v8    # "favoritesSaveCard":Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;
    .end local v10    # "header":Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;
    .end local v12    # "myvoice":Landroid/widget/Button;
    .end local v13    # "orderDetailsHolder":Lcom/mcdonalds/app/ordering/summary/OrderDetailsHolder;
    .end local v14    # "orderNumberTextView":Landroid/widget/TextView;
    .end local v17    # "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .end local v18    # "ratingBox":Lcom/mcdonalds/app/ordering/summary/RatingBox;
    .end local v19    # "view":Landroid/view/View;
    .local v20, "view":Landroid/view/View;
    :goto_4
    return-object v20

    .line 201
    .end local v20    # "view":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    :catch_0
    move-exception v7

    .line 202
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    move-object/from16 v20, v19

    .line 203
    .end local v19    # "view":Landroid/view/View;
    .restart local v20    # "view":Landroid/view/View;
    goto :goto_4

    .line 236
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v20    # "view":Landroid/view/View;
    .restart local v4    # "checkoutResult":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .restart local v6    # "displayOrderNumber":Ljava/lang/String;
    .restart local v10    # "header":Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;
    .restart local v11    # "isLargeOrder":Z
    .restart local v14    # "orderNumberTextView":Landroid/widget/TextView;
    .restart local v17    # "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .restart local v18    # "ratingBox":Lcom/mcdonalds/app/ordering/summary/RatingBox;
    .restart local v19    # "view":Landroid/view/View;
    :cond_6
    const/16 v22, 0x8

    goto/16 :goto_0

    .line 238
    :cond_7
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getDisplayMessageContainer()Landroid/widget/LinearLayout;

    move-result-object v23

    if-eqz v11, :cond_8

    const/16 v22, 0x0

    :goto_5
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    const/16 v22, 0x8

    goto :goto_5

    .line 267
    .end local v4    # "checkoutResult":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .end local v11    # "isLargeOrder":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->isPaymentCash(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 269
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getDisplayMessageContainerCash()Landroid/widget/LinearLayout;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    :goto_6
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getEDTContainer()Landroid/widget/LinearLayout;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getTrackOrderButton()Landroid/widget/Button;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OrderView;->isIsLargeOrder()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v22

    const-string v23, "interface.showLargerOrderNotification"

    invoke-virtual/range {v22 .. v23}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderDate()Ljava/util/Date;

    move-result-object v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v10, v0, v1, v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->showLargeOrderAlert(ZLandroid/content/Context;Ljava/util/Date;)V

    .line 282
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 271
    :cond_b
    invoke-virtual {v10}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryHeader;->getDisplayMessageContainer()Landroid/widget/LinearLayout;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 323
    .restart local v8    # "favoritesSaveCard":Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;
    :cond_c
    invoke-virtual {v8}, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->getAddToFavorites()Landroid/widget/Button;

    move-result-object v22

    const v23, 0x7f0905de

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const-string v2, "onOptionsItemSelected"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 187
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 181
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "REFRESH_LAST_ORDER"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-class v2, Lcom/mcdonalds/app/MainActivity;

    invoke-virtual {p0, v2, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x7f110552
        :pswitch_0
    .end packed-switch
.end method

.method onSaveCardClicked()V
    .locals 2

    .prologue
    const-string v0, "onSaveCardClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    return-void
.end method
