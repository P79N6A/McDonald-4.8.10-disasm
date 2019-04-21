.class public Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProductCustomizationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->mItems:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public changeDataInAdapter()V
    .locals 2

    .prologue
    const-string v0, "changeDataInAdapter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->listener:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;->onChangeDataInAdapter()V

    .line 67
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getItems"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->mItems:Ljava/util/List;

    return-object v0
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

    .line 18
    check-cast p1, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->onBindViewHolder(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;
    .param p2, "position"    # I

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

    .line 46
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->bind(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;)V

    .line 47
    iget-object v0, p1, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->itemView:Landroid/view/View;

    const-class v1, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    invoke-static {v0, v1, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 48
    return-void
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

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040135

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    invoke-direct {v1, v0, p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;-><init>(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v1
.end method

.method public setItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;>;"
    const-string v0, "setItems"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public setOnUpdateDataListener(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;

    .prologue
    const-string v0, "setOnUpdateDataListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->listener:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter$OnUpdateDataListener;

    .line 31
    return-void
.end method
