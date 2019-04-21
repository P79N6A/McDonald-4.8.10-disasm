.class public Lme/grantland/widget/AutofitLayout;
.super Landroid/widget/FrameLayout;
.source "AutofitLayout.java"


# instance fields
.field private mEnabled:Z

.field private mHelpers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lme/grantland/widget/AutofitHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTextSize:F

.field private mPrecision:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lme/grantland/widget/AutofitLayout;->mHelpers:Ljava/util/WeakHashMap;

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lme/grantland/widget/AutofitLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lme/grantland/widget/AutofitLayout;->mHelpers:Ljava/util/WeakHashMap;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lme/grantland/widget/AutofitLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lme/grantland/widget/AutofitLayout;->mHelpers:Ljava/util/WeakHashMap;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lme/grantland/widget/AutofitLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    const/4 v2, 0x1

    .line 46
    .local v2, "sizeToFit":Z
    const/4 v0, -0x1

    .line 47
    .local v0, "minTextSize":I
    const/high16 v1, -0x40800000    # -1.0f

    .line 49
    .local v1, "precision":F
    if-eqz p2, :cond_0

    .line 50
    sget-object v4, Lme/grantland/widget/R$styleable;->AutofitTextView:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 55
    .local v3, "ta":Landroid/content/res/TypedArray;
    sget v4, Lme/grantland/widget/R$styleable;->AutofitTextView_sizeToFit:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 56
    sget v4, Lme/grantland/widget/R$styleable;->AutofitTextView_minTextSize:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 58
    sget v4, Lme/grantland/widget/R$styleable;->AutofitTextView_precision:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 59
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    iput-boolean v2, p0, Lme/grantland/widget/AutofitLayout;->mEnabled:Z

    .line 63
    int-to-float v4, v0

    iput v4, p0, Lme/grantland/widget/AutofitLayout;->mMinTextSize:F

    .line 64
    iput v1, p0, Lme/grantland/widget/AutofitLayout;->mPrecision:F

    .line 65
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object v1, p1

    .line 70
    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, "textView":Landroid/widget/TextView;
    invoke-static {v1}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;)Lme/grantland/widget/AutofitHelper;

    move-result-object v2

    iget-boolean v3, p0, Lme/grantland/widget/AutofitLayout;->mEnabled:Z

    invoke-virtual {v2, v3}, Lme/grantland/widget/AutofitHelper;->setEnabled(Z)Lme/grantland/widget/AutofitHelper;

    move-result-object v0

    .line 73
    .local v0, "helper":Lme/grantland/widget/AutofitHelper;
    iget v2, p0, Lme/grantland/widget/AutofitLayout;->mPrecision:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 74
    iget v2, p0, Lme/grantland/widget/AutofitLayout;->mPrecision:F

    invoke-virtual {v0, v2}, Lme/grantland/widget/AutofitHelper;->setPrecision(F)Lme/grantland/widget/AutofitHelper;

    .line 76
    :cond_0
    iget v2, p0, Lme/grantland/widget/AutofitLayout;->mMinTextSize:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 77
    const/4 v2, 0x0

    iget v3, p0, Lme/grantland/widget/AutofitLayout;->mMinTextSize:F

    invoke-virtual {v0, v2, v3}, Lme/grantland/widget/AutofitHelper;->setMinTextSize(IF)Lme/grantland/widget/AutofitHelper;

    .line 79
    :cond_1
    iget-object v2, p0, Lme/grantland/widget/AutofitLayout;->mHelpers:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method
