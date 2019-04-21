.class public Lme/grantland/widget/AutofitHelper;
.super Ljava/lang/Object;
.source "AutofitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grantland/widget/AutofitHelper$1;,
        Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;,
        Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;,
        Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mIsAutofitting:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mPrecision:F

.field private mTextSize:F

.field private mTextView:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v2, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;

    invoke-direct {v2, p0, v3}, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;-><init>(Lme/grantland/widget/AutofitHelper;Lme/grantland/widget/AutofitHelper$1;)V

    iput-object v2, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    .line 242
    new-instance v2, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;

    invoke-direct {v2, p0, v3}, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;-><init>(Lme/grantland/widget/AutofitHelper;Lme/grantland/widget/AutofitHelper$1;)V

    iput-object v2, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 246
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 249
    .local v1, "scaledDensity":F
    iput-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 250
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lme/grantland/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-direct {p0, v2}, Lme/grantland/widget/AutofitHelper;->setRawTextSize(F)V

    .line 253
    invoke-static {p1}, Lme/grantland/widget/AutofitHelper;->getMaxLines(Landroid/widget/TextView;)I

    move-result v2

    iput v2, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    .line 254
    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v1

    iput v2, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    .line 255
    iget v2, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    iput v2, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    .line 256
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    .line 257
    return-void
.end method

.method static synthetic access$200(Lme/grantland/widget/AutofitHelper;)V
    .locals 0
    .param p0, "x0"    # Lme/grantland/widget/AutofitHelper;

    .prologue
    .line 31
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    return-void
.end method

.method private autofit()V
    .locals 8

    .prologue
    .line 495
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    .line 498
    .local v6, "oldTextSize":F
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    .line 499
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    iget v2, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    iget v3, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    iget v4, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    iget v5, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    invoke-static/range {v0 .. v5}, Lme/grantland/widget/AutofitHelper;->autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFIF)V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    .line 502
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    .line 503
    .local v7, "textSize":F
    cmpl-float v0, v7, v6

    if-eqz v0, :cond_0

    .line 504
    invoke-direct {p0, v7, v6}, Lme/grantland/widget/AutofitHelper;->sendTextSizeChange(FF)V

    .line 506
    :cond_0
    return-void
.end method

