.class public Lcom/mcdonalds/app/databinding/PickupLocationBinding;
.super Landroid/databinding/ViewDataBinding;
.source "PickupLocationBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final llContainer:Landroid/widget/LinearLayout;

.field private mDirtyFlags:J

.field private mPresenter:Lcom/mcdonalds/app/util/PickupLocationPresenter;

.field public final pickupStoreButton:Landroid/widget/LinearLayout;

.field public final pickupStoreDistance:Landroid/widget/TextView;

.field public final pickupStoreExtra:Landroid/widget/LinearLayout;

.field public final pickupStoreImage:Landroid/widget/ImageView;

.field public final pickupStoreInfoButton:Landroid/widget/ImageView;

.field public final pickupStoreName:Landroid/widget/TextView;

.field public final pickupStoreTitle:Landroid/widget/TextView;

.field public final redIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f110171

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1104f6

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1104f7

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1104f9

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1104fa

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1104fb

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1104fc

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 6
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 37
    invoke-direct {p0, p1, p2, v4}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 150
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    .line 38
    const/16 v1, 0x9

    sget-object v2, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->llContainer:Landroid/widget/LinearLayout;

    .line 40
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreButton:Landroid/widget/LinearLayout;

    .line 41
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreDistance:Landroid/widget/TextView;

    .line 43
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreExtra:Landroid/widget/LinearLayout;

    .line 44
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreImage:Landroid/widget/ImageView;

    .line 45
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreInfoButton:Landroid/widget/ImageView;

    .line 46
    aget-object v1, v0, v4

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreName:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreTitle:Landroid/widget/TextView;

    .line 49
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->redIcon:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->setRootTag(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->invalidateAll()V

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/PickupLocationBinding;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.PickupLocationBinding"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const-string v0, "layout/pickup_location_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
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

    .line 171
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;

    invoke-direct {v0, p1, p0}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method private onChangePresenter(Lcom/mcdonalds/app/util/PickupLocationPresenter;I)Z
    .locals 6
    .param p1, "Presenter"    # Lcom/mcdonalds/app/util/PickupLocationPresenter;
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

    .line 104
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 106
    :sswitch_0
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 112
    :sswitch_1
    monitor-enter p0

    .line 113
    :try_start_1
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    .line 114
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7

    const-wide/16 v6, 0x0

    const-string v4, "executeBindings"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const-wide/16 v0, 0x0

    .line 124
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    .line 126
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v2, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mPresenter:Lcom/mcdonalds/app/util/PickupLocationPresenter;

    .line 129
    .local v2, "presenter":Lcom/mcdonalds/app/util/PickupLocationPresenter;
    const/4 v3, 0x0

    .line 131
    .local v3, "presenterStoreName":Ljava/lang/String;
    and-long v4, v0, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 135
    if-eqz v2, :cond_0

    .line 137
    invoke-interface {v2}, Lcom/mcdonalds/app/util/PickupLocationPresenter;->getStoreName()Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_0
    and-long v4, v0, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->pickupStoreName:Landroid/widget/TextView;

    invoke-static {v4, v3}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 146
    :cond_1
    return-void

    .line 127
    .end local v2    # "presenter":Lcom/mcdonalds/app/util/PickupLocationPresenter;
    .end local v3    # "presenterStoreName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    const-string v0, "hasPendingBindings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    monitor-exit p0

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    monitor-exit p0

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 69
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

    .line 57
    monitor-enter p0

    .line 58
    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->requestRebind()V

    .line 61
    return-void

    .line 59
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

    .line 101
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 99
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/mcdonalds/app/util/PickupLocationPresenter;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->onChangePresenter(Lcom/mcdonalds/app/util/PickupLocationPresenter;I)Z

    move-result v0

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setPresenter(Lcom/mcdonalds/app/util/PickupLocationPresenter;)V
    .locals 4
    .param p1, "Presenter"    # Lcom/mcdonalds/app/util/PickupLocationPresenter;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0, v2, p1}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 84
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mPresenter:Lcom/mcdonalds/app/util/PickupLocationPresenter;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/databinding/PickupLocationBinding;->notifyPropertyChanged(I)V

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
