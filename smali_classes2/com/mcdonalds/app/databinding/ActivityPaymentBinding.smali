.class public Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityPaymentBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final eatinButton:Landroid/widget/Button;

.field private mDirtyFlags:J

.field private mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

.field public final mainView:Landroid/widget/LinearLayout;

.field public final tableServiceButton:Landroid/widget/Button;

.field public final takeoutButton:Landroid/widget/Button;

.field public final textView:Landroid/widget/TextView;

.field public final textView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100db

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100dc

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f1100de

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
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

    .line 164
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    .line 31
    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "bindings":[Ljava/lang/Object;
    const-class v1, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->ensureBindingComponentIsNotNull(Ljava/lang/Class;)V

    .line 33
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->eatinButton:Landroid/widget/Button;

    .line 34
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mainView:Landroid/widget/LinearLayout;

    .line 35
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    aget-object v1, v0, v5

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->tableServiceButton:Landroid/widget/Button;

    .line 37
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->tableServiceButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 38
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->takeoutButton:Landroid/widget/Button;

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 40
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->textView:Landroid/widget/TextView;

    .line 41
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->textView2:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->invalidateAll()V

    .line 45
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.ActivityPaymentBinding"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string v0, "layout/activity_payment_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
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

    .line 185
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;

    invoke-direct {v0, p1, p0}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method private onChangePresenter(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;I)Z
    .locals 6
    .param p1, "Presenter"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
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

    .line 96
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 116
    :goto_0
    return v0

    .line 98
    :sswitch_0
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    .line 100
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :sswitch_1
    monitor-enter p0

    .line 105
    :try_start_1
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 110
    :sswitch_2
    monitor-enter p0

    .line 111
    :try_start_2
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    .line 112
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x20 -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected executeBindings()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xd

    const-wide/16 v10, 0xb

    const-wide/16 v8, 0x0

    const-string v5, "executeBindings"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    const-wide/16 v0, 0x0

    .line 122
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    .line 124
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v2, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .line 127
    .local v2, "presenter":Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
    const/4 v4, 0x0

    .line 128
    .local v4, "presenterShowTableService":Z
    const/4 v3, 0x0

    .line 130
    .local v3, "presenterShowLocationSelection":Z
    const-wide/16 v6, 0xf

    and-long/2addr v6, v0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 133
    and-long v6, v0, v12

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 135
    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->getShowTableService()Z

    move-result v4

    .line 140
    :cond_0
    and-long v6, v0, v10

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 142
    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->getShowLocationSelection()Z

    move-result v3

    .line 149
    :cond_1
    and-long v6, v0, v10

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 152
    iget-object v5, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mainView:Landroid/widget/LinearLayout;

    invoke-static {v5, v3}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 154
    :cond_2
    and-long v6, v0, v12

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 157
    iget-object v5, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->tableServiceButton:Landroid/widget/Button;

    invoke-static {v5, v4}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 158
    iget-object v5, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mBindingComponent:Landroid/databinding/DataBindingComponent;

    invoke-interface {v5}, Landroid/databinding/DataBindingComponent;->getTakeOutButtonStyleAdapter()Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {v5, v6, v4}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$TakeOutButtonStyleAdapter;->isRed(Landroid/widget/Button;Z)V

    .line 160
    :cond_3
    return-void

    .line 125
    .end local v2    # "presenter":Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
    .end local v3    # "presenterShowLocationSelection":Z
    .end local v4    # "presenterShowTableService":Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    const-string v0, "hasPendingBindings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    monitor-exit p0

    .line 62
    :goto_0
    return v0

    .line 61
    :cond_0
    monitor-exit p0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 61
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

    .line 49
    monitor-enter p0

    .line 50
    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->requestRebind()V

    .line 53
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

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 93
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 91
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->onChangePresenter(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;I)Z

    move-result v0

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setPresenter(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 4
    .param p1, "Presenter"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0, v2, p1}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 76
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mPresenter:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/databinding/ActivityPaymentBinding;->notifyPropertyChanged(I)V

    .line 81
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 82
    return-void

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
