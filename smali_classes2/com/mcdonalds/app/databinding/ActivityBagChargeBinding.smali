.class public Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityBagChargeBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final activityBagCharge:Landroid/widget/LinearLayout;

.field public final continueButton:Landroid/widget/Button;

.field public final dismissButton:Landroid/widget/Button;

.field private mDirtyFlags:J

.field private mPresenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

.field public final productDetails:Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

.field public final quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 10
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "bound_product_details_item"

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string v3, "product_quantity_controls"

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 15
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 16
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f110096

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f110097

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    return-void

    .line 11
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x7f040042
        0x7f040180
    .end array-data
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 5
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x3

    .line 32
    invoke-direct {p0, p1, p2, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 165
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    .line 33
    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->activityBagCharge:Landroid/widget/LinearLayout;

    .line 35
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->activityBagCharge:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->continueButton:Landroid/widget/Button;

    .line 37
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->dismissButton:Landroid/widget/Button;

    .line 38
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->productDetails:Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->productDetails:Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 40
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    .line 41
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->invalidateAll()V

    .line 45
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.ActivityBagChargeBinding"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const-string v0, "layout/activity_bag_charge_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
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

    .line 186
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;

    invoke-direct {v0, p1, p0}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method private onChangePresenter(Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;I)Z
    .locals 6
    .param p1, "Presenter"    # Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

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

    .line 108
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 116
    :goto_0
    return v0

    .line 110
    :pswitch_0
    monitor-enter p0

    .line 111
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    .line 112
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onChangeProductDetails(Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;I)Z
    .locals 6
    .param p1, "ProductDetails"    # Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onChangeProductDetails"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 119
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 127
    :goto_0
    return v0

    .line 121
    :pswitch_0
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    .line 123
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onChangeQuantityControls(Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;I)Z
    .locals 6
    .param p1, "QuantityControls"    # Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;
    .param p2, "fieldId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onChangeQuantityControls"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 130
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 138
    :goto_0
    return v0

    .line 132
    :pswitch_0
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    .line 134
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x9

    const-wide/16 v6, 0x0

    const-string v3, "executeBindings"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    const-wide/16 v0, 0x0

    .line 144
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    .line 146
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mPresenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

    .line 150
    .local v2, "presenter":Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;
    and-long v4, v0, v8

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 153
    :cond_0
    and-long v4, v0, v8

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->productDetails:Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->setPresenter(Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;)V

    .line 157
    iget-object v3, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->setPresenter(Lcom/mcdonalds/app/util/ProductQuantityControlsPresenter;)V

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->productDetails:Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    invoke-static {v3}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 160
    iget-object v3, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    invoke-static {v3}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 161
    return-void

    .line 147
    .end local v2    # "presenter":Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public hasPendingBindings()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-string v1, "hasPendingBindings"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 61
    monitor-exit p0

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->productDetails:Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    invoke-virtual {v1}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    invoke-virtual {v1}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->hasPendingBindings()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 63
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
    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->productDetails:Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->invalidateAll()V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->quantityControls:Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    invoke-virtual {v0}, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;->invalidateAll()V

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->requestRebind()V

    .line 55
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

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 105
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 99
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->onChangePresenter(Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;I)Z

    move-result v0

    goto :goto_0

    .line 101
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->onChangeProductDetails(Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;I)Z

    move-result v0

    goto :goto_0

    .line 103
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->onChangeQuantityControls(Lcom/mcdonalds/app/databinding/ProductQuantityControlsBinding;I)Z

    move-result v0

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPresenter(Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;)V
    .locals 4
    .param p1, "Presenter"    # Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0, v2, p1}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 84
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mPresenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/databinding/ActivityBagChargeBinding;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 90
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
