.class public Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CollectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/widget/CollectionView;


# direct methods
.method protected constructor <init>(Lcom/mcdonalds/app/widget/CollectionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/widget/CollectionView;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;->this$0:Lcom/mcdonalds/app/widget/CollectionView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const-string v3, "getCount"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "rowCount":I
    iget-object v3, p0, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;->this$0:Lcom/mcdonalds/app/widget/CollectionView;

    invoke-static {v3}, Lcom/mcdonalds/app/widget/CollectionView;->access$500(Lcom/mcdonalds/app/widget/CollectionView;)Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/widget/CollectionView$Inventory;->access$000(Lcom/mcdonalds/app/widget/CollectionView$Inventory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .line 176
    .local v0, "group":Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;
    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->getRowCount()I

    move-result v2

    .line 177
    .local v2, "thisGroupRowCount":I
    add-int/2addr v1, v2

    .line 178
    goto :goto_0

    .line 179
    .end local v0    # "group":Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;
    .end local v2    # "thisGroupRowCount":I
    :cond_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "row"    # I

    .prologue
    const-string v0, "getItemViewType"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;->this$0:Lcom/mcdonalds/app/widget/CollectionView;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/widget/CollectionView;->access$700(Lcom/mcdonalds/app/widget/CollectionView;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "row"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;->this$0:Lcom/mcdonalds/app/widget/CollectionView;

    invoke-static {v0, p1, p2, p3}, Lcom/mcdonalds/app/widget/CollectionView;->access$600(Lcom/mcdonalds/app/widget/CollectionView;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v1, "getView"

    invoke-static {p0, v1}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const-string v0, "getViewTypeCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;->this$0:Lcom/mcdonalds/app/widget/CollectionView;

    invoke-static {v0}, Lcom/mcdonalds/app/widget/CollectionView;->access$500(Lcom/mcdonalds/app/widget/CollectionView;)Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/widget/CollectionView$Inventory;->access$000(Lcom/mcdonalds/app/widget/CollectionView$Inventory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
