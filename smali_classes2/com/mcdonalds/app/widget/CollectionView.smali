.class public Lcom/mcdonalds/app/widget/CollectionView;
.super Landroid/widget/ListView;
.source "CollectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;,
        Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;,
        Lcom/mcdonalds/app/widget/CollectionView$Inventory;,
        Lcom/mcdonalds/app/widget/CollectionView$EmptyView;,
        Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;,
        Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

.field private mContentTopClearance:I

.field private mInternalPadding:I

.field private mInventory:Lcom/mcdonalds/app/widget/CollectionView$Inventory;

.field private mMultiScrollListener:Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;

.field mRowComputeResult:Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/widget/CollectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mcdonalds/app/widget/CollectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v1, Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    invoke-direct {v1}, Lcom/mcdonalds/app/widget/CollectionView$Inventory;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInventory:Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    .line 46
    iput-object v3, p0, Lcom/mcdonalds/app/widget/CollectionView;->mCallbacks:Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

    .line 47
    iput v2, p0, Lcom/mcdonalds/app/widget/CollectionView;->mContentTopClearance:I

    .line 217
    new-instance v1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    invoke-direct {v1, p0, v3}, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;-><init>(Lcom/mcdonalds/app/widget/CollectionView;Lcom/mcdonalds/app/widget/CollectionView$1;)V

    iput-object v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mRowComputeResult:Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    .line 61
    new-instance v1, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;-><init>(Lcom/mcdonalds/app/widget/CollectionView;)V

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/widget/CollectionView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/widget/CollectionView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/widget/CollectionView;->setDividerHeight(I)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/widget/CollectionView;->setItemsCanFocus(Z)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/widget/CollectionView;->setChoiceMode(I)V

    .line 66
    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/widget/CollectionView;->setSelector(I)V

    .line 68
    if-eqz p2, :cond_0

    .line 69
    sget-object v1, Lcom/mcdonalds/app/R$styleable;->CollectionView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "xmlArgs":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInternalPadding:I

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mContentTopClearance:I

    .line 76
    .end local v0    # "xmlArgs":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/widget/CollectionView;)Lcom/mcdonalds/app/widget/CollectionView$Inventory;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInventory:Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/widget/CollectionView;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView"

    const-string v2, "access$600"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/widget/CollectionView;->getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/widget/CollectionView;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView"

    const-string v2, "access$700"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/CollectionView;->getRowViewType(I)I

    move-result v0

    return v0
.end method

