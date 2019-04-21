.class public Lcom/mcdonalds/app/widget/ViewPagerWithDuration;
.super Lcom/mcdonalds/app/widget/ParentSwipingViewPager;
.source "ViewPagerWithDuration.java"


# instance fields
.field private mScroller:Lcom/mcdonalds/app/widget/ScrollerWithDuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->mScroller:Lcom/mcdonalds/app/widget/ScrollerWithDuration;

    .line 16
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->postInitViewPager()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/widget/ParentSwipingViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->mScroller:Lcom/mcdonalds/app/widget/ScrollerWithDuration;

    .line 21
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->postInitViewPager()V

    .line 22
    return-void
.end method

.method private postInitViewPager()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v3, "postInitViewPager"

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :try_start_0
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 33
    .local v2, "scroller":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string v4, "sInterpolator"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 35
    .local v1, "interpolator":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    new-instance v4, Lcom/mcdonalds/app/widget/ScrollerWithDuration;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-direct {v4, v5, v3}, Lcom/mcdonalds/app/widget/ScrollerWithDuration;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->mScroller:Lcom/mcdonalds/app/widget/ScrollerWithDuration;

    .line 39
    iget-object v3, p0, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->mScroller:Lcom/mcdonalds/app/widget/ScrollerWithDuration;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    return-void

    .line 40
    .end local v1    # "interpolator":Ljava/lang/reflect/Field;
    .end local v2    # "scroller":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 42
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public setScrollDurationFactor(D)V
    .locals 5
    .param p1, "scrollFactor"    # D

    .prologue
    const-string v0, "setScrollDurationFactor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ViewPagerWithDuration;->mScroller:Lcom/mcdonalds/app/widget/ScrollerWithDuration;

    invoke-virtual {v0, p1, p2}, Lcom/mcdonalds/app/widget/ScrollerWithDuration;->setScrollDurationFactor(D)V

    .line 52
    return-void
.end method
