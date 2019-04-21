.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;
.super Landroid/view/View;
.source "RadialSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;
    }
.end annotation


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mForceDrawDot:Z

.field private mHasInnerCircle:Z

.field private mInnerNumbersRadiusMultiplier:F

.field private mInvalidateUpdateListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mLineLength:I

.field private mNumbersRadiusMultiplier:F

.field private mOuterNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSelectionAlpha:I

.field private mSelectionDegrees:I

.field private mSelectionRadians:D

.field private mSelectionRadius:I

.field private mSelectionRadiusMultiplier:F

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    .line 79
    return-void
.end method


# virtual methods
.method public getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 26
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "forceLegal"    # Z
    .param p4, "isInnerCircle"    # [Ljava/lang/Boolean;

    .prologue
    const-string v21, "getDegreesFromCoords"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/Float;

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Ljava/lang/Float;

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    aput-object v24, v22, v23

    const/16 v23, 0x2

    new-instance v24, Ljava/lang/Boolean;

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v24, v22, v23

    const/16 v23, 0x3

    aput-object p4, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 186
    const/4 v4, -0x1

    .line 256
    :cond_0
    :goto_0
    return v4

    .line 189
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, p2, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, p2, v22

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, p1, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, p1, v23

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 193
    .local v10, "hypotenuse":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 194
    if-eqz p3, :cond_4

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v9, v0

    .line 198
    .local v9, "innerNumberRadius":I
    int-to-double v0, v9

    move-wide/from16 v22, v0

    sub-double v22, v10, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v5, v0

    .line 199
    .local v5, "distanceToInnerNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 200
    .local v16, "outerNumberRadius":I
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v10, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v7, v0

    .line 202
    .local v7, "distanceToOuterNumber":I
    const/16 v22, 0x0

    if-gt v5, v7, :cond_3

    const/16 v21, 0x1

    :goto_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, p4, v22

    .line 240
    .end local v5    # "distanceToInnerNumber":I
    .end local v7    # "distanceToOuterNumber":I
    .end local v9    # "innerNumberRadius":I
    .end local v16    # "outerNumberRadius":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, p2, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 241
    .local v15, "opposite":F
    float-to-double v0, v15

    move-wide/from16 v22, v0

    div-double v22, v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    .line 242
    .local v18, "radians":D
    const-wide v22, 0x4066800000000000L    # 180.0

    mul-double v22, v22, v18

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v4, v0

    .line 245
    .local v4, "degrees":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, p1, v21

    if-lez v21, :cond_8

    const/16 v17, 0x1

    .line 246
    .local v17, "rightSide":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, p2, v21

    if-gez v21, :cond_9

    const/16 v20, 0x1

    .line 247
    .local v20, "topSide":Z
    :goto_4
    if-eqz v17, :cond_a

    if-eqz v20, :cond_a

    .line 248
    rsub-int/lit8 v4, v4, 0x5a

    goto/16 :goto_0

    .line 202
    .end local v4    # "degrees":I
    .end local v15    # "opposite":F
    .end local v17    # "rightSide":Z
    .end local v18    # "radians":D
    .end local v20    # "topSide":Z
    .restart local v5    # "distanceToInnerNumber":I
    .restart local v7    # "distanceToOuterNumber":I
    .restart local v9    # "innerNumberRadius":I
    .restart local v16    # "outerNumberRadius":I
    :cond_3
    const/16 v21, 0x0

    goto :goto_1

    .line 207
    .end local v5    # "distanceToInnerNumber":I
    .end local v7    # "distanceToOuterNumber":I
    .end local v9    # "innerNumberRadius":I
    .end local v16    # "outerNumberRadius":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    move/from16 v22, v0

    sub-int v14, v21, v22

    .line 209
    .local v14, "minAllowedHypotenuseForInnerNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    move/from16 v22, v0

    add-int v13, v21, v22

    .line 211
    .local v13, "maxAllowedHypotenuseForOuterNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v23, v0

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    .line 214
    .local v8, "halfwayHypotenusePoint":I
    int-to-double v0, v14

    move-wide/from16 v22, v0

    cmpl-double v21, v10, v22

    if-ltz v21, :cond_5

    int-to-double v0, v8

    move-wide/from16 v22, v0

    cmpg-double v21, v10, v22

    if-gtz v21, :cond_5

    .line 216
    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, p4, v21

    goto/16 :goto_2

    .line 217
    :cond_5
    int-to-double v0, v13

    move-wide/from16 v22, v0

    cmpg-double v21, v10, v22

    if-gtz v21, :cond_6

    int-to-double v0, v8

    move-wide/from16 v22, v0

    cmpl-double v21, v10, v22

    if-ltz v21, :cond_6

    .line 219
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, p4, v21

    goto/16 :goto_2

    .line 221
    :cond_6
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 228
    .end local v8    # "halfwayHypotenusePoint":I
    .end local v13    # "maxAllowedHypotenuseForOuterNumber":I
    .end local v14    # "minAllowedHypotenuseForInnerNumber":I
    :cond_7
    if-nez p3, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v10, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v6, v0

    .line 232
    .local v6, "distanceToNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v12, v0

    .line 233
    .local v12, "maxAllowedDistance":I
    if-le v6, v12, :cond_2

    .line 234
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 245
    .end local v6    # "distanceToNumber":I
    .end local v12    # "maxAllowedDistance":I
    .restart local v4    # "degrees":I
    .restart local v15    # "opposite":F
    .restart local v18    # "radians":D
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 246
    .restart local v17    # "rightSide":Z
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 249
    .restart local v20    # "topSide":Z
    :cond_a
    if-eqz v17, :cond_b

    if-nez v20, :cond_b

    .line 250
    add-int/lit8 v4, v4, 0x5a

    goto/16 :goto_0

    .line 251
    :cond_b
    if-nez v17, :cond_c

    if-nez v20, :cond_c

    .line 252
    rsub-int v4, v4, 0x10e

    goto/16 :goto_0

    .line 253
    :cond_c
    if-nez v17, :cond_0

    if-eqz v20, :cond_0

    .line 254
    add-int/lit16 v4, v4, 0x10e

    goto/16 :goto_0