.method private computeRowContent(ILcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Z
    .locals 8
    .param p1, "row"    # I
    .param p2, "result"    # Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "computeRowContent"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v4

    aput-object p2, v6, v3

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "curRow":I
    const/4 v2, 0x0

    .line 139
    .local v2, "posInGroup":I
    iget-object v5, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInventory:Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    invoke-static {v5}, Lcom/mcdonalds/app/widget/CollectionView$Inventory;->access$000(Lcom/mcdonalds/app/widget/CollectionView$Inventory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .line 140
    .local v1, "group":Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;
    invoke-static {v1}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$100(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    if-ne v0, p1, :cond_1

    .line 143
    iput p1, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->row:I

    .line 144
    iput-boolean v3, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->isHeader:Z

    .line 145
    invoke-static {v1}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$200(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I

    move-result v4

    iput v4, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupId:I

    .line 146
    iput-object v1, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .line 147
    const/4 v4, -0x1

    iput v4, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupOffset:I

    .line 168
    .end local v1    # "group":Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;
    :goto_0
    return v3

    .line 150
    .restart local v1    # "group":Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 152
    :cond_2
    const/4 v2, 0x0

    .line 153
    :goto_1
    invoke-static {v1}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$300(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 154
    if-ne v0, p1, :cond_3

    .line 156
    iput p1, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->row:I

    .line 157
    iput-boolean v4, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->isHeader:Z

    .line 158
    invoke-static {v1}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$200(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I

    move-result v4

    iput v4, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupId:I

    .line 159
    iput-object v1, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .line 160
    iput v2, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupOffset:I

    goto :goto_0

    .line 164
    :cond_3
    invoke-static {v1}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$400(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I

    move-result v6

    add-int/2addr v2, v6

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "group":Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;
    :cond_4
    move v3, v4

    .line 168
    goto :goto_0
.end method

.method private getItemView(Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "rowInfo"    # Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;
    .param p2, "column"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v0, "getItemView"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget v0, p1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupOffset:I

    add-int v4, v0, p2

    .line 285
    .local v4, "indexInGroup":I
    iget-object v0, p1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    invoke-static {v0}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$300(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I

    move-result v0

    if-lt v4, v0, :cond_1

    .line 287
    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/mcdonalds/app/widget/CollectionView$EmptyView;

    if-eqz v0, :cond_0

    move-object v7, p3

    .line 303
    .end local p3    # "view":Landroid/view/View;
    .local v7, "view":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 290
    .end local v7    # "view":Ljava/lang/Object;
    .restart local p3    # "view":Landroid/view/View;
    :cond_0
    new-instance p3, Lcom/mcdonalds/app/widget/CollectionView$EmptyView;

    .end local p3    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/mcdonalds/app/widget/CollectionView$EmptyView;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/widget/CollectionView$1;)V

    .line 291
    .restart local p3    # "view":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v7, p3

    .line 293
    .restart local v7    # "view":Ljava/lang/Object;
    goto :goto_0

    .line 296
    .end local v7    # "view":Ljava/lang/Object;
    :cond_1
    if-eqz p3, :cond_2

    instance-of v0, p3, Lcom/mcdonalds/app/widget/CollectionView$EmptyView;

    if-eqz v0, :cond_3

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mCallbacks:Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupId:I

    invoke-interface {v0, v1, v2, p4}, Lcom/mcdonalds/app/widget/CollectionViewCallbacks;->newCollectionItemView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mCallbacks:Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupId:I

    iget-object v2, p1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .line 301
    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->getDataIndex(I)I

    move-result v5

    iget-object v2, p1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    iget v6, p1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupOffset:I

    add-int/2addr v6, p2

    .line 302
    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->getItemTag(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, p3

    .line 300
    invoke-interface/range {v0 .. v6}, Lcom/mcdonalds/app/widget/CollectionViewCallbacks;->bindCollectionItemView(Landroid/content/Context;Landroid/view/View;IIILjava/lang/Object;)V

    move-object v7, p3

    .line 303
    .restart local v7    # "view":Ljava/lang/Object;
    goto :goto_0
.end method

.method private getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "row"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v0, "getRowView"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mRowComputeResult:Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/widget/CollectionView;->computeRowContent(ILcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mRowComputeResult:Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    invoke-direct {p0, p2, v0, p3}, Lcom/mcdonalds/app/widget/CollectionView;->makeRow(Landroid/view/View;Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 213
    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .line 212
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    const-string v0, "CollectionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row passed to getView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-nez p2, :cond_0

    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getRowViewType(I)I
    .locals 4
    .param p1, "row"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "getRowViewType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mRowComputeResult:Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    invoke-direct {p0, p1, v1}, Lcom/mcdonalds/app/widget/CollectionView;->computeRowContent(ILcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mRowComputeResult:Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    iget-boolean v1, v1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->isHeader:Z

    if-eqz v1, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInventory:Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    iget-object v2, p0, Lcom/mcdonalds/app/widget/CollectionView;->mRowComputeResult:Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    iget v2, v2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupId:I

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/widget/CollectionView$Inventory;->getGroupIndex(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .local v0, "type":I
    goto :goto_0

    .line 229
    .end local v0    # "type":I
    :cond_1
    const-string v1, "CollectionView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid row passed to getItemViewType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeItemRow(Landroid/view/View;Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "rowInfo"    # Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    .prologue
    const-string v0, "makeItemRow"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/mcdonalds/app/widget/CollectionView;->makeNewItemRow(Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/widget/CollectionView;->recycleItemRow(Landroid/view/View;Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private makeNewItemRow(Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Landroid/view/View;
    .locals 8
    .param p1, "rowInfo"    # Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    .prologue
    const/4 v7, 0x0

    const-string v5, "makeNewItemRow"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 328
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 330
    .local v2, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 331
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p1, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    invoke-static {v5}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$400(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 335
    const/4 v5, 0x0

    invoke-direct {p0, p1, v0, v5, v1}, Lcom/mcdonalds/app/widget/CollectionView;->getItemView(Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 336
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/widget/CollectionView;->setupLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 337
    .local v4, "viewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v1
.end method

.method private makeRow(Landroid/view/View;Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rowInfo"    # Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v2, "makeRow"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v2, p0, Lcom/mcdonalds/app/widget/CollectionView;->mCallbacks:Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

    if-nez v2, :cond_1

    .line 245
    const-string v2, "CollectionView"

    const-string v3, "Call to makeRow without an adapter installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz p1, :cond_0

    move-object v2, p1

    .line 270
    :goto_0
    return-object v2

    .line 246
    :cond_0
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 252
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInventory:Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->row:I

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/widget/CollectionView;->getRowViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "desiredViewType":Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "actualViewType":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    const/4 p1, 0x0

    .line 260
    :cond_2
    iget-boolean v2, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->isHeader:Z

    if-eqz v2, :cond_5

    .line 261
    if-nez p1, :cond_3

    .line 262
    iget-object v2, p0, Lcom/mcdonalds/app/widget/CollectionView;->mCallbacks:Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Lcom/mcdonalds/app/widget/CollectionViewCallbacks;->newCollectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/widget/CollectionView;->mCallbacks:Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->groupId:I

    iget-object v5, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    invoke-static {v5}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$1000(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, p1, v4, v5}, Lcom/mcdonalds/app/widget/CollectionViewCallbacks;->bindCollectionHeaderView(Landroid/content/Context;Landroid/view/View;ILjava/lang/String;)V

    .line 269
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, p1

    .line 270
    goto :goto_0

    .line 254
    .end local v0    # "actualViewType":Ljava/lang/String;
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 266
    .restart local v0    # "actualViewType":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/widget/CollectionView;->makeItemRow(Landroid/view/View;Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Landroid/view/View;

    move-result-object p1

    goto :goto_2
.end method

.method private notifyAdapterDataSetChanged()V
    .locals 2

    .prologue
    const-string v0, "notifyAdapterDataSetChanged"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v0, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/widget/CollectionView$MyListAdapter;-><init>(Lcom/mcdonalds/app/widget/CollectionView;)V

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/widget/CollectionView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    return-void
.end method

.method private recycleItemRow(Landroid/view/View;Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;)Landroid/view/View;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "rowInfo"    # Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;

    .prologue
    const-string v5, "recycleItemRow"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, p1

    .line 345
    check-cast v1, Landroid/widget/LinearLayout;

    .line 346
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p2, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    invoke-static {v5}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$400(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 347
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 348
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, p2, v0, v4, v1}, Lcom/mcdonalds/app/widget/CollectionView;->getItemView(Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 349
    .local v2, "newView":Landroid/view/View;
    if-eq v4, v2, :cond_0

    .line 350
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/widget/CollectionView;->setupLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 351
    .local v3, "thisViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 352
    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 346
    .end local v3    # "thisViewParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v2    # "newView":Landroid/view/View;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private setupLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const-string v1, "setupLayoutParams"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 317
    .local v0, "viewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInternalPadding:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 318
    iget v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInternalPadding:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 319
    iget v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mInternalPadding:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 320
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 321
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    return-object v0

    .line 312
    .end local v0    # "viewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected class for collection view item\'s layout params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->warning(Ljava/lang/String;)V

    .line 314
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "viewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0
.end method


# virtual methods
.method public setCollectionAdapter(Lcom/mcdonalds/app/widget/CollectionViewCallbacks;)V
    .locals 3
    .param p1, "adapter"    # Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

    .prologue
    const-string v0, "setCollectionAdapter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iput-object p1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mCallbacks:Lcom/mcdonalds/app/widget/CollectionViewCallbacks;

    .line 109
    return-void
.end method

.method public setContentTopClearance(I)V
    .locals 4
    .param p1, "clearance"    # I

    .prologue
    const-string v0, "setContentTopClearance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mContentTopClearance:I

    if-eq v0, p1, :cond_0

    .line 121
    iput p1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mContentTopClearance:I

    .line 122
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/mcdonalds/app/widget/CollectionView;->mContentTopClearance:I

    .line 123
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CollectionView;->getPaddingBottom()I

    move-result v3

    .line 122
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mcdonalds/app/widget/CollectionView;->setPadding(IIII)V

    .line 124
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/CollectionView;->notifyAdapterDataSetChanged()V

    .line 126
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    const-string v0, "setOnScrollListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mMultiScrollListener:Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;-><init>(Lcom/mcdonalds/app/widget/CollectionView$1;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mMultiScrollListener:Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;

    .line 238
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mMultiScrollListener:Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView;->mMultiScrollListener:Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/widget/CollectionView$MultiScrollListener;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 241
    return-void
.end method
