.class public Lcom/mcdonalds/app/customer/ChooseMethodView;
.super Landroid/widget/LinearLayout;
.source "ChooseMethodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;
    }
.end annotation


# instance fields
.field private final mCloseListener:Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;

.field private mEnabled:Z

.field private mIsOpen:Z

.field private mOption1:Landroid/view/View;

.field private mOption2:Landroid/view/View;

.field private mOptionsContainer:Landroid/view/View;

.field private mSelectedOption:I

.field private mSelectionListener:Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;

.field private mSelectionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mEnabled:Z

    .line 108
    new-instance v0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/ChooseMethodView$1;-><init>(Lcom/mcdonalds/app/customer/ChooseMethodView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mCloseListener:Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;

    .line 32
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/ChooseMethodView;->inflate(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mEnabled:Z

    .line 108
    new-instance v0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/ChooseMethodView$1;-><init>(Lcom/mcdonalds/app/customer/ChooseMethodView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mCloseListener:Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;

    .line 37
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/ChooseMethodView;->inflate(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/ChooseMethodView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.ChooseMethodView"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOptionsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/ChooseMethodView;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/ChooseMethodView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.ChooseMethodView"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectedOption:I

    return v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/ChooseMethodView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.ChooseMethodView"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOption1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/ChooseMethodView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.ChooseMethodView"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOption2:Landroid/view/View;

    return-object v0
.end method

.method private chooseOption(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "chooseOption"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, p1

    .line 135
    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, "view":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectedOption:I

    .line 141
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionView:Landroid/widget/TextView;

    const v3, 0x7f020079

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 143
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->close()V

    .line 147
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionListener:Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionListener:Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;

    iget v3, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectedOption:I

    invoke-interface {v2, v3}, Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;->onMethodSelected(I)V

    .line 150
    :cond_0
    return-void
.end method

.method private close()V
    .locals 4

    .prologue
    const-string v0, "close"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mIsOpen:Z

    .line 101
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOptionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mCloseListener:Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 106
    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "inflate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const v0, 0x7f04019e

    invoke-static {p1, v0, p0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    const v0, 0x7f110530

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOptionsContainer:Landroid/view/View;

    .line 46
    const v0, 0x7f11052f

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f110531

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOption1:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOption1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f110532

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOption2:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOption2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private open()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v0, "open"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mIsOpen:Z

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOptionsContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOptionsContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOptionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 95
    return-void
.end method

.method private toggle()V
    .locals 2

    .prologue
    const-string v0, "toggle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->close()V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->open()V

    goto :goto_0
.end method


# virtual methods
.method public displayError()V
    .locals 2

    .prologue
    const-string v0, "displayError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionView:Landroid/widget/TextView;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 158
    return-void
.end method

.method public getSelection()I
    .locals 2

    .prologue
    const-string v0, "getSelection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectedOption:I

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const-string v0, "isEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 59
    iget-boolean v1, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mEnabled:Z

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 64
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 70
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/ChooseMethodView;->chooseOption(Landroid/view/View;)V

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->toggle()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x7f11052f
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const-string v0, "setEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iput-boolean p1, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mEnabled:Z

    .line 175
    return-void
.end method

.method public setSelection(I)V
    .locals 5
    .param p1, "selection"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "setSelection"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    if-ne p1, v4, :cond_1

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOption1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->chooseOption(Landroid/view/View;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mOption2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->chooseOption(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSelectionListener(Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;

    .prologue
    const-string v0, "setSelectionListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iput-object p1, p0, Lcom/mcdonalds/app/customer/ChooseMethodView;->mSelectionListener:Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;

    .line 179
    return-void
.end method
