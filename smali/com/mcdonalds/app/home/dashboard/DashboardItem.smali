.class public Lcom/mcdonalds/app/home/dashboard/DashboardItem;
.super Ljava/lang/Object;
.source "DashboardItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mViewType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mViewType:I

    .line 16
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mObject:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "equals"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-ne p0, p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 24
    check-cast v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    .line 26
    .local v0, "that":Lcom/mcdonalds/app/home/dashboard/DashboardItem;
    iget v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mViewType:I

    iget v4, v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mViewType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 27
    :cond_4
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mObject:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mObject:Ljava/lang/Object;

    iget-object v4, v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mObject:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 28
    goto :goto_0

    .line 27
    :cond_5
    iget-object v3, v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mObject:Ljava/lang/Object;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<TT;>;"
    const-string v0, "getObject"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewType()I
    .locals 2

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<TT;>;"
    const-string v0, "getViewType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mViewType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<TT;>;"
    const-string v1, "hashCode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mViewType:I

    .line 36
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 37
    return v0

    .line 36
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setViewType(I)V
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/home/dashboard/DashboardItem;, "Lcom/mcdonalds/app/home/dashboard/DashboardItem<TT;>;"
    const-string v0, "setViewType"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iput p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->mViewType:I

    .line 46
    return-void
.end method
