.class public Lcom/mcdonalds/app/widget/PagerIndicator;
.super Landroid/widget/RadioGroup;
.source "PagerIndicator.java"


# instance fields
.field mIndicators:[Landroid/widget/RadioButton;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/mcdonalds/app/widget/PagerIndicator$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/widget/PagerIndicator$2;-><init>(Lcom/mcdonalds/app/widget/PagerIndicator;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/PagerIndicator;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Lcom/mcdonalds/app/widget/PagerIndicator$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/widget/PagerIndicator$2;-><init>(Lcom/mcdonalds/app/widget/PagerIndicator;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/PagerIndicator;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/widget/PagerIndicator;Landroid/support/v4/view/ViewPager;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/PagerIndicator;
    .param p1, "x1"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.PagerIndicator"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/PagerIndicator;->buildFromPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method private buildFromPager(Landroid/support/v4/view/ViewPager;)V
    .locals 10
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "buildFromPager"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/PagerIndicator;->removeAllViews()V

    .line 50
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 51
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/PagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 52
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 53
    .local v1, "count":I
    new-array v6, v1, [Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/mcdonalds/app/widget/PagerIndicator;->mIndicators:[Landroid/widget/RadioButton;

    .line 54
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    .line 55
    .local v5, "selected":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 56
    const v6, 0x7f040174

    invoke-virtual {v4, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 57
    .local v3, "indicator":Landroid/widget/RadioButton;
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/widget/PagerIndicator;->addView(Landroid/view/View;)V

    .line 58
    if-ne v2, v5, :cond_0

    .line 59
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/widget/PagerIndicator;->mIndicators:[Landroid/widget/RadioButton;

    aput-object v3, v6, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "indicator":Landroid/widget/RadioButton;
    :cond_1
    return-void
.end method


# virtual methods
.method public setupOneDotPager(Landroid/support/v4/view/ViewPager;)V
    .locals 6
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "setupOneDotPager"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/PagerIndicator;->removeAllViews()V

    .line 42
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/PagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 43
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040174

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 44
    .local v0, "indicator":Landroid/widget/RadioButton;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/widget/PagerIndicator;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 46
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const-string v0, "setupWithViewPager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/PagerIndicator;->buildFromPager(Landroid/support/v4/view/ViewPager;)V

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/widget/PagerIndicator;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 32
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/widget/PagerIndicator$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/widget/PagerIndicator$1;-><init>(Lcom/mcdonalds/app/widget/PagerIndicator;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 38
    return-void
.end method
