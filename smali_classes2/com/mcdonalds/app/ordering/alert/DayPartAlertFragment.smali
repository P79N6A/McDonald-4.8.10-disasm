.class public Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/AlertFragment;
.source "DayPartAlertFragment.java"


# instance fields
.field mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;-><init>()V

    return-void
.end method

.method private displayStoreClosed(Landroid/view/View;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "displayStoreClosed"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v8

    aput-object p2, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const v6, 0x7f110067

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 93
    .local v4, "title":Landroid/widget/TextView;
    const v6, 0x7f090717

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v6, 0x7f110260

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "description":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    .line 98
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 101
    .local v0, "day":I
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 102
    .local v3, "operatingHours":[Ljava/lang/String;
    const-string v2, ""

    .line 103
    .local v2, "fromTime":Ljava/lang/String;
    const-string v5, ""

    .line 104
    .local v5, "toTime":Ljava/lang/String;
    aget-object v6, v3, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    aget-object v6, v3, v8

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 107
    :cond_0
    aget-object v6, v3, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    aget-object v6, v3, v9

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 110
    :cond_1
    const v6, 0x7f090716

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v5, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .end local v0    # "day":I
    .end local v2    # "fromTime":Ljava/lang/String;
    .end local v3    # "operatingHours":[Ljava/lang/String;
    .end local v5    # "toTime":Ljava/lang/String;
    :goto_0
    return-void

    .line 112
    :cond_2
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayWrongDayPart(Landroid/view/View;Lcom/mcdonalds/sdk/modules/storelocator/Store;Ljava/lang/String;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p3, "currentDayPart"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "displayWrongDayPart"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    .line 118
    const v3, 0x7f110067

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f0901a0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p3, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v3, 0x7f110260

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    .local v0, "description":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypes()Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0901a1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v6

    .line 128
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/MenuType;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v3

    invoke-static {v3, p2}, Lcom/mcdonalds/app/util/AppUtils;->getDayPartInitialTime(ILcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    .line 125
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0908bc

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getFragmentResourceId()I
    .locals 2

    .prologue
    const-string v0, "getFragmentResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const v0, 0x7f0400ad

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getFragmentResourceId()I

    move-result v8

    .line 47
    .local v8, "resourceId":I
    const/4 v11, 0x0

    invoke-virtual {p1, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 49
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f110278

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->mNegativeButton:Landroid/widget/Button;

    .line 50
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v11, 0x7f110279

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->mPositiveButton:Landroid/widget/Button;

    .line 52
    iget-object v11, p0, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const-string v11, "ordering"

    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 56
    .local v4, "mOrderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v7

    .line 57
    .local v7, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v9

    .line 58
    .local v9, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    .line 59
    .local v3, "isDelivery":Z
    invoke-virtual {v9, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v1

    .line 61
    .local v1, "currentDayPartID":I
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMenuTypes()Ljava/util/List;

    move-result-object v6

    .line 62
    .local v6, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    const-string v0, ""

    .line 64
    .local v0, "currentDayPart":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "arg_edit_product"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "dataPasserKey":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v11, p0, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 67
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isStoreClosed()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 68
    invoke-direct {p0, v10, v9}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->displayStoreClosed(Landroid/view/View;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 88
    :goto_0
    return-object v10

    .line 71
    :cond_0
    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 73
    .local v5, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v12

    if-ne v12, v1, :cond_1

    .line 74
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 78
    .end local v5    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    :cond_2
    if-nez v1, :cond_4

    .line 79
    const v11, 0x7f090116

    invoke-virtual {p0, v11}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_3
    :goto_2
    invoke-direct {p0, v10, v9, v0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->displayWrongDayPart(Landroid/view/View;Lcom/mcdonalds/sdk/modules/storelocator/Store;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_4
    const v11, 0x7f090504

    invoke-virtual {p0, v11}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public onNegativeButtonClicked()V
    .locals 2

    .prologue
    const-string v0, "onNegativeButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 142
    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 3

    .prologue
    const-string v1, "onPositiveButtonClicked"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 149
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->mProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/DayPartAlertFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidDayPartsError(Landroid/content/Context;)V

    goto :goto_0
.end method
