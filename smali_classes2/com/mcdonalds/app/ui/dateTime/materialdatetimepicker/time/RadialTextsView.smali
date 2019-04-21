.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;
.super Landroid/view/View;
.source "RadialTextsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;,
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;
    }
.end annotation


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:F

.field private mCircleRadiusMultiplier:F

.field mDisappearAnimator:Landroid/animation/ObjectAnimator;

.field private mDrawValuesReady:Z

.field private mHasInnerCircle:Z

.field private final mInactivePaint:Landroid/graphics/Paint;

.field private mInnerNumbersRadiusMultiplier:F

.field private mInnerTextGridHeights:[F

.field private mInnerTextGridWidths:[F

.field private mInnerTextSize:F

.field private mInnerTextSizeMultiplier:F

.field private mInnerTexts:[Ljava/lang/String;

.field private mInvalidateUpdateListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field mReappearAnimator:Landroid/animation/ObjectAnimator;

.field private final mSelectedPaint:Landroid/graphics/Paint;

.field private mTextGridHeights:[F

.field private mTextGridValuesDirty:Z

.field private mTextGridWidths:[F

.field private mTextSize:F

.field private mTextSizeMultiplier:F

.field private mTexts:[Ljava/lang/String;

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mTypefaceLight:Landroid/graphics/Typeface;

.field private mTypefaceRegular:Landroid/graphics/Typeface;

.field private mValidator:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;

.field private mXCenter:I

.field private mYCenter:I

.field private selection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->selection:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    .line 88
    return-void
.end method

.method private assignTextColors([Ljava/lang/String;)[Landroid/graphics/Paint;
    .locals 6
    .param p1, "texts"    # [Ljava/lang/String;

    .prologue
    const-string v3, "assignTextColors"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    array-length v3, p1

    new-array v1, v3, [Landroid/graphics/Paint;

    .line 300
    .local v1, "paints":[Landroid/graphics/Paint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 301
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 302
    .local v2, "text":I
    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->selection:I

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    aput-object v3, v1, v0

    .line 300
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mValidator:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;

    invoke-interface {v3, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;->isValidSelection(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    aput-object v3, v1, v0

    goto :goto_1

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    aput-object v3, v1, v0

    goto :goto_1

    .line 306
    .end local v2    # "text":I
    :cond_2
    return-object v1
.end method

.method private calculateGridSizes(FFFF[F[F)V
    .locals 7
    .param p1, "numbersRadius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "textGridHeights"    # [F
    .param p6, "textGridWidths"    # [F

    .prologue
    const-string v3, "calculateGridSizes"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p3}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p4}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    move v0, p1

    .line 273
    .local v0, "offset1":F
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 275
    .local v1, "offset2":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v2, p1, v3

    .line 276
    .local v2, "offset3":F
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 278
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 280
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    .line 282
    const/4 v3, 0x0

    sub-float v4, p3, v0

    aput v4, p5, v3

    .line 283
    const/4 v3, 0x0

    sub-float v4, p2, v0

    aput v4, p6, v3

    .line 284
    const/4 v3, 0x1

    sub-float v4, p3, v1

    aput v4, p5, v3

    .line 285
    const/4 v3, 0x1

    sub-float v4, p2, v1

    aput v4, p6, v3

    .line 286
    const/4 v3, 0x2

    sub-float v4, p3, v2

    aput v4, p5, v3

    .line 287
    const/4 v3, 0x2

    sub-float v4, p2, v2

    aput v4, p6, v3

    .line 288
    const/4 v3, 0x3

    aput p3, p5, v3

    .line 289
    const/4 v3, 0x3

    aput p2, p6, v3

    .line 290
    const/4 v3, 0x4

    add-float v4, p3, v2

    aput v4, p5, v3

    .line 291
    const/4 v3, 0x4

    add-float v4, p2, v2

    aput v4, p6, v3

    .line 292
    const/4 v3, 0x5

    add-float v4, p3, v1

    aput v4, p5, v3

    .line 293
    const/4 v3, 0x5

    add-float v4, p2, v1

    aput v4, p6, v3

    .line 294
    const/4 v3, 0x6

    add-float v4, p3, v0

    aput v4, p5, v3

    .line 295
    const/4 v3, 0x6

    add-float v4, p2, v0

    aput v4, p6, v3

    .line 296
    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "texts"    # [Ljava/lang/String;
    .param p5, "textGridWidths"    # [F
    .param p6, "textGridHeights"    # [F

    .prologue
    const-string v1, "drawTexts"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 315
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 316
    invoke-direct {p0, p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->assignTextColors([Ljava/lang/String;)[Landroid/graphics/Paint;

    move-result-object v0

    .line 317
    .local v0, "textPaints":[Landroid/graphics/Paint;
    const/4 v1, 0x0

    aget-object v1, p4, v1

    const/4 v2, 0x3

    aget v2, p5, v2

    const/4 v3, 0x0

    aget v3, p6, v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    const/4 v1, 0x1

    aget-object v1, p4, v1

    const/4 v2, 0x4

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 319
    const/4 v1, 0x2

    aget-object v1, p4, v1

    const/4 v2, 0x5

    aget v2, p5, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    const/4 v1, 0x3

    aget-object v1, p4, v1

    const/4 v2, 0x6

    aget v2, p5, v2

    const/4 v3, 0x3

    aget v3, p6, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    const/4 v1, 0x4

    aget-object v1, p4, v1

    const/4 v2, 0x5

    aget v2, p5, v2

    const/4 v3, 0x4

    aget v3, p6, v3

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 322
    const/4 v1, 0x5

    aget-object v1, p4, v1

    const/4 v2, 0x4

    aget v2, p5, v2

    const/4 v3, 0x5

    aget v3, p6, v3

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 323
    const/4 v1, 0x6

    aget-object v1, p4, v1

    const/4 v2, 0x3

    aget v2, p5, v2

    const/4 v3, 0x6

    aget v3, p6, v3

    const/4 v4, 0x6

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 324
    const/4 v1, 0x7

    aget-object v1, p4, v1

    const/4 v2, 0x2

    aget v2, p5, v2

    const/4 v3, 0x5

    aget v3, p6, v3

    const/4 v4, 0x7

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 325
    const/16 v1, 0x8

    aget-object v1, p4, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    const/4 v3, 0x4

    aget v3, p6, v3

    const/16 v4, 0x8

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 326
    const/16 v1, 0x9

    aget-object v1, p4, v1

    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x3

    aget v3, p6, v3

    const/16 v4, 0x9

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 327
    const/16 v1, 0xa

    aget-object v1, p4, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    const/16 v4, 0xa

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 328
    const/16 v1, 0xb

    aget-object v1, p4, v1

    const/4 v2, 0x2

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    const/16 v4, 0xb

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 329
    return-void
.end method

.method private renderAnimations()V
    .locals 22

    .prologue
    const-string v19, "renderAnimations"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    const v13, 0x3e4ccccd    # 0.2f

    .line 337
    .local v13, "midwayPoint":F
    const/16 v6, 0x1f4

    .line 340
    .local v6, "duration":I
    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 341
    .local v9, "kf0":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 342
    .local v10, "kf1":Landroid/animation/Keyframe;
    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 343
    .local v11, "kf2":Landroid/animation/Keyframe;
    const-string v19, "animationRadiusMultiplier"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    const/16 v21, 0x2

    aput-object v11, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 346
    .local v14, "radiusDisappear":Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 347
    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 348
    const-string v19, "alpha"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 350
    .local v8, "fadeOut":Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    const/16 v20, 0x1

    aput-object v8, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v19

    int-to-long v0, v6

    move-wide/from16 v20, v0

    .line 351
    invoke-virtual/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    const/high16 v4, 0x3e800000    # 0.25f

    .line 357
    .local v4, "delayMultiplier":F
    const/high16 v18, 0x3f800000    # 1.0f

    .line 358
    .local v18, "transitionDurationMultiplier":F
    add-float v17, v18, v4

    .line 359
    .local v17, "totalDurationMultiplier":F
    int-to-float v0, v6

    move/from16 v19, v0

    mul-float v19, v19, v17

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 360
    .local v16, "totalDuration":I
    int-to-float v0, v6

    move/from16 v19, v0

    mul-float v19, v19, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 361
    .local v5, "delayPoint":F
    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v5

    mul-float v20, v20, v13

    sub-float v13, v19, v20

    .line 363
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v5, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 366
    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    .line 367
    .local v12, "kf3":Landroid/animation/Keyframe;
    const-string v19, "animationRadiusMultiplier"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    const/16 v21, 0x2

    aput-object v11, v20, v21

    const/16 v21, 0x3

    aput-object v12, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 370
    .local v15, "radiusReappear":Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 371
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v5, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 372
    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 373
    const-string v19, "alpha"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    const/16 v21, 0x2

    aput-object v11, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 375
    .local v7, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    const/16 v20, 0x1

    aput-object v7, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v19

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 376
    invoke-virtual/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 378
    return-void
.end method


# virtual methods
.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "getDisappearAnimator"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    .line 382
    :cond_0
    const-string v1, "RadialTextsView"

    const-string v2, "RadialTextView was not ready for animation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "getReappearAnimator"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    .line 391
    :cond_0
    const-string v1, "RadialTextsView"

    const-string v2, "RadialTextView was not ready for animation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .prologue
    const-string v0, "hasOverlappingRendering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texts"    # [Ljava/lang/String;
    .param p3, "innerTexts"    # [Ljava/lang/String;
    .param p4, "controller"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;
    .param p5, "validator"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .param p6, "disappearsOut"    # Z

    .prologue
    const-string v7, "initialize"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    const/4 v9, 0x3

    aput-object p4, v8, v9

    const/4 v9, 0x4

    aput-object p5, v8, v9

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/Boolean;

    move/from16 v0, p6

    invoke-direct {v10, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-boolean v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v7, :cond_0

    .line 93
    const-string v7, "RadialTextsView"

    const-string v8, "This RadialTextsView may only be initialized once."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 99
    .local v2, "res":Landroid/content/res/Resources;
    invoke-interface {p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v7

    if-eqz v7, :cond_2

    const v4, 0x7f0e008b

    .line 100
    .local v4, "textColorRes":I
    :goto_1
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const v7, 0x7f090a31

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "typefaceFamily":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    .line 103
    const v7, 0x7f090a32

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "typefaceFamilyRegular":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    .line 105
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    const v7, 0x7f0e008b

    invoke-static {p1, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 110
    .local v3, "selectedTextColor":I
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    invoke-interface {p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v7

    if-eqz v7, :cond_3

    const v1, 0x7f0e0077

    .line 117
    .local v1, "inactiveColorRes":I
    :goto_2
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 121
    iput-object p2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTexts:[Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    .line 123
    invoke-interface {p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->is24HourMode()Z

    move-result v7

    iput-boolean v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    .line 124
    if-eqz p3, :cond_4

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    .line 127
    iget-boolean v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    if-nez v7, :cond_1

    invoke-interface {p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v7

    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-eq v7, v8, :cond_5

    .line 128
    :cond_1
    const v7, 0x7f090a21

    .line 129
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 138
    :goto_4
    const/4 v7, 0x7

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    .line 139
    const/4 v7, 0x7

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    .line 140
    iget-boolean v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v7, :cond_7

    .line 141
    const v7, 0x7f090a2e

    .line 142
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 143
    const v7, 0x7f090a2c

    .line 144
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 143
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    .line 147
    invoke-interface {p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v7

    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-ne v7, v8, :cond_6

    .line 148
    const v7, 0x7f090a3d

    .line 149
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    .line 150
    const v7, 0x7f090a3a

    .line 151
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    .line 159
    :goto_5
    const/4 v7, 0x7

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    .line 160
    const/4 v7, 0x7

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    .line 168
    :goto_6
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    .line 169
    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3d4ccccd    # 0.05f

    if-eqz p6, :cond_8

    const/4 v7, -0x1

    :goto_7
    int-to-float v7, v7

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    .line 170
    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    if-eqz p6, :cond_9

    const/4 v7, 0x1

    :goto_8
    int-to-float v7, v7

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    .line 171
    new-instance v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$1;)V

    iput-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    .line 173
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mValidator:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;

    .line 175
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 176
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    goto/16 :goto_0

    .line 99
    .end local v1    # "inactiveColorRes":I
    .end local v3    # "selectedTextColor":I
    .end local v4    # "textColorRes":I
    .end local v5    # "typefaceFamily":Ljava/lang/String;
    .end local v6    # "typefaceFamilyRegular":Ljava/lang/String;
    :cond_2
    const v4, 0x7f0e0087

    goto/16 :goto_1

    .line 115
    .restart local v3    # "selectedTextColor":I
    .restart local v4    # "textColorRes":I
    .restart local v5    # "typefaceFamily":Ljava/lang/String;
    .restart local v6    # "typefaceFamilyRegular":Ljava/lang/String;
    :cond_3
    const v1, 0x7f0e0076

    goto/16 :goto_2

    .line 124
    .restart local v1    # "inactiveColorRes":I
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 131
    :cond_5
    const v7, 0x7f090a20

    .line 132
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 133
    const v7, 0x7f090a1e

    .line 134
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    goto/16 :goto_4

    .line 153
    :cond_6
    const v7, 0x7f090a3e

    .line 154
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    .line 155
    const v7, 0x7f090a3b

    .line 156
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    goto :goto_5

    .line 162
    :cond_7
    const v7, 0x7f090a2d

    .line 163
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 164
    const v7, 0x7f090a3c

    .line 165
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    goto/16 :goto_6

    .line 169
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_7

    .line 170
    :cond_9
    const/4 v7, -0x1

    goto :goto_8
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x1

    const-string v0, "onDraw"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v13

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getWidth()I

    move-result v12

    .line 207
    .local v12, "viewWidth":I
    if-eqz v12, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-nez v0, :cond_4

    .line 212
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mXCenter:I

    .line 213
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    .line 214
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mXCenter:I

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    .line 215
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    if-nez v0, :cond_2

    .line 219
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    mul-float v11, v0, v2

    .line 220
    .local v11, "amPmCircleRadius":F
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-double v4, v0

    float-to-double v6, v11

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    .line 223
    .end local v11    # "amPmCircleRadius":F
    :cond_2
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextSize:F

    .line 224
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_3

    .line 225
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextSize:F

    .line 229
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->renderAnimations()V

    .line 231
    iput-boolean v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 232
    iput-boolean v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    .line 236
    :cond_4
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    if-eqz v0, :cond_6

    .line 237
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v1, v0, v2

    .line 241
    .local v1, "numbersRadius":F
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mXCenter:I

    int-to-float v2, v0

    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v3, v0

    iget v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextSize:F

    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 243
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_5

    .line 245
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v3, v0, v2

    .line 247
    .local v3, "innerNumbersRadius":F
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v5, v0

    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextSize:F

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 250
    .end local v3    # "innerNumbersRadius":F
    :cond_5
    iput-boolean v13, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 254
    .end local v1    # "numbersRadius":F
    :cond_6
    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextSize:F

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    .line 255
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_0

    .line 256
    iget v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextSize:F

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    goto/16 :goto_0
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 5
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    const/4 v4, 0x1

    const-string v0, "setAnimationRadiusMultiplier"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iput p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    .line 201
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 202
    return-void
.end method

.method protected setSelection(I)V
    .locals 4
    .param p1, "selection"    # I

    .prologue
    const-string v0, "setSelection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iput p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->selection:I

    .line 185
    return-void
.end method