.end method

.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const-string v8, "getDisappearAnimator"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iget-boolean v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v8, :cond_1

    .line 314
    :cond_0
    const-string v8, "RadialSelectorView"

    const-string v9, "RadialSelectorView was not ready for animation."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    .line 319
    :cond_1
    const v6, 0x3e4ccccd    # 0.2f

    .line 320
    .local v6, "midwayPoint":F
    const/16 v1, 0x1f4

    .line 322
    .local v1, "duration":I
    invoke-static {v11, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 323
    .local v3, "kf0":Landroid/animation/Keyframe;
    iget v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    invoke-static {v6, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 324
    .local v4, "kf1":Landroid/animation/Keyframe;
    iget v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v10, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 325
    .local v5, "kf2":Landroid/animation/Keyframe;
    const-string v8, "animationRadiusMultiplier"

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Keyframe;

    aput-object v3, v9, v12

    aput-object v4, v9, v13

    aput-object v5, v9, v14

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 328
    .local v7, "radiusDisappear":Landroid/animation/PropertyValuesHolder;
    invoke-static {v11, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 329
    invoke-static {v10, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 330
    const-string v8, "alpha"

    new-array v9, v14, [Landroid/animation/Keyframe;

    aput-object v3, v9, v12

    aput-object v4, v9, v13

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 332
    .local v2, "fadeOut":Landroid/animation/PropertyValuesHolder;
    new-array v8, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v8, v12

    aput-object v2, v8, v13

    invoke-static {p0, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    int-to-long v10, v1

    .line 333
    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 334
    .local v0, "disappearAnimator":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 22

    .prologue
    const-string v18, "getReappearAnimator"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 341
    :cond_0
    const-string v18, "RadialSelectorView"

    const-string v19, "RadialSelectorView was not ready for animation."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v14, 0x0

    .line 374
    :goto_0
    return-object v14

    .line 346
    :cond_1
    const v12, 0x3e4ccccd    # 0.2f

    .line 347
    .local v12, "midwayPoint":F
    const/16 v6, 0x1f4

    .line 352
    .local v6, "duration":I
    const/high16 v4, 0x3e800000    # 0.25f

    .line 353
    .local v4, "delayMultiplier":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 354
    .local v17, "transitionDurationMultiplier":F
    add-float v16, v17, v4

    .line 355
    .local v16, "totalDurationMultiplier":F
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v15, v0

    .line 356
    .local v15, "totalDuration":I
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v4

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 357
    .local v5, "delayPoint":F
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v5

    mul-float v19, v19, v12

    sub-float v12, v18, v19

    .line 359
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 360
    .local v8, "kf0":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 361
    .local v9, "kf1":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 362
    .local v10, "kf2":Landroid/animation/Keyframe;
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 363
    .local v11, "kf3":Landroid/animation/Keyframe;
    const-string v18, "animationRadiusMultiplier"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    const/16 v20, 0x1

    aput-object v9, v19, v20

    const/16 v20, 0x2

    aput-object v10, v19, v20

    const/16 v20, 0x3

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 366
    .local v13, "radiusReappear":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 367
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 368
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 369
    const-string v18, "alpha"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    const/16 v20, 0x1

    aput-object v9, v19, v20

    const/16 v20, 0x2

    aput-object v10, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 371
    .local v7, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    const/16 v19, 0x1

    aput-object v7, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    int-to-long v0, v15

    move-wide/from16 v20, v0

    .line 372
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 373
    .local v14, "reappearAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .prologue
    const-string v0, "hasOverlappingRendering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;ZZIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;
    .param p3, "hasInnerCircle"    # Z
    .param p4, "disappearsOut"    # Z
    .param p5, "selectionDegrees"    # I
    .param p6, "isInnerCircle"    # Z

    .prologue
    const-string v2, "initialize"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "RadialSelectorView"

    const-string v3, "This RadialSelectorView may only be initialized once."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    .local v1, "res":Landroid/content/res/Resources;
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getAccentColor()I

    move-result v0

    .line 104
    .local v0, "accentColor":I
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_1
    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionAlpha:I

    .line 110
    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->is24HourMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    .line 111
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    if-nez v2, :cond_1

    invoke-interface {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-eq v2, v3, :cond_3

    .line 112
    :cond_1
    const v2, 0x7f090a21

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    .line 122
    :goto_2
    iput-boolean p3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    .line 123
    if-eqz p3, :cond_4

    .line 124
    const v2, 0x7f090a2c

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    .line 126
    const v2, 0x7f090a2e

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    .line 132
    :goto_3
    const v2, 0x7f090a39

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadiusMultiplier:F

    .line 136
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    .line 137
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3d4ccccd    # 0.05f

    if-eqz p4, :cond_5

    const/4 v2, -0x1

    :goto_4
    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    .line 138
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    if-eqz p4, :cond_6

    const/4 v2, 0x1

    :goto_5
    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    .line 139
    new-instance v2, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$1;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    .line 141
    const/4 v2, 0x0

    invoke-virtual {p0, p5, p6, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    goto/16 :goto_0

    .line 107
    :cond_2
    const/16 v2, 0xff

    goto :goto_1

    .line 115
    :cond_3
    const v2, 0x7f090a20

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    .line 117
    const v2, 0x7f090a1e

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_2

    .line 129
    :cond_4
    const v2, 0x7f090a2d

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    goto :goto_3

    .line 137
    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    .line 138
    :cond_6
    const/4 v2, -0x1

    goto :goto_5
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v11, 0xff

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "onDraw"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getWidth()I

    move-result v10

    .line 262
    .local v10, "viewWidth":I
    if-eqz v10, :cond_0

    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v2, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    .line 268
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    .line 269
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    .line 271
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    if-nez v2, :cond_2

    .line 275
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v6, v2

    .line 276
    .local v6, "amPmCircleRadius":I
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-double v2, v2

    int-to-double v4, v6

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    .line 279
    .end local v6    # "amPmCircleRadius":I
    :cond_2
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    .line 281
    iput-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    .line 285
    :cond_3
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    .line 286
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double v4, v3

    iget-wide v12, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v4, v12

    double-to-int v3, v4

    add-int v8, v2, v3

    .line 287
    .local v8, "pointX":I
    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double v4, v3

    iget-wide v12, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v4, v12

    double-to-int v3, v4

    sub-int v9, v2, v3

    .line 290
    .local v9, "pointY":I
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 293
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mForceDrawDot:Z

    iget v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionDegrees:I

    rem-int/lit8 v3, v3, 0x1e

    if-eqz v3, :cond_4

    :goto_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    int-to-float v0, v8

    int-to-float v1, v9

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 307
    :goto_2
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 308
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 309
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float v1, v0

    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 293
    goto :goto_1

    .line 300
    :cond_5
    iget v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    .line 301
    .local v7, "lineLength":I
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    sub-int/2addr v7, v0

    .line 302
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-double v2, v7

    iget-wide v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int v8, v0, v1

    .line 303
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-double v2, v7

    iget-wide v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sub-int v9, v0, v1

    goto :goto_2
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 4
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    const-string v0, "setAnimationRadiusMultiplier"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iput p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    .line 181
    return-void
.end method

.method public setSelection(IZZ)V
    .locals 4
    .param p1, "selectionDegrees"    # I
    .param p2, "isInnerCircle"    # Z
    .param p3, "forceDrawDot"    # Z

    .prologue
    const-string v0, "setSelection"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iput p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionDegrees:I

    .line 156
    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    .line 157
    iput-boolean p3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mForceDrawDot:Z

    .line 159
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    if-eqz v0, :cond_0

    .line 160
    if-eqz p2, :cond_1

    .line 161
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    goto :goto_0
.end method
