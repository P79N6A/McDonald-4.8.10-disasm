.class public Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ProductQuantityControlsBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final decreaseQuantity:Landroid/widget/Button;

.field public final increaseQuantity:Landroid/widget/Button;

.field private mDirtyFlags:J

.field private mPresenter:Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;

.field private final mboundView0:Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

.field public final quantityTotalContainer:Landroid/widget/LinearLayout;

.field public final quantityValue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    sget-object v0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "total_calorie_price"

    aput-object v2, v1, v5

    new-array v2, v4, [I

    const/4 v3, 0x4

    aput v3, v2, v5

    new-array v3, v4, [I

    const v4, 0x7f04019a

    aput v4, v3, v5

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 6
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v5}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 192
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 31
    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->decreaseQuantity:Landroid/widget/Button;

    .line 33
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->decreaseQuantity:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 34
    aget-object v1, v0, v5

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->increaseQuantity:Landroid/widget/Button;

    .line 35
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->increaseQuantity:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 36
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mboundView0:Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

    .line 37
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mboundView0:Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 38
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->quantityTotalContainer:Landroid/widget/LinearLayout;

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->quantityTotalContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->quantityValue:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->quantityValue:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->invalidateAll()V

    .line 45
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.ProductQuantityControlsBinding"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const-string v0, "layout/product_quantity_controls_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
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

    .line 213
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    invoke-direct {v0, p1, p0}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method private onChangePresenter(Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;I)Z
    .locals 6
    .param p1, "Presenter"    # Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "onChangePresenter"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 100
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 102
    :sswitch_0
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :sswitch_1
    monitor-enter p0

    .line 109
    :try_start_1
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 110
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 114
    :sswitch_2
    monitor-enter p0

    .line 115
    :try_start_2
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x8

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 116
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 120
    :sswitch_3
    monitor-enter p0

    .line 121
    :try_start_3
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 122
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .prologue
    const-string v6, "executeBindings"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const-wide/16 v0, 0x0

    .line 132
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 134
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mPresenter:Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;

    .line 137
    .local v2, "presenter":Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;
    const/4 v5, 0x0

    .line 138
    .local v5, "presenterQuantity":Ljava/lang/String;
    const/4 v3, 0x0

    .line 139
    .local v3, "presenterEnableMinusButton":Z
    const/4 v4, 0x0

    .line 141
    .local v4, "presenterEnablePlusButton":Z
    const-wide/16 v6, 0x1f

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 144
    const-wide/16 v6, 0x15

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 146
    if-eqz v2, :cond_0

    .line 148
    invoke-interface {v2}, Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;->getQuantity()Ljava/lang/String;

    move-result-object v5

    .line 151
    :cond_0
    const-wide/16 v6, 0x19

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 153
    if-eqz v2, :cond_1

    .line 155
    invoke-interface {v2}, Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;->getEnableMinusButton()Z

    move-result v3

    .line 158
    :cond_1
    const-wide/16 v6, 0x13

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 160
    if-eqz v2, :cond_2

    .line 162
    invoke-interface {v2}, Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;->getEnablePlusButton()Z

    move-result v4

    .line 167
    :cond_2
    const-wide/16 v6, 0x19

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 170
    iget-object v6, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->decreaseQuantity:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    :cond_3
    const-wide/16 v6, 0x13

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 175
    iget-object v6, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->increaseQuantity:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    :cond_4
    const-wide/16 v6, 0x11

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 180
    iget-object v6, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mboundView0:Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

    invoke-virtual {v6, v2}, Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;->setPresenter(Lcom/mcdonalds/app/util/TotalCaloriePricePresenter;)V

    .line 182
    :cond_5
    const-wide/16 v6, 0x15

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 185
    iget-object v6, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->quantityValue:Landroid/widget/TextView;

    invoke-static {v6, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 187
    :cond_6
    iget-object v6, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mboundView0:Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

    invoke-static {v6}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 188
    return-void

    .line 135
    .end local v2    # "presenter":Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;
    .end local v3    # "presenterEnableMinusButton":Z
    .end local v4    # "presenterEnablePlusButton":Z
    .end local v5    # "presenterQuantity":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public hasPendingBindings()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-string v1, "hasPendingBindings"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 60
    monitor-exit p0

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mboundView0:Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

    invoke-virtual {v1}, Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .prologue
    const-string v0, "invalidateAll"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    monitor-enter p0

    .line 50
    const-wide/16 v0, 0x10

    :try_start_0
    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mboundView0:Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;

    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/TotalCaloriePriceBinding;->invalidateAll()V

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->requestRebind()V

    .line 54
    return-void

    .line 51
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
    const/4 v0, 0x0

    const-string v1, "onFieldChange"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 93
    packed-switch p1, :pswitch_data_0

    .line 97
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 95
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->onChangePresenter(Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;I)Z

    move-result v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setPresenter(Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;)V
    .locals 4
    .param p1, "Presenter"    # Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0, v2, p1}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 80
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mPresenter:Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
