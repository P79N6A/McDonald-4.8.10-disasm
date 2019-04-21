.class public Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;
.super Ljava/lang/Object;
.source "CollectionView.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InventoryGroup"
.end annotation


# instance fields
.field private mDataIndexStart:I

.field private mDisplayCols:I

.field private mGroupId:I

.field private mHeaderLabel:Ljava/lang/String;

.field private mItemCount:I

.field private mItemCustomDataIndices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTag:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mShowHeader:Z


# direct methods
.method static synthetic access$100(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView$InventoryGroup"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mShowHeader:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView$InventoryGroup"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mHeaderLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView$InventoryGroup"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget v0, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mGroupId:I

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView$InventoryGroup"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget v0, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mItemCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView$InventoryGroup"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget v0, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mDisplayCols:I

    return v0
.end method


# virtual methods
.method public getDataIndex(I)I
    .locals 4
    .param p1, "indexInGroup"    # I

    .prologue
    const-string v0, "getDataIndex"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mItemCustomDataIndices:Landroid/util/SparseArray;

    iget v1, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mDataIndexStart:I

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemTag(I)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # I

    .prologue
    const-string v0, "getItemTag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mItemTag:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRowCount()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "getRowCount"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mShowHeader:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mItemCount:I

    iget v4, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mDisplayCols:I

    div-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v3, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mItemCount:I

    iget v4, p0, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->mDisplayCols:I

    rem-int/2addr v3, v4

    if-lez v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
