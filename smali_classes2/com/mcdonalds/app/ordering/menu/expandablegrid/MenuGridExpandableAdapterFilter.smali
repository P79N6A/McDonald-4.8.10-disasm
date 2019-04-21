.class public Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;
.super Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;
.source "MenuGridExpandableAdapterFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

.field private mNoItemFound:Landroid/widget/TextView;

.field private mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "params"    # Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;
    .param p2, "adapter"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;
    .param p3, "noItemFound"    # Landroid/widget/TextView;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;-><init>(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Landroid/widget/TextView;)V

    .line 26
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    .line 27
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    .line 28
    iput-object p3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mNoItemFound:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const-string v3, "performFiltering"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->searchQuery:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;-><init>()V

    .line 36
    .local v0, "holder":Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 38
    .local v2, "results":Landroid/widget/Filter$FilterResults;
    const-string v3, "ordering"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 39
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v3, v3, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->pod:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget v4, v4, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->currentMenuPartId:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductsForOrdering(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;->productMap:Ljava/util/Map;

    .line 40
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 41
    iget-object v3, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;->productMap:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->getCount(Ljava/util/Map;)I

    move-result v3

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 43
    return-object v2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "publishResults"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;

    .line 50
    .local v0, "results":Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->setFilterFlag(Z)V

    .line 51
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    iget-object v3, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;->productMap:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->setProductMap(Ljava/util/Map;)V

    .line 52
    iget-object v1, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter$ProductsFilterResults;->productMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mNoItemFound:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 50
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;->mNoItemFound:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
