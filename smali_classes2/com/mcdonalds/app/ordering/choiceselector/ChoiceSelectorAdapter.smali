.class public Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChoiceSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;,
        Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;,
        Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/mcdonalds/app/util/BindingHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBasePrice:D

.field private mOnProductClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;

.field private mOnProductCustomizeClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;

.field private mOnProductInfoClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;

.field private mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mOutageCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mSelected:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOptions:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.choiceselector.ChoiceSelectorAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->productClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.choiceselector.ChoiceSelectorAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->productCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.choiceselector.ChoiceSelectorAdapter"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->productInfoClicked(Ljava/lang/String;)V

    return-void
.end method

.method private productClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v0, "productClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;->onProductClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 131
    :cond_0
    return-void
.end method

.method private productCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-string v0, "productCustomizeClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductCustomizeClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductCustomizeClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;->onProductCustomizeClicked(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 137
    :cond_0
    return-void
.end method

.method private productInfoClicked(Ljava/lang/String;)V
    .locals 3
    .param p1, "recipeID"    # Ljava/lang/String;

    .prologue
    const-string v0, "productInfoClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductInfoClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductInfoClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;->onProductInfoClicked(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    const-string v0, "onBindViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    check-cast p1, Lcom/mcdonalds/app/util/BindingHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->onBindViewHolder(Lcom/mcdonalds/app/util/BindingHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mcdonalds/app/util/BindingHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/mcdonalds/app/util/BindingHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v5, "onBindViewHolder"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v7

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v6

    invoke-static {p0, v5, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1}, Lcom/mcdonalds/app/util/BindingHolder;->getBinding()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    .line 84
    .local v0, "binding":Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOptions:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 85
    .local v3, "option":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v4, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOutageCode:Ljava/util/List;

    .line 87
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Z)V

    .line 89
    .local v4, "productDetailsItemPresenter":Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;
    iget-wide v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mBasePrice:D

    invoke-virtual {v4, v8, v9}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->setBasePrice(D)V

    .line 90
    iget v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mSelected:I

    if-ne p2, v5, :cond_0

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->setChecked(Z)V

    .line 92
    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->setPresenter(Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;)V

    .line 94
    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    const v8, 0x7f110136

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/grantland/widget/AutofitTextView;

    .line 95
    .local v1, "mAutofitTextView":Lme/grantland/widget/AutofitTextView;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOutageCode:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Lme/grantland/widget/AutofitTextView;->setEnabled(Z)V

    .line 96
    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->getRoot()Landroid/view/View;

    move-result-object v8

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOutageCode:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    iget-object v8, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->hatButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOutageCode:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 98
    iget-object v5, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->infoButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOutageCode:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 100
    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$1;

    invoke-direct {v6, p0, v3}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v5, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->hatButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$2;

    invoke-direct {v6, p0, v3}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v5, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->infoButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$3;

    invoke-direct {v6, p0, v4}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$3;-><init>(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f110139

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, "mCustomSpecialInstructions":Landroid/widget/TextView;
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    const-class v6, Lcom/mcdonalds/app/util/BindingHolder;

    invoke-static {v5, v6, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 124
    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    const-string v6, "ProductItemPressed"

    invoke-static {v5, v6, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V

    .line 125
    return-void

    .end local v1    # "mAutofitTextView":Lme/grantland/widget/AutofitTextView;
    .end local v2    # "mCustomSpecialInstructions":Landroid/widget/TextView;
    :cond_0
    move v5, v7

    .line 90
    goto/16 :goto_0

    .restart local v1    # "mAutofitTextView":Lme/grantland/widget/AutofitTextView;
    :cond_1
    move v5, v7

    .line 95
    goto/16 :goto_1

    :cond_2
    move v5, v7

    .line 96
    goto :goto_2

    :cond_3
    move v5, v7

    .line 97
    goto :goto_3

    :cond_4
    move v6, v7

    .line 98
    goto :goto_4
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const-string v0, "onCreateViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/util/BindingHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/util/BindingHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 68
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 69
    invoke-static {v1, p1, v2}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    move-result-object v0

    .line 70
    .local v0, "binding":Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;
    new-instance v2, Lcom/mcdonalds/app/util/BindingHolder;

    invoke-direct {v2, v0}, Lcom/mcdonalds/app/util/BindingHolder;-><init>(Landroid/databinding/ViewDataBinding;)V

    return-object v2
.end method

.method public setBasePrice(D)V
    .locals 5
    .param p1, "basePrice"    # D

    .prologue
    const-string v0, "setBasePrice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-wide p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mBasePrice:D

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method public setOnProductClickedListener(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;)V
    .locals 3
    .param p1, "onProductClickedListener"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;

    .prologue
    const-string v0, "setOnProductClickedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductClickedListener;

    .line 49
    return-void
.end method

.method public setOnProductCustomizeClickedListener(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;)V
    .locals 3
    .param p1, "onProductCustomizeClickedListener"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;

    .prologue
    const-string v0, "setOnProductCustomizeClickedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductCustomizeClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductCustomizeClickedListener;

    .line 53
    return-void
.end method

.method public setOnProductInfoClickedListener(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;)V
    .locals 3
    .param p1, "onProductInfoClickedListener"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;

    .prologue
    const-string v0, "setOnProductInfoClickedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOnProductInfoClickedListener:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$OnProductInfoClickedListener;

    .line 57
    return-void
.end method

.method public setOptions(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .local p2, "outageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "setOptions"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOptions:Ljava/util/List;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mSelected:I

    .line 38
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mOutageCode:Ljava/util/List;

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method

.method public setSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-string v1, "setSelected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mSelected:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 147
    iget v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mSelected:I

    .line 148
    .local v0, "previous":I
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->notifyItemChanged(I)V

    .line 150
    .end local v0    # "previous":I
    :cond_0
    iput p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->mSelected:I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->notifyItemChanged(I)V

    .line 152
    return-void
.end method
