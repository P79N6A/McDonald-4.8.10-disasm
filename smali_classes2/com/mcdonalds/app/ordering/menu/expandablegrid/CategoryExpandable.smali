.class public Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
.super Ljava/lang/Object;
.source "CategoryExpandable.java"


# instance fields
.field private mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

.field private mExpanded:Z

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->mExpanded:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 2

    .prologue
    const-string v0, "getCategory"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    return-object v0
.end method

.method public getChildItemList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getChildItemList"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->mProducts:Ljava/util/List;

    return-object v0
.end method

.method public getParentListItem()Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    .locals 2

    .prologue
    const-string v0, "getParentListItem"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-object p0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    const-string v0, "isExpanded"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->mExpanded:Z

    return v0
.end method

.method public isInitiallyExpanded()Z
    .locals 2

    .prologue
    const-string v0, "isInitiallyExpanded"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public setCategory(Lcom/mcdonalds/sdk/modules/models/Category;)V
    .locals 3
    .param p1, "mCategory"    # Lcom/mcdonalds/sdk/modules/models/Category;

    .prologue
    const-string v0, "setCategory"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    .line 78
    return-void
.end method

.method public setChildItemList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const-string v0, "setChildItemList"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->mProducts:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    const-string v0, "setExpanded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->mExpanded:Z

    .line 66
    return-void
.end method
