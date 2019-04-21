.class public Lcom/mcdonalds/app/util/ActionBarView;
.super Landroid/view/View;
.source "ActionBarView.java"


# instance fields
.field private mExampleColor:I

.field private mExampleDimension:F

.field private mExampleDrawable:Landroid/graphics/drawable/Drawable;

.field private mExampleString:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleColor:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDimension:F

    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/util/ActionBarView;->init(Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleColor:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDimension:F

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mcdonalds/app/util/ActionBarView;->init(Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleColor:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDimension:F

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/app/util/ActionBarView;->init(Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "init"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/R$styleable;->ActionBarView:[I

    invoke-virtual {v1, p1, v2, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleString:Ljava/lang/String;

    .line 50
    iget v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleColor:I

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleColor:I

    .line 55
    iget v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDimension:F

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDimension:F

    .line 59
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextPaint:Landroid/text/TextPaint;

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFlags(I)V

    .line 70
    iget-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    invoke-direct {p0}, Lcom/mcdonalds/app/util/ActionBarView;->invalidateTextPaintAndMeasurements()V

    .line 74
    return-void
.end method

.method private invalidateTextPaintAndMeasurements()V
    .locals 3

    .prologue
    const-string v1, "invalidateTextPaintAndMeasurements"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDimension:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 78
    iget-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 79
    iget-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextWidth:F

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 82
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput v1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextHeight:F

    .line 83
    return-void
.end method


# virtual methods
.method public getExampleColor()I
    .locals 2

    .prologue
    const-string v0, "getExampleColor"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleColor:I

    return v0
.end method

.method public getExampleDimension()F
    .locals 2

    .prologue
    const-string v0, "getExampleDimension"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDimension:F

    return v0
.end method

.method public getExampleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const-string v0, "getExampleDrawable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExampleString()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getExampleString"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleString:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const-string v6, "onDraw"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ActionBarView;->getPaddingLeft()I

    move-result v3

    .line 92
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ActionBarView;->getPaddingTop()I

    move-result v5

    .line 93
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ActionBarView;->getPaddingRight()I

    move-result v4

    .line 94
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ActionBarView;->getPaddingBottom()I

    move-result v2

    .line 96
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ActionBarView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    sub-int v1, v6, v4

    .line 97
    .local v1, "contentWidth":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ActionBarView;->getHeight()I

    move-result v6

    sub-int/2addr v6, v5

    sub-int v0, v6, v2

    .line 100
    .local v0, "contentHeight":I
    iget-object v6, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleString:Ljava/lang/String;

    int-to-float v7, v3

    int-to-float v8, v1

    iget v9, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextWidth:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    add-float/2addr v7, v8

    int-to-float v8, v5

    int-to-float v9, v0

    iget v10, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextHeight:F

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/mcdonalds/app/util/ActionBarView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    iget-object v6, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 107
    iget-object v6, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDrawable:Landroid/graphics/drawable/Drawable;

    add-int v7, v3, v1

    add-int v8, v5, v0

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iget-object v6, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setExampleColor(I)V
    .locals 4
    .param p1, "exampleColor"    # I

    .prologue
    const-string v0, "setExampleColor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iput p1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleColor:I

    .line 150
    invoke-direct {p0}, Lcom/mcdonalds/app/util/ActionBarView;->invalidateTextPaintAndMeasurements()V

    .line 151
    return-void
.end method

.method public setExampleDimension(F)V
    .locals 4
    .param p1, "exampleDimension"    # F

    .prologue
    const-string v0, "setExampleDimension"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iput p1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDimension:F

    .line 170
    invoke-direct {p0}, Lcom/mcdonalds/app/util/ActionBarView;->invalidateTextPaintAndMeasurements()V

    .line 171
    return-void
.end method

.method public setExampleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "exampleDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const-string v0, "setExampleDrawable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iput-object p1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    return-void
.end method

.method public setExampleString(Ljava/lang/String;)V
    .locals 3
    .param p1, "exampleString"    # Ljava/lang/String;

    .prologue
    const-string v0, "setExampleString"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iput-object p1, p0, Lcom/mcdonalds/app/util/ActionBarView;->mExampleString:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/mcdonalds/app/util/ActionBarView;->invalidateTextPaintAndMeasurements()V

    .line 131
    return-void
.end method
