.class public Lcom/mcdonalds/app/widget/CollectionView$Inventory;
.super Ljava/lang/Object;
.source "CollectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inventory"
.end annotation


# instance fields
.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView$Inventory;->mGroups:Ljava/util/ArrayList;

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/widget/CollectionView$Inventory;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/CollectionView$Inventory;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.CollectionView$Inventory"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/mcdonalds/app/widget/CollectionView$Inventory;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getGroupIndex(I)I
    .locals 5
    .param p1, "groupId"    # I

    .prologue
    const-string v1, "getGroupIndex"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/widget/CollectionView$Inventory;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/mcdonalds/app/widget/CollectionView$Inventory;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

    invoke-static {v1}, Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;->access$200(Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 394
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 389
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
