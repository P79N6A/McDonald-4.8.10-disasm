.class public Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;
.super Landroid/widget/Filter;
.source "MenuGridAdapterFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

.field private mNoItemFound:Landroid/widget/TextView;

.field private mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "params"    # Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;
    .param p2, "adapter"    # Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;
    .param p3, "noItemFound"    # Landroid/widget/TextView;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    .line 26
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    .line 27
    iput-object p3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mNoItemFound:Landroid/widget/TextView;

    .line 28
    return-void
.end method


# virtual methods
.method protected getCount(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const-string v2, "getCount"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "result":I
    if-eqz p1, :cond_1

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v0, Ljava/util/List;

    .line 64
    .local v0, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 70
    .end local v0    # "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_1
    return v1
.end method

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

    .line 33
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->searchQuery:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;

    invoke-direct {v0}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;-><init>()V

    .line 35
    .local v0, "holder":Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 37
    .local v2, "results":Landroid/widget/Filter$FilterResults;
    const-string v3, "ordering"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 38
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v3, v3, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->pod:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget v4, v4, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->currentMenuPartId:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductsForOrdering(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;->productMap:Ljava/util/Map;

    .line 39
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 40
    iget-object v3, v0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;->productMap:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->getCount(Ljava/util/Map;)I

    move-result v3

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 42
    return-object v2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/4 v4, 0x0

    const-string v1, "publishResults"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;

    .line 49
    .local v0, "results":Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;->productMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->setProductMap(Ljava/util/Map;)V

    .line 51
    iget-object v1, v0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter$ProductsFilterResults;->productMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mNoItemFound:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;->mNoItemFound:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
