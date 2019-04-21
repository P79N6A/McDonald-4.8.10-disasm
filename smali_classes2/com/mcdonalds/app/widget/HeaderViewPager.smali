.class public Lcom/mcdonalds/app/widget/HeaderViewPager;
.super Lcom/mcdonalds/app/widget/ViewPagerWithDuration;
.source "HeaderViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;
    }
.end annotation


# instance fields
.field private autoScrolling:Z

.field private mAutoScroll:Z

.field private mCurrX:F

.field private mHeaderAutoScrollTimer:Ljava/util/Timer;

.field private mStartX:F

.field private mStartY:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mCurrX:F

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->autoScrolling:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/HeaderViewPager;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mCurrX:F

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->autoScrolling:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/HeaderViewPager;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private endUserInteraction()V
    .locals 2

    .prologue
    const-string v0, "endUserInteraction"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mAutoScroll:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->scheduleAutoScrolling(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method private getOffsetAmount()I
    .locals 2

    .prologue
    const-string v0, "getOffsetAmount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 60
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mTouchSlop:I

    .line 62
    return-void
.end method

.method private scheduleAutoScrolling(Z)V
    .locals 7
    .param p1, "delayFirst"    # Z

    .prologue
    const-wide/16 v4, 0x1388

    const/4 v6, 0x1

    const-string v0, "scheduleAutoScrolling"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->autoScrolling:Z

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mHeaderAutoScrollTimer:Ljava/util/Timer;

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mHeaderAutoScrollTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/widget/HeaderViewPager$HeaderAutoScrollTask;-><init>(Lcom/mcdonalds/app/widget/HeaderViewPager;)V

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1d4c

    :goto_0
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 114
    iput-boolean v6, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->autoScrolling:Z

    .line 116
    :cond_0
    return-void

    :cond_1
    move-wide v2, v4

    .line 109
    goto :goto_0
.end method

.method private startUserInteraction()V
    .locals 2

    .prologue
    const-string v0, "startUserInteraction"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->unscheduleAutoScrolling()V

    .line 76
    return-void
.end method

.method private unscheduleAutoScrolling()V
    .locals 2

    .prologue
    const-string v0, "unscheduleAutoScrolling"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mHeaderAutoScrollTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mHeaderAutoScrollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 121
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mHeaderAutoScrollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->autoScrolling:Z

    .line 124
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const-string v0, "onAttachedToWindow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-super {p0}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->onAttachedToWindow()V

    .line 95
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mAutoScroll:Z

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->scheduleAutoScrolling(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const-string v0, "onDetachedFromWindow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-super {p0}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->onDetachedFromWindow()V

    .line 103
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->unscheduleAutoScrolling()V

    .line 104
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string v3, "onInterceptTouchEvent"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 130
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mCurrX:F

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mStartX:F

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mStartY:F

    .line 134
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->startUserInteraction()V

    .line 145
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 147
    .end local v0    # "action":I
    :goto_1
    return v2

    .line 135
    .restart local v0    # "action":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mStartY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mStartX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->endUserInteraction()V

    goto :goto_0

    .line 146
    .end local v0    # "action":I
    :catch_0
    move-exception v1

    .line 147
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 138
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "action":I
    :cond_2
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 140
    if-eq v0, v6, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->endUserInteraction()V

    goto :goto_0

    .line 143
    :cond_4
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->startUserInteraction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->startUserInteraction()V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->endUserInteraction()V

    .line 86
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-string v1, "onTouchEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 154
    .local v0, "action":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->endUserInteraction()V

    .line 157
    :cond_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setAdapter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :try_start_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/widget/HeaderViewPager;->setCurrentItem(I)V

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAutoScroll(ZZ)V
    .locals 4
    .param p1, "value"    # Z
    .param p2, "isFirstTime"    # Z

    .prologue
    const-string v0, "setAutoScroll"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-boolean p1, p0, Lcom/mcdonalds/app/widget/HeaderViewPager;->mAutoScroll:Z

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/widget/HeaderViewPager;->scheduleAutoScrolling(Z)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->unscheduleAutoScrolling()V

    goto :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    const-string v0, "setCurrentItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getOffsetAmount()I

    move-result v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    rem-int v1, p1, v1

    add-int p1, v0, v1

    .line 45
    invoke-super {p0, p1}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->setCurrentItem(I)V

    .line 47
    :cond_0
    return-void
.end method
