.class public Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "StorePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mOnItemClickListener:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;

.field private mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

.field private mStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mStores:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;)Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.StorePagerAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mOnItemClickListener:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;

    return-object v0
.end method

.method private getDistanceString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v1, "getDistanceString"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {p1, p2}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "distanceString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 125
    const v1, 0x7f09042c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method private getTextColor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v1, "getTextColor"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    const v1, 0x7f0e005e

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 137
    .local v0, "textColor":I
    :goto_0
    return v0

    .line 135
    .end local v0    # "textColor":I
    :cond_0
    const v1, 0x7f0e0057

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .restart local v0    # "textColor":I
    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    const-string v0, "destroyItem"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const-string v0, "getItemPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const/4 v0, -0x2

    return v0
.end method

.method public getStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getStores"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mStores:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 21
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const-string v17, "instantiateItem"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 60
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 61
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f0401aa

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 63
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mStores:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 65
    .local v13, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->getTextColor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)I

    move-result v15

    .line 66
    .local v15, "textColor":I
    const v17, 0x7f1103fa

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    .local v3, "address":Landroid/widget/TextView;
    const v17, 0x7f1103f8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 68
    .local v11, "name":Landroid/widget/TextView;
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 70
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPublicName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-static {v4, v13, v0}, Lcom/mcdonalds/app/util/UIUtils;->getDailyStoreHoursStringByLocationId(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;I)Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "storeHoursString":Ljava/lang/String;
    if-nez v14, :cond_0

    .line 78
    invoke-static {v4, v13}, Lcom/mcdonalds/app/util/UIUtils;->getDailyStoreHoursString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v14

    .line 80
    :cond_0
    const v17, 0x7f1103d8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 82
    .local v7, "hours":Landroid/widget/TextView;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 83
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->getDistanceString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "distanceString":Ljava/lang/String;
    const v17, 0x7f1103d9

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 91
    .local v5, "distance":Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v17, 0x7f1103fb

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 94
    .local v8, "icon":Landroid/view/View;
    const v17, 0x7f1103dc

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 95
    .local v12, "selectButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->isCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 96
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mOnItemClickListener:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 101
    new-instance v17, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v17, 0x7f11013b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 109
    .local v10, "infoButton":Landroid/view/View;
    new-instance v17, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .end local v10    # "infoButton":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    return-object v16

    .line 73
    .end local v5    # "distance":Landroid/widget/TextView;
    .end local v6    # "distanceString":Ljava/lang/String;
    .end local v7    # "hours":Landroid/widget/TextView;
    .end local v8    # "icon":Landroid/view/View;
    .end local v12    # "selectButton":Landroid/view/View;
    .end local v14    # "storeHoursString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPublicName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 86
    .restart local v7    # "hours":Landroid/widget/TextView;
    .restart local v14    # "storeHoursString":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isViewFromObject"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    if-ne p1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;)V
    .locals 3
    .param p1, "onItemClickListener"    # Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;

    .prologue
    const-string v0, "setOnItemClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mOnItemClickListener:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;

    .line 45
    return-void
.end method

.method public setStores(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v0, "setStores"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->mStores:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method
