.class public Lcom/mcdonalds/app/databinding/InvoiceBinding;
.super Landroid/databinding/ViewDataBinding;
.source "InvoiceBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final companyContainer:Landroid/widget/LinearLayout;

.field public final companyName:Landroid/widget/EditText;

.field private companyNameandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

.field public final invoiceSwitch:Landroid/widget/Switch;

.field private invoiceSwitchandroidCheckedAttrChanged:Landroid/databinding/InverseBindingListener;

.field private mDirtyFlags:J

.field private mPresenter:Lcom/mcdonalds/app/util/InvoicePresenter;

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    sput-object v0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 6
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v5}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 23
    new-instance v1, Lcom/mcdonalds/app/databinding/InvoiceBinding$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/databinding/InvoiceBinding$1;-><init>(Lcom/mcdonalds/app/databinding/InvoiceBinding;)V

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyNameandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

    .line 49
    new-instance v1, Lcom/mcdonalds/app/databinding/InvoiceBinding$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/databinding/InvoiceBinding$2;-><init>(Lcom/mcdonalds/app/databinding/InvoiceBinding;)V

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invoiceSwitchandroidCheckedAttrChanged:Landroid/databinding/InverseBindingListener;

    .line 215
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    .line 78
    const/4 v1, 0x4

    sget-object v2, Lcom/mcdonalds/app/databinding/InvoiceBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/mcdonalds/app/databinding/InvoiceBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyContainer:Landroid/widget/LinearLayout;

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 81
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyName:Landroid/widget/EditText;

    .line 82
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 83
    aget-object v1, v0, v5

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invoiceSwitch:Landroid/widget/Switch;

    .line 84
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invoiceSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 85
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 86
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->setRootTag(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invalidateAll()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/databinding/InvoiceBinding;)Lcom/mcdonalds/app/util/InvoicePresenter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/databinding/InvoiceBinding;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.InvoiceBinding"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mPresenter:Lcom/mcdonalds/app/util/InvoicePresenter;

    return-object v0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/InvoiceBinding;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.InvoiceBinding"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    const-string v0, "layout/invoice_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
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

    .line 236
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/databinding/InvoiceBinding;

    invoke-direct {v0, p1, p0}, Lcom/mcdonalds/app/databinding/InvoiceBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method private onChangePresenter(Lcom/mcdonalds/app/util/InvoicePresenter;I)Z
    .locals 6
    .param p1, "Presenter"    # Lcom/mcdonalds/app/util/InvoicePresenter;
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

    .line 141
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 143
    :sswitch_0
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    .line 145
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :sswitch_1
    monitor-enter p0

    .line 150
    :try_start_1
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    .line 151
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 155
    :sswitch_2
    monitor-enter p0

    .line 156
    :try_start_2
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    .line 157
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xc -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .prologue
    const-string v5, "executeBindings"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const-wide/16 v0, 0x0

    .line 167
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    .line 169
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v2, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mPresenter:Lcom/mcdonalds/app/util/InvoicePresenter;

    .line 172
    .local v2, "presenter":Lcom/mcdonalds/app/util/InvoicePresenter;
    const/4 v3, 0x0

    .line 173
    .local v3, "presenterInvoiceEnabled":Z
    const/4 v4, 0x0

    .line 175
    .local v4, "presenterPayer":Ljava/lang/String;
    const-wide/16 v6, 0xf

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 178
    const-wide/16 v6, 0xb

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 180
    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v2}, Lcom/mcdonalds/app/util/InvoicePresenter;->getInvoiceEnabled()Z

    move-result v3

    .line 185
    :cond_0
    const-wide/16 v6, 0xd

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 187
    if-eqz v2, :cond_1

    .line 189
    invoke-interface {v2}, Lcom/mcdonalds/app/util/InvoicePresenter;->getPayer()Ljava/lang/String;

    move-result-object v4

    .line 194
    :cond_1
    const-wide/16 v6, 0xb

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 197
    iget-object v5, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyContainer:Landroid/widget/LinearLayout;

    invoke-static {v5, v3}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 198
    iget-object v5, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invoiceSwitch:Landroid/widget/Switch;

    invoke-static {v5, v3}, Landroid/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 200
    :cond_2
    const-wide/16 v6, 0xd

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 203
    iget-object v5, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyName:Landroid/widget/EditText;

    invoke-static {v5, v4}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 205
    :cond_3
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 208
    iget-object v8, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyName:Landroid/widget/EditText;

    const/4 v5, 0x0

    check-cast v5, Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    const/4 v6, 0x0

    check-cast v6, Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    const/4 v7, 0x0

    check-cast v7, Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    iget-object v9, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->companyNameandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

    invoke-static {v8, v5, v6, v7, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroid/databinding/InverseBindingListener;)V

    .line 209
    iget-object v6, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invoiceSwitch:Landroid/widget/Switch;

    const/4 v5, 0x0

    check-cast v5, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v7, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invoiceSwitchandroidCheckedAttrChanged:Landroid/databinding/InverseBindingListener;

    invoke-static {v6, v5, v7}, Landroid/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/databinding/InverseBindingListener;)V

    .line 211
    :cond_4
    return-void

    .line 170
    .end local v2    # "presenter":Lcom/mcdonalds/app/util/InvoicePresenter;
    .end local v3    # "presenterInvoiceEnabled":Z
    .end local v4    # "presenterPayer":Ljava/lang/String;
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

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    monitor-exit p0

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_0
    monitor-exit p0

    .line 107
    const/4 v0, 0x0

    goto :goto_0

    .line 106
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

    .line 94
    monitor-enter p0

    .line 95
    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->requestRebind()V

    .line 98
    return-void

    .line 96
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

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 138
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 136
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/mcdonalds/app/util/InvoicePresenter;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->onChangePresenter(Lcom/mcdonalds/app/util/InvoicePresenter;I)Z

    move-result v0

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setPresenter(Lcom/mcdonalds/app/util/InvoicePresenter;)V
    .locals 4
    .param p1, "Presenter"    # Lcom/mcdonalds/app/util/InvoicePresenter;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, v2, p1}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 121
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mPresenter:Lcom/mcdonalds/app/util/InvoicePresenter;

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding;->mDirtyFlags:J

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->notifyPropertyChanged(I)V

    .line 126
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 127
    return-void

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
