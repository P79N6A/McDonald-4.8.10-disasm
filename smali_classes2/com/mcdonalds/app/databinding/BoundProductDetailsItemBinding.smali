.class public Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "BoundProductDetailsItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final buttonLayout:Landroid/widget/LinearLayout;

.field public final customSpecialInstructions:Landroid/widget/TextView;

.field public final disclosureArrow:Landroid/widget/ImageView;

.field public final foodImageSmall:Landroid/widget/ImageView;

.field public final hatButton:Landroid/widget/ImageButton;

.field public final infoButton:Landroid/widget/ImageButton;

.field public final llName:Landroid/widget/LinearLayout;

.field private mDirtyFlags:J

.field private mPresenter:Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;

.field public final name:Lme/grantland/widget/AutofitTextView;

.field public final nameDetails:Landroid/widget/TextView;

.field public final priceUplift:Landroid/widget/TextView;

.field public final productCheckBox:Lcom/mcdonalds/app/widget/InertCheckBox;

.field public final productDetailsItem:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 12
    sget-object v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f110135

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f11013a

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 6
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v5}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 389
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 36
    const/16 v1, 0xc

    sget-object v2, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v3, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "bindings":[Ljava/lang/Object;
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->buttonLayout:Landroid/widget/LinearLayout;

    .line 38
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->customSpecialInstructions:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->customSpecialInstructions:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->disclosureArrow:Landroid/widget/ImageView;

    .line 41
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->disclosureArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 42
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->foodImageSmall:Landroid/widget/ImageView;

    .line 43
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->foodImageSmall:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->hatButton:Landroid/widget/ImageButton;

    .line 45
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->hatButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->infoButton:Landroid/widget/ImageButton;

    .line 47
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->infoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 48
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->llName:Landroid/widget/LinearLayout;

    .line 49
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lme/grantland/widget/AutofitTextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->name:Lme/grantland/widget/AutofitTextView;

    .line 50
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->name:Lme/grantland/widget/AutofitTextView;

    invoke-virtual {v1, v4}, Lme/grantland/widget/AutofitTextView;->setTag(Ljava/lang/Object;)V

    .line 51
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->nameDetails:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->nameDetails:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 53
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->priceUplift:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->priceUplift:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 55
    aget-object v1, v0, v5

    check-cast v1, Lcom/mcdonalds/app/widget/InertCheckBox;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->productCheckBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    .line 56
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->productCheckBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/widget/InertCheckBox;->setTag(Ljava/lang/Object;)V

    .line 57
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->productDetailsItem:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    .line 58
    iget-object v1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->productDetailsItem:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->setRootTag(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->invalidateAll()V

    .line 62
    return-void
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.BoundProductDetailsItemBinding"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    const-string v0, "layout/bound_product_details_item_0"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
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

    .line 410
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    invoke-direct {v0, p1, p0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.BoundProductDetailsItemBinding"

    const-string v2, "inflate"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .param p3, "bindingComponent"    # Landroid/databinding/DataBindingComponent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.databinding.BoundProductDetailsItemBinding"

    const-string v2, "inflate"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    const v0, 0x7f040042

    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;

    return-object v0
.end method

.method private onChangePresenter(Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;I)Z
    .locals 6
    .param p1, "Presenter"    # Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;
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

    .line 113
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 199
    :goto_0
    return v0

    .line 115
    :sswitch_0
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 117
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 121
    :sswitch_1
    monitor-enter p0

    .line 122
    :try_start_1
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 123
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 127
    :sswitch_2
    monitor-enter p0

    .line 128
    :try_start_2
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x8

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 129
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 133
    :sswitch_3
    monitor-enter p0

    .line 134
    :try_start_3
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 135
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 139
    :sswitch_4
    monitor-enter p0

    .line 140
    :try_start_4
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 141
    monitor-exit p0

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 145
    :sswitch_5
    monitor-enter p0

    .line 146
    :try_start_5
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 147
    monitor-exit p0

    goto :goto_0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    .line 151
    :sswitch_6
    monitor-enter p0

    .line 152
    :try_start_6
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 153
    monitor-exit p0

    goto :goto_0

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    .line 157
    :sswitch_7
    monitor-enter p0

    .line 158
    :try_start_7
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 159
    monitor-exit p0

    goto :goto_0

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    .line 163
    :sswitch_8
    monitor-enter p0

    .line 164
    :try_start_8
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 165
    monitor-exit p0

    goto :goto_0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v0

    .line 169
    :sswitch_9
    monitor-enter p0

    .line 170
    :try_start_9
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x400

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 171
    monitor-exit p0

    goto :goto_0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v0

    .line 175
    :sswitch_a
    monitor-enter p0

    .line 176
    :try_start_a
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x800

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 177
    monitor-exit p0

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v0

    .line 181
    :sswitch_b
    monitor-enter p0

    .line 182
    :try_start_b
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 183
    monitor-exit p0

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v0

    .line 187
    :sswitch_c
    monitor-enter p0

    .line 188
    :try_start_c
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x2000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 189
    monitor-exit p0

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v0

    .line 193
    :sswitch_d
    monitor-enter p0

    .line 194
    :try_start_d
    iget-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 195
    monitor-exit p0

    goto/16 :goto_0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x2 -> :sswitch_0
        0xb -> :sswitch_a
        0xe -> :sswitch_7
        0x12 -> :sswitch_3
        0x13 -> :sswitch_5
        0x18 -> :sswitch_1
        0x1b -> :sswitch_c
        0x1d -> :sswitch_b
        0x1e -> :sswitch_9
        0x21 -> :sswitch_6
        0x2d -> :sswitch_4
        0x2e -> :sswitch_8
        0x32 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected executeBindings()V
    .locals 24

    .prologue
    const-string v20, "executeBindings"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    const-wide/16 v4, 0x0

    .line 205
    .local v4, "dirtyFlags":J
    monitor-enter p0

    .line 206
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 207
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v14, 0x0

    .line 210
    .local v14, "presenterShowHatButton":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mPresenter:Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;

    .line 211
    .local v6, "presenter":Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;
    const/4 v7, 0x0

    .line 212
    .local v7, "presenterChecked":Z
    const/4 v8, 0x0

    .line 213
    .local v8, "presenterHatButtonResourceId":I
    const/16 v19, 0x0

    .line 214
    .local v19, "presenterThumbnailImageUrl":Ljava/lang/String;
    const/4 v15, 0x0

    .line 215
    .local v15, "presenterShowInfoButton":Z
    const/4 v11, 0x0

    .line 216
    .local v11, "presenterProductUplift":Ljava/lang/String;
    const/16 v18, 0x0

    .line 217
    .local v18, "presenterSpecialInstructions":Ljava/lang/String;
    const/4 v13, 0x0

    .line 218
    .local v13, "presenterShowDisclosureArrow":Z
    const/16 v16, 0x0

    .line 219
    .local v16, "presenterShowNameDetails":Z
    const/4 v10, 0x0

    .line 220
    .local v10, "presenterProductName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 221
    .local v12, "presenterShowCheckBox":Z
    const/16 v17, 0x0

    .line 222
    .local v17, "presenterShowUplift":Z
    const/4 v9, 0x0

    .line 224
    .local v9, "presenterNameDetails":Ljava/lang/String;
    const-wide/16 v20, 0x7fff

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_c

    .line 227
    const-wide/16 v20, 0x5001

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_0

    .line 229
    if-eqz v6, :cond_0

    .line 231
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getShowHatButton()Z

    move-result v14

    .line 234
    :cond_0
    const-wide/16 v20, 0x4003

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1

    .line 236
    if-eqz v6, :cond_1

    .line 238
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getChecked()Z

    move-result v7

    .line 241
    :cond_1
    const-wide/16 v20, 0x4801

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_2

    .line 243
    if-eqz v6, :cond_2

    .line 245
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getHatButtonResourceId()I

    move-result v8

    .line 248
    :cond_2
    const-wide/16 v20, 0x4009

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_3

    .line 250
    if-eqz v6, :cond_3

    .line 252
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getThumbnailImageUrl()Ljava/lang/String;

    move-result-object v19

    .line 255
    :cond_3
    const-wide/16 v20, 0x4401

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4

    .line 257
    if-eqz v6, :cond_4

    .line 259
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getShowInfoButton()Z

    move-result v15

    .line 262
    :cond_4
    const-wide/16 v20, 0x4041

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_5

    .line 264
    if-eqz v6, :cond_5

    .line 266
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getProductUplift()Ljava/lang/String;

    move-result-object v11

    .line 269
    :cond_5
    const-wide/16 v20, 0x4201

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_6

    .line 271
    if-eqz v6, :cond_6

    .line 273
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getSpecialInstructions()Ljava/lang/String;

    move-result-object v18

    .line 276
    :cond_6
    const-wide/16 v20, 0x6001

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_7

    .line 278
    if-eqz v6, :cond_7

    .line 280
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getShowDisclosureArrow()Z

    move-result v13

    .line 283
    :cond_7
    const-wide/16 v20, 0x4081

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_8

    .line 285
    if-eqz v6, :cond_8

    .line 287
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getShowNameDetails()Z

    move-result v16

    .line 290
    :cond_8
    const-wide/16 v20, 0x4011

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_9

    .line 292
    if-eqz v6, :cond_9

    .line 294
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getProductName()Ljava/lang/String;

    move-result-object v10

    .line 297
    :cond_9
    const-wide/16 v20, 0x4005

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_a

    .line 299
    if-eqz v6, :cond_a

    .line 301
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getShowCheckBox()Z

    move-result v12

    .line 304
    :cond_a
    const-wide/16 v20, 0x4021

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_b

    .line 306
    if-eqz v6, :cond_b

    .line 308
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getShowUplift()Z

    move-result v17

    .line 311
    :cond_b
    const-wide/16 v20, 0x4101

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_c

    .line 313
    if-eqz v6, :cond_c

    .line 315
    invoke-interface {v6}, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;->getNameDetails()Ljava/lang/String;

    move-result-object v9

    .line 320
    :cond_c
    const-wide/16 v20, 0x4201

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_d

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->customSpecialInstructions:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 325
    :cond_d
    const-wide/16 v20, 0x6001

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_e

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->disclosureArrow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 330
    :cond_e
    const-wide/16 v20, 0x4009

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_f

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->foodImageSmall:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->loadImageWifhError(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 335
    :cond_f
    const-wide/16 v20, 0x4801

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_10

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->hatButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/mcdonalds/app/util/BindingAdapters;->loadResource(Landroid/widget/ImageView;I)V

    .line 340
    :cond_10
    const-wide/16 v20, 0x5001

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_11

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->hatButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 345
    :cond_11
    const-wide/16 v20, 0x4401

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_12

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->infoButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 350
    :cond_12
    const-wide/16 v20, 0x4011

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_13

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->name:Lme/grantland/widget/AutofitTextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 355
    :cond_13
    const-wide/16 v20, 0x4081

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_14

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->nameDetails:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 360
    :cond_14
    const-wide/16 v20, 0x4101

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_15

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->nameDetails:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 365
    :cond_15
    const-wide/16 v20, 0x4021

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_16

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->priceUplift:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 370
    :cond_16
    const-wide/16 v20, 0x4041

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_17

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->priceUplift:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 375
    :cond_17
    const-wide/16 v20, 0x4003

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_18

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->productCheckBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Landroid/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 380
    :cond_18
    const-wide/16 v20, 0x4005

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_19

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->productCheckBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/mcdonalds/app/util/BindingAdapters;->booleanVisibility(Landroid/view/View;Z)V

    .line 385
    :cond_19
    return-void

    .line 208
    .end local v6    # "presenter":Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;
    .end local v7    # "presenterChecked":Z
    .end local v8    # "presenterHatButtonResourceId":I
    .end local v9    # "presenterNameDetails":Ljava/lang/String;
    .end local v10    # "presenterProductName":Ljava/lang/String;
    .end local v11    # "presenterProductUplift":Ljava/lang/String;
    .end local v12    # "presenterShowCheckBox":Z
    .end local v13    # "presenterShowDisclosureArrow":Z
    .end local v14    # "presenterShowHatButton":Z
    .end local v15    # "presenterShowInfoButton":Z
    .end local v16    # "presenterShowNameDetails":Z
    .end local v17    # "presenterShowUplift":Z
    .end local v18    # "presenterSpecialInstructions":Ljava/lang/String;
    .end local v19    # "presenterThumbnailImageUrl":Ljava/lang/String;
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20
.end method

.method public hasPendingBindings()Z
    .locals 4

    .prologue
    const-string v0, "hasPendingBindings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    monitor-exit p0

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_0
    monitor-exit p0

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 78
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

    .line 66
    monitor-enter p0

    .line 67
    const-wide/16 v0, 0x4000

    :try_start_0
    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->requestRebind()V

    .line 70
    return-void

    .line 68
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

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 110
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 108
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->onChangePresenter(Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;I)Z

    move-result v0

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setPresenter(Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;)V
    .locals 4
    .param p1, "Presenter"    # Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0, v2, p1}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 93
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mPresenter:Lcom/mcdonalds/app/util/ProductDetailsItemPresenter;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/databinding/BoundProductDetailsItemBinding;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 99
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
