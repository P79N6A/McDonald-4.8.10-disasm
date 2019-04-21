.class public Lcom/mcdonalds/app/widget/ParentSwipingViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ParentSwipingViewPager.java"


# instance fields
.field private mCurrX:F

.field private mCurrY:F

.field private mIsDisallowIntercept:Z

.field private mStartX:F

.field private mStartY:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mCurrX:F

    .line 17
    iput v0, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mCurrY:F

    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mCurrX:F

    .line 17
    iput v0, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mCurrY:F

    .line 29
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    const-string v1, "init"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 35
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mTouchSlop:I

    .line 36
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const-string v1, "dispatchTouchEvent"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mIsDisallowIntercept:Z

    if-eqz v1, :cond_0

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const-string v3, "onInterceptTouchEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 43
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mCurrX:F

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mCurrY:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mStartX:F

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mStartY:F

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 51
    .end local v0    # "action":I
    :goto_0
    return v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    const-string v0, "requestDisallowInterceptTouchEvent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput-boolean p1, p0, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;->mIsDisallowIntercept:Z

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 59
    return-void
.end method
