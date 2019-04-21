.class public Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CustomViewPager.java"


# instance fields
.field private mDatePicker:Landroid/widget/DatePicker;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTouchSlop:F

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "init"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->mTouchSlop:F

    .line 42
    return-void
.end method

.method private isScrollingHorizontal(FFFF)Z
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "isScrollingHorizontal"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v5, v3

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v5, v2

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p3}, Ljava/lang/Float;-><init>(F)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p4}, Ljava/lang/Float;-><init>(F)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    sub-float v0, p3, p1

    .line 146
    .local v0, "deltaX":F
    sub-float v1, p4, p2

    .line 148
    .local v1, "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 149
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 155
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-string v0, "dispatchTouchEvent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 129
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_2
    return v0

    .line 88
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->x1:F

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->y1:F

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->x2:F

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->y2:F

    .line 97
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->x1:F

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->y1:F

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->x2:F

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->y2:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->isScrollingHorizontal(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2

    .line 115
    :pswitch_3
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->mDatePicker:Landroid/widget/DatePicker;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1}, Landroid/widget/DatePicker;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 122
    :pswitch_4
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    const-string v4, "onMeasure"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v8

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 59
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "child":Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 62
    .local v1, "h":I
    if-le v1, v2, :cond_0

    .line 63
    move v2, v1

    .line 57
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 68
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 70
    const v4, 0x7f110298

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    iput-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->mDatePicker:Landroid/widget/DatePicker;

    .line 71
    const v4, 0x7f11029b

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TimePicker;

    iput-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/CustomViewPager;->mTimePicker:Landroid/widget/TimePicker;

    .line 72
    return-void
.end method
