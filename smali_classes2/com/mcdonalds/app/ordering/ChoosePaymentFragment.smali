.class public Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChoosePaymentFragment.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mButtonsContainer:Landroid/view/ViewGroup;

.field private final mOnClickPaymentMethod:Landroid/view/View$OnClickListener;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment$1;-><init>(Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->mOnClickPaymentMethod:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.ChoosePaymentFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method private displayMethods()V
    .locals 9

    .prologue
    const-string v5, "displayMethods"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 76
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/data/repository/PaymentMethodRepository;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 77
    .local v4, "methods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    if-nez v4, :cond_1

    .line 96
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getPaymentMethodIds()Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "allowedPaymentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    .line 85
    .local v3, "method":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    const v6, 0x7f0401a8

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->mButtonsContainer:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getPaymentName(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->mOnClickPaymentMethod:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->mButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getPaymentMethodIds()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v6, "getPaymentMethodIds"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x4

    .line 153
    .local v1, "locIdToGet":I
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    .line 155
    .local v3, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    .line 156
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v5, :cond_2

    .line 157
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLocations()Ljava/util/List;

    move-result-object v2

    .line 158
    .local v2, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    .line 160
    .local v0, "loc":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getLocationID()I

    move-result v7

    if-ne v1, v7, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getPaymentMethods()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 152
    .end local v0    # "loc":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    .end local v1    # "locIdToGet":I
    .end local v2    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    .end local v3    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 166
    .restart local v1    # "locIdToGet":I
    .restart local v3    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    return-object v4
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

    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v0, ""

    .line 112
    :goto_0
    return-object v0

    .line 104
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_2
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->WeChat:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    const v0, 0x7f09081f

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const v0, 0x7f09086d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->displayMethods()V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v1, 0x7f0400a6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f11028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/ChoosePaymentFragment;->mButtonsContainer:Landroid/view/ViewGroup;

    .line 62
    return-object v0
.end method
