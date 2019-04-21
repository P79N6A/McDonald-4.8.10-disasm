.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mCircleColor:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDotColor:I

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mIsInitialized:Z

    .line 53
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    .prologue
    const/4 v5, 0x1

    const-string v2, "initialize"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mIsInitialized:Z

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "CircleView"

    const-string v3, "CircleView may only be initialized once."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    .local v1, "res":Landroid/content/res/Resources;
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f0e0071

    .line 64
    .local v0, "colorRes":I
    :goto_1
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mCircleColor:I

    .line 65
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getAccentColor()I

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mDotColor:I

    .line 66
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->is24HourMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mIs24HourMode:Z

    .line 69
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mIs24HourMode:Z

    if-nez v2, :cond_1

    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-eq v2, v3, :cond_3

    .line 70
    :cond_1
    const v2, 0x7f090a21

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 79
    :goto_2
    iput-boolean v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mIsInitialized:Z

    goto :goto_0

    .line 63
    .end local v0    # "colorRes":I
    :cond_2
    const v0, 0x7f0e0072

    goto :goto_1

    .line 73
    .restart local v0    # "colorRes":I
    :cond_3
    const v2, 0x7f090a20

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 75
    const v2, 0x7f090a1e

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const-string v2, "onDraw"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->getWidth()I

    move-result v1

    .line 85
    .local v1, "viewWidth":I
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mDrawValuesReady:Z

    if-nez v2, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mXCenter:I

    .line 91
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mYCenter:I

    .line 92
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mXCenter:I

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mCircleRadius:I

    .line 94
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mIs24HourMode:Z

    if-nez v2, :cond_2

    .line 98
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 99
    .local v0, "amPmCircleRadius":I
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mYCenter:I

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mYCenter:I

    .line 102
    .end local v0    # "amPmCircleRadius":I
    :cond_2
    iput-boolean v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mDrawValuesReady:Z

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mCircleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mDotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mYCenter:I

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
