.class public Lcom/mcdonalds/app/ui/DeliveryStatusView;
.super Landroid/widget/LinearLayout;
.source "DeliveryStatusView.java"


# instance fields
.field private mCancelled:Z

.field private mCompleted:Z

.field private mCompletedIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mCompletionTime:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mLabelText:Ljava/lang/String;

.field private mPlaceholderSubtitle:Landroid/widget/TextView;

.field private mSubtitleText:Ljava/lang/String;

.field private mTimeText:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/R$styleable;->DeliveryStatusView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mLabelText:Ljava/lang/String;

    .line 46
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mSubtitleText:Ljava/lang/String;

    .line 47
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mTimeText:Ljava/lang/String;

    .line 48
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->init()V

    .line 54
    return-void

    .line 51
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->init()V

    throw v1
.end method

.method private draw()V
    .locals 2

    .prologue
    const-string v0, "draw"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mLabelText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mSubtitleText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mPlaceholderSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mSubtitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mTimeText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mTimeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->setCompleted()V

    .line 73
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const-string v0, "init"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04005d

    invoke-static {v0, v1, p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    const v0, 0x7f110184

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mIcon:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f110185

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mTitle:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f110186

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mPlaceholderSubtitle:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f110187

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->draw()V

    .line 84
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->invalidate()V

    .line 113
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->requestLayout()V

    .line 114
    return-void
.end method

.method private setCompleted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v2, "setCompleted"

    invoke-static {p0, v2, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompleted:Z

    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0066

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 121
    .local v0, "color":I
    iget-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mPlaceholderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e005e

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 142
    :cond_0
    if-eqz v1, :cond_1

    .line 143
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    return-void

    .line 124
    .end local v0    # "color":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e005b

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 125
    .restart local v0    # "color":I
    iget-object v1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mPlaceholderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mPlaceholderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mPlaceholderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mPlaceholderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-string v0, "dispatchDraw"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->draw()V

    .line 60
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    const-string v0, "isCancelled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCancelled:Z

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    const-string v0, "isCompleted"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompleted:Z

    return v0
.end method

.method public setCancelled(Z)V
    .locals 4
    .param p1, "cancelled"    # Z

    .prologue
    const-string v0, "setCancelled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iput-boolean p1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCancelled:Z

    .line 94
    return-void
.end method

.method public setCompleted(Z)V
    .locals 4
    .param p1, "completed"    # Z

    .prologue
    const-string v0, "setCompleted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iput-boolean p1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompleted:Z

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->refresh()V

    .line 89
    return-void
.end method

.method public setCompletionTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "completionTime"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "setCompletionTime"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iput-object p1, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mTimeText:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/ui/DeliveryStatusView;->mCompletionTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 108
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->refresh()V

    .line 109
    return-void
.end method
