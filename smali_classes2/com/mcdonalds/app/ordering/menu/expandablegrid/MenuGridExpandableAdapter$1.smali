.class Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;
.super Ljava/lang/Object;
.source "MenuGridExpandableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->onBindChildViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

.field final synthetic val$childViewHolder:Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;

.field final synthetic val$position:I

.field final synthetic val$product:Lcom/mcdonalds/sdk/modules/models/Product;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;ILcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    iput p2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->val$childViewHolder:Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;

    iput-object p4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->val$product:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v6, "onClick"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "categoryCount":I
    const/4 v4, 0x0

    .line 105
    .local v4, "productCount":I
    const/4 v1, 0x0

    .line 106
    .local v1, "catId":I
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-static {v6}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->access$000(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    .line 107
    .local v0, "catEx":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    add-int/lit8 v2, v2, 0x1

    .line 108
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-static {v7}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->access$000(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 109
    .local v5, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    iget v7, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->val$position:I

    sub-int/2addr v7, v2

    sub-int v3, v7, v4

    .line 110
    .local v3, "itemPosition":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getCategory()Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Category;->getID()I

    move-result v1

    .line 118
    .end local v0    # "catEx":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    .end local v3    # "itemPosition":I
    .end local v5    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->val$childViewHolder:Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;

    iget-object v7, v7, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->image:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$1;->val$product:Lcom/mcdonalds/sdk/modules/models/Product;

    const-string v9, ""

    invoke-static {v6, v7, v8, v9, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->access$100(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V

    .line 119
    return-void

    .line 114
    .restart local v0    # "catEx":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    .restart local v3    # "itemPosition":I
    .restart local v5    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v4, v7

    .line 115
    goto :goto_0
.end method