.method private static autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFIF)V
    .locals 14
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "minTextSize"    # F
    .param p3, "maxTextSize"    # F
    .param p4, "maxLines"    # I
    .param p5, "precision"    # F

    .prologue
    .line 93
    if-lez p4, :cond_0

    const v2, 0x7fffffff

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v13, v2, v3

    .line 99
    .local v13, "targetWidth":I
    if-lez v13, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 104
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v10

    .line 105
    .local v10, "method":Landroid/text/method/TransformationMethod;
    if-eqz v10, :cond_2

    .line 106
    invoke-interface {v10, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 109
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 110
    .local v9, "context":Landroid/content/Context;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 113
    .local v11, "r":Landroid/content/res/Resources;
    move/from16 v12, p3

    .line 114
    .local v12, "size":F
    move v6, v12

    .line 115
    .local v6, "high":F
    const/4 v5, 0x0

    .line 117
    .local v5, "low":F
    if-eqz v9, :cond_3

    .line 118
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 120
    :cond_3
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 122
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 123
    invoke-virtual {p1, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 125
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    int-to-float v3, v13

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    :cond_4
    int-to-float v2, v13

    invoke-static {v1, p1, v12, v2, v8}, Lme/grantland/widget/AutofitHelper;->getLineCount(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFLandroid/util/DisplayMetrics;)I

    move-result v2

    move/from16 v0, p4

    if-le v2, v0, :cond_6

    .line 127
    :cond_5
    int-to-float v3, v13

    move-object v2, p1

    move/from16 v4, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result v12

    .line 131
    :cond_6
    cmpg-float v2, v12, p2

    if-gez v2, :cond_7

    .line 132
    move/from16 v12, p2

    .line 135
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public static create(Landroid/widget/TextView;)Lme/grantland/widget/AutofitHelper;
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;
    .locals 8
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    .line 62
    new-instance v1, Lme/grantland/widget/AutofitHelper;

    invoke-direct {v1, p0}, Lme/grantland/widget/AutofitHelper;-><init>(Landroid/widget/TextView;)V

    .line 63
    .local v1, "helper":Lme/grantland/widget/AutofitHelper;
    const/4 v4, 0x1

    .line 64
    .local v4, "sizeToFit":Z
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v1}, Lme/grantland/widget/AutofitHelper;->getMinTextSize()F

    move-result v6

    float-to-int v2, v6

    .line 67
    .local v2, "minTextSize":I
    invoke-virtual {v1}, Lme/grantland/widget/AutofitHelper;->getPrecision()F

    move-result v3

    .line 69
    .local v3, "precision":F
    sget-object v6, Lme/grantland/widget/R$styleable;->AutofitTextView:[I

    invoke-virtual {v0, p1, v6, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 74
    .local v5, "ta":Landroid/content/res/TypedArray;
    sget v6, Lme/grantland/widget/R$styleable;->AutofitTextView_sizeToFit:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 75
    sget v6, Lme/grantland/widget/R$styleable;->AutofitTextView_minTextSize:I

    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 77
    sget v6, Lme/grantland/widget/R$styleable;->AutofitTextView_precision:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 78
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    int-to-float v6, v2

    invoke-virtual {v1, v7, v6}, Lme/grantland/widget/AutofitHelper;->setMinTextSize(IF)Lme/grantland/widget/AutofitHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Lme/grantland/widget/AutofitHelper;->setPrecision(F)Lme/grantland/widget/AutofitHelper;

    .line 83
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "minTextSize":I
    .end local v3    # "precision":F
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {v1, v4}, Lme/grantland/widget/AutofitHelper;->setEnabled(Z)Lme/grantland/widget/AutofitHelper;

    .line 85
    return-object v1
.end method

.method private static getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F
    .locals 14
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "targetWidth"    # F
    .param p3, "maxLines"    # I
    .param p4, "low"    # F
    .param p5, "high"    # F
    .param p6, "precision"    # F
    .param p7, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 144
    add-float v2, p4, p5

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    .line 145
    .local v13, "mid":F
    const/4 v11, 0x1

    .line 146
    .local v11, "lineCount":I
    const/4 v1, 0x0

    .line 148
    .local v1, "layout":Landroid/text/StaticLayout;
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-static {v2, v13, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 151
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    .line 152
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1    # "layout":Landroid/text/StaticLayout;
    move/from16 v0, p2

    float-to-int v4, v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 154
    .restart local v1    # "layout":Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    .line 160
    :cond_0
    move/from16 v0, p3

    if-le v11, v0, :cond_3

    .line 162
    sub-float v2, p5, p4

    cmpg-float v2, v2, p6

    if-gez v2, :cond_2

    .line 193
    .end local p4    # "low":F
    :cond_1
    :goto_0
    return p4

    .restart local p4    # "low":F
    :cond_2
    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move v7, v13

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 165
    invoke-static/range {v2 .. v9}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result p4

    goto :goto_0

    .line 168
    :cond_3
    move/from16 v0, p3

    if-ge v11, v0, :cond_4

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v13

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 169
    invoke-static/range {v2 .. v9}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result p4

    goto :goto_0

    .line 173
    :cond_4
    const/4 v12, 0x0

    .line 174
    .local v12, "maxLineWidth":F
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 175
    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, p0, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v12

    .line 184
    :cond_5
    sub-float v2, p5, p4

    cmpg-float v2, v2, p6

    if-ltz v2, :cond_1

    .line 186
    cmpl-float v2, v12, p2

    if-lez v2, :cond_8

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move v7, v13

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 187
    invoke-static/range {v2 .. v9}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result p4

    goto :goto_0

    .line 177
    :cond_6
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 178
    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    cmpl-float v2, v2, v12

    if-lez v2, :cond_7

    .line 179
    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v12

    .line 177
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 189
    .end local v10    # "i":I
    :cond_8
    cmpg-float v2, v12, p2

    if-gez v2, :cond_9

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v13

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 190
    invoke-static/range {v2 .. v9}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result p4

    goto :goto_0

    :cond_9
    move/from16 p4, v13

    .line 193
    goto :goto_0
.end method

.method private static getLineCount(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFLandroid/util/DisplayMetrics;)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "size"    # F
    .param p3, "width"    # F
    .param p4, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 200
    const/4 v1, 0x0

    invoke-static {v1, p2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 202
    new-instance v0, Landroid/text/StaticLayout;

    float-to-int v3, p3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 204
    .local v0, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    return v1
.end method

.method private static getMaxLines(Landroid/widget/TextView;)I
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 208
    const/4 v0, -0x1

    .line 210
    .local v0, "maxLines":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 211
    .local v1, "method":Landroid/text/method/TransformationMethod;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v2, :cond_1

    .line 212
    const/4 v0, 0x1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    goto :goto_0
.end method

.method private sendTextSizeChange(FF)V
    .locals 3
    .param p1, "textSize"    # F
    .param p2, "oldTextSize"    # F

    .prologue
    .line 509
    iget-object v2, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 516
    :cond_0
    return-void

    .line 513
    :cond_1
    iget-object v2, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;

    .line 514
    .local v1, "listener":Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;
    invoke-interface {v1, p1, p2}, Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;->onTextSizeChange(FF)V

    goto :goto_0
.end method

.method private setRawMaxTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 394
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 395
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    .line 397
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    .line 399
    :cond_0
    return-void
.end method

.method private setRawMinTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 346
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 347
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    .line 349
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    .line 351
    :cond_0
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 489
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 490
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    .line 492
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnTextSizeChangeListener(Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;)Lme/grantland/widget/AutofitHelper;
    .locals 1
    .param p1, "listener"    # Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;

    .prologue
    .line 264
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 267
    :cond_0
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-object p0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    return v0
.end method

.method public getPrecision()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    return v0
.end method

.method public setEnabled(Z)Lme/grantland/widget/AutofitHelper;
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 431
    iget-boolean v0, p0, Lme/grantland/widget/AutofitHelper;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 432
    iput-boolean p1, p0, Lme/grantland/widget/AutofitHelper;->mEnabled:Z

    .line 434
    if-eqz p1, :cond_1

    .line 435
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 436
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 438
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    .line 446
    :cond_0
    :goto_0
    return-object p0

    .line 440
    :cond_1
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 441
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 443
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public setMaxLines(I)Lme/grantland/widget/AutofitHelper;
    .locals 1
    .param p1, "lines"    # I

    .prologue
    .line 412
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    if-eq v0, p1, :cond_0

    .line 413
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    .line 415
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    .line 417
    :cond_0
    return-object p0
.end method

.method public setMaxTextSize(F)Lme/grantland/widget/AutofitHelper;
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 369
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxTextSize(IF)Lme/grantland/widget/AutofitHelper;

    move-result-object v0

    return-object v0
.end method

.method public setMaxTextSize(IF)Lme/grantland/widget/AutofitHelper;
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 382
    iget-object v2, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 383
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 385
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 389
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Lme/grantland/widget/AutofitHelper;->setRawMaxTextSize(F)V

    .line 390
    return-object p0
.end method

.method public setMinTextSize(IF)Lme/grantland/widget/AutofitHelper;
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 334
    iget-object v2, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 335
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 337
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 341
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Lme/grantland/widget/AutofitHelper;->setRawMinTextSize(F)V

    .line 342
    return-object p0
.end method

.method public setPrecision(F)Lme/grantland/widget/AutofitHelper;
    .locals 1
    .param p1, "precision"    # F

    .prologue
    .line 297
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 298
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    .line 300
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    .line 302
    :cond_0
    return-object p0
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 473
    iget-boolean v2, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    if-eqz v2, :cond_0

    .line 486
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v2, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 481
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 485
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Lme/grantland/widget/AutofitHelper;->setRawTextSize(F)V

    goto :goto_0
.end method
