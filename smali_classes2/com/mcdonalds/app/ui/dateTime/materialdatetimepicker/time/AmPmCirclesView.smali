.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;
.super Landroid/view/View;
.source "AmPmCirclesView.java"


# instance fields
.field private mAmDisabled:Z

.field private mAmOrPm:I

.field private mAmOrPmPressed:I

.field private mAmPmCircleRadius:I

.field private mAmPmCircleRadiusMultiplier:F

.field private mAmPmDisabledTextColor:I

.field private mAmPmSelectedTextColor:I

.field private mAmPmTextColor:I

.field private mAmPmYCenter:I

.field private mAmText:Ljava/lang/String;

.field private mAmXCenter:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPmDisabled:Z

.field private mPmText:Ljava/lang/String;

.field private mPmXCenter:I

.field private mSelectedAlpha:I

.field private mSelectedColor:I

.field private mTouchedColor:I

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mIsInitialized:Z

    .line 74
    return-void
.end method


# virtual methods
.method public getIsTouchingAmOrPm(FF)I
    .locals 9
    .param p1, "xCoord"    # F
    .param p2, "yCoord"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v6, "getIsTouchingAmOrPm"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v7, v4

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v7, v5

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mDrawValuesReady:Z

    if-nez v6, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v3

    .line 139
    :cond_1
    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    iget v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 141
    .local v2, "squaredYDistance":I
    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    int-to-float v6, v6

    sub-float v6, p1, v6

    iget v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    mul-float/2addr v6, v7

    int-to-float v7, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 142
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 143
    .local v0, "distanceToAmCenter":I
    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    if-gt v0, v6, :cond_2

    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmDisabled:Z

    if-nez v6, :cond_2

    move v3, v4

    .line 144
    goto :goto_0

    .line 147
    :cond_2
    iget v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    int-to-float v6, v6

    sub-float v6, p1, v6

    mul-float/2addr v4, v6

    int-to-float v6, v2

    add-float/2addr v4, v6

    float-to-double v6, v4

    .line 148
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 149
    .local v1, "distanceToPmCenter":I
    iget v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    if-gt v1, v4, :cond_0

    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmDisabled:Z

    if-nez v4, :cond_0

    move v3, v5

    .line 150
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;
    .param p3, "amOrPm"    # I

    .prologue
    const/16 v11, 0xff

    const v10, 0x7f0e008b

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v4, "initialize"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v9

    aput-object p2, v5, v8

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mIsInitialized:Z

    if-eqz v4, :cond_0

    .line 78
    const-string v4, "AmPmCirclesView"

    const-string v5, "AmPmCirclesView may only be initialized once."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    .local v1, "res":Landroid/content/res/Resources;
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    const v4, 0x7f0e0071

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mUnselectedColor:I

    .line 86
    invoke-static {p1, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmTextColor:I

    .line 87
    const v4, 0x7f0e0077

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmDisabledTextColor:I

    .line 88
    iput v11, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedAlpha:I

    .line 96
    :goto_1
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getAccentColor()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedColor:I

    .line 97
    iget v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedColor:I

    invoke-static {v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->darkenColor(I)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mTouchedColor:I

    .line 98
    invoke-static {p1, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmSelectedTextColor:I

    .line 100
    const v4, 0x7f090a32

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "typefaceFamily":Ljava/lang/String;
    invoke-static {v3, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 102
    .local v2, "tf":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 103
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    const v4, 0x7f090a20

    .line 107
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mCircleRadiusMultiplier:F

    .line 108
    const v4, 0x7f090a1e

    .line 109
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadiusMultiplier:F

    .line 110
    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "amPmTexts":[Ljava/lang/String;
    aget-object v4, v0, v9

    iput-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmText:Ljava/lang/String;

    .line 112
    aget-object v4, v0, v8

    iput-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmText:Ljava/lang/String;

    .line 114
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isAmDisabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmDisabled:Z

    .line 115
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isPmDisabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmDisabled:Z

    .line 117
    invoke-virtual {p0, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 118
    const/4 v4, -0x1

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmOrPmPressed:I

    .line 120
    iput-boolean v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mIsInitialized:Z

    goto/16 :goto_0

    .line 90
    .end local v0    # "amPmTexts":[Ljava/lang/String;
    .end local v2    # "tf":Landroid/graphics/Typeface;
    .end local v3    # "typefaceFamily":Ljava/lang/String;
    :cond_1
    invoke-static {p1, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mUnselectedColor:I

    .line 91
    const v4, 0x7f0e006a

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmTextColor:I

    .line 92
    const v4, 0x7f0e0076

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmDisabledTextColor:I

    .line 93
    iput v11, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedAlpha:I

    goto/16 :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-string v18, "onDraw"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->getWidth()I

    move-result v17

    .line 160
    .local v17, "viewWidth":I
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mIsInitialized:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mDrawValuesReady:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->getWidth()I

    move-result v18

    div-int/lit8 v10, v18, 0x2

    .line 166
    .local v10, "layoutXCenter":I
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->getHeight()I

    move-result v18

    div-int/lit8 v11, v18, 0x2

    .line 168
    .local v11, "layoutYCenter":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mCircleRadiusMultiplier:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v9, v0

    .line 169
    .local v9, "circleRadius":I
    int-to-float v0, v9

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadiusMultiplier:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    .line 170
    int-to-double v0, v11

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe8000000000000L    # 0.75

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v11, v0

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x3

    div-int/lit8 v15, v18, 0x4

    .line 172
    .local v15, "textSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v11, v18

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    .line 178
    sub-int v18, v10, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    .line 179
    add-int v18, v10, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    .line 181
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mDrawValuesReady:Z

    .line 186
    .end local v9    # "circleRadius":I
    .end local v10    # "layoutXCenter":I
    .end local v11    # "layoutYCenter":I
    .end local v15    # "textSize":I
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mUnselectedColor:I

    .line 187
    .local v7, "amColor":I
    const/16 v6, 0xff

    .line 188
    .local v6, "amAlpha":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmTextColor:I

    .line 189
    .local v8, "amTextColor":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mUnselectedColor:I

    .line 190
    .local v13, "pmColor":I
    const/16 v12, 0xff

    .line 191
    .local v12, "pmAlpha":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmTextColor:I

    .line 193
    .local v14, "pmTextColor":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmOrPm:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 194
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedColor:I

    .line 195
    move-object/from16 v0, p0

    iget v6, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedAlpha:I

    .line 196
    move-object/from16 v0, p0

    iget v8, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmSelectedTextColor:I

    .line 202
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmOrPmPressed:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 203
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mTouchedColor:I

    .line 204
    move-object/from16 v0, p0

    iget v6, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedAlpha:I

    .line 209
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmDisabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 210
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mUnselectedColor:I

    .line 211
    move-object/from16 v0, p0

    iget v8, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmDisabledTextColor:I

    .line 213
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmDisabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 214
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mUnselectedColor:I

    .line 215
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmDisabledTextColor:I

    .line 219
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->descent()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v16, v18, v19

    .line 229
    .local v16, "textYCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmText:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmText:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 197
    .end local v16    # "textYCenter":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmOrPm:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedColor:I

    .line 199
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedAlpha:I

    .line 200
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmPmSelectedTextColor:I

    goto/16 :goto_1

    .line 205
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmOrPmPressed:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mTouchedColor:I

    .line 207
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mSelectedAlpha:I

    goto/16 :goto_2
.end method

.method public setAmOrPm(I)V
    .locals 4
    .param p1, "amOrPm"    # I

    .prologue
    const-string v0, "setAmOrPm"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iput p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmOrPm:I

    .line 125
    return-void
.end method

.method public setAmOrPmPressed(I)V
    .locals 4
    .param p1, "amOrPmPressed"    # I

    .prologue
    const-string v0, "setAmOrPmPressed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iput p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->mAmOrPmPressed:I

    .line 129
    return-void
.end method
