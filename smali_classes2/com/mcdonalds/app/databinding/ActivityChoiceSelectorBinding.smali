.class public Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityChoiceSelectorBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final choiceList:Landroid/support/v7/widget/RecyclerView;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    sput-object v0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 5
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 73
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->mDirtyFlags:J

    .line 22
    const/4 v1, 0x1

    sget-object v2, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 23
    .local v0, "bindings":[Ljava/lang/Object;
    aget-object v1, v0, v4

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->choiceList:Landroid/support/v7/widget/RecyclerView;

    .line 24
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->choiceList:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->setRootTag(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->invalidateAll()V

    .line 28
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.ActivityChoiceSelectorBinding"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const-string v0, "layout/activity_choice_selector_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view tag isn\'t correct on view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;

    invoke-direct {v0, p1, p0}, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .prologue
    const-string v2, "executeBindings"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->mDirtyFlags:J

    .line 66
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->mDirtyFlags:J

    .line 67
    monitor-exit p0

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    const-string v0, "hasPendingBindings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    monitor-exit p0

    .line 45
    :goto_0
    return v0

    .line 44
    :cond_0
    monitor-exit p0

    .line 45
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .prologue
    const-string v0, "invalidateAll"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    monitor-enter p0

    .line 33
    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->mDirtyFlags:J

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ActivityChoiceSelectorBinding;->requestRebind()V

    .line 36
    return-void

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 5
    .param p1, "localFieldId"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldId"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onFieldChange"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return v4
.end method
