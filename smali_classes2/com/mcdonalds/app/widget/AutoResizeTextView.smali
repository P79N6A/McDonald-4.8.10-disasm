.class public Lcom/mcdonalds/app/widget/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;
    }
.end annotation


# instance fields
.field private final _availableSpaceRect:Landroid/graphics/RectF;

.field private _initialized:Z

.field private _maxLines:I

.field private _maxTextSize:F

.field private _minTextSize:F

.field private _paint:Landroid/text/TextPaint;

.field private final _sizeTester:Lcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;

.field private _spacingAdd:F

.field private _spacingMult:F

.field private _widthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mcdonalds/app/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_availableSpaceRect:Landroid/graphics/RectF;

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_spacingMult:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_spacingAdd:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_initialized:Z

    .line 56
    const/4 v0, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_minTextSize:F

    .line 57
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxTextSize:F

    .line 58
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_paint:Landroid/text/TextPaint;

    .line 59
    iget v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxLines:I

    if-nez v0, :cond_0

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxLines:I

    .line 63
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;-><init>(Lcom/mcdonalds/app/widget/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_sizeTester:Lcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_initialized:Z

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/widget/AutoResizeTextView;)Landroid/text/TextPaint;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/AutoResizeTextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.AutoResizeTextView"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_paint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/widget/AutoResizeTextView;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/AutoResizeTextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.AutoResizeTextView"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_widthLimit:I

    return v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/widget/AutoResizeTextView;)F
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/AutoResizeTextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.AutoResizeTextView"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_spacingMult:F

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/widget/AutoResizeTextView;)F
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/AutoResizeTextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.AutoResizeTextView"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_spacingAdd:F

    return v0
.end method

.method private adjustTextSize()V
    .locals 4

    .prologue
    const-string v2, "adjustTextSize"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-boolean v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_initialized:Z

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_minTextSize:F

    float-to-int v1, v2

    .line 196
    .local v1, "startSize":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 197
    .local v0, "heightLimit":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_widthLimit:I

    .line 198
    iget v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_widthLimit:I

    if-lez v2, :cond_0

    .line 200
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_paint:Landroid/text/TextPaint;

    .line 201
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_availableSpaceRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_widthLimit:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 202
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_availableSpaceRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 203
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->superSetTextSize(I)V

    goto :goto_0
.end method

.method private binarySearch(IILcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "sizeTester"    # Lcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;
    .param p4, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    const-string v5, "binarySearch"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    move v1, p1

    .local v1, "lastBest":I
    move v2, p1

    .local v2, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 215
    .local v0, "hi":I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 216
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 217
    .local v3, "mid":I
    invoke-interface {p3, v3, p4}, Lcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;->onTestSize(ILandroid/graphics/RectF;)I

    move-result v4

    .line 218
    .local v4, "midValCmp":I
    if-gez v4, :cond_0

    .line 219
    move v1, v2

    .line 220
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 221
    :cond_0
    if-lez v4, :cond_2

    .line 222
    add-int/lit8 v0, v3, -0x1

    .line 223
    move v1, v0

    goto :goto_0

    .end local v3    # "mid":I
    .end local v4    # "midValCmp":I
    :cond_1
    move v3, v1

    .line 228
    :cond_2
    return v3
.end method

.method private superSetTextSize(I)V
    .locals 5
    .param p1, "startSize"    # I

    .prologue
    const/4 v4, 0x0

    const-string v1, "superSetTextSize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget v1, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxTextSize:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_sizeTester:Lcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;

    iget-object v3, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_availableSpaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->binarySearch(IILcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v0

    .line 210
    .local v0, "textSize":I
    int-to-float v1, v0

    invoke-super {p0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    return-void
.end method


# virtual methods
.method public getMaxLines()I
    .locals 2

    .prologue
    const-string v0, "getMaxLines"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxLines:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldwidth"    # I
    .param p4, "oldheight"    # I

    .prologue
    const-string v0, "onSizeChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 240
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 242
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const-string v0, "onTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 234
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 235
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 4
    .param p1, "allCaps"    # Z

    .prologue
    const-string v0, "setAllCaps"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 107
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 108
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 4
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    const-string v0, "setLineSpacing"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 171
    iput p2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_spacingMult:F

    .line 172
    iput p1, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_spacingAdd:F

    .line 173
    return-void
.end method

.method public setLines(I)V
    .locals 4
    .param p1, "lines"    # I

    .prologue
    const-string v0, "setLines"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 153
    iput p1, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxLines:I

    .line 154
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 155
    return-void
.end method

.method public setMaxLines(I)V
    .locals 4
    .param p1, "maxlines"    # I

    .prologue
    const-string v0, "setMaxLines"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 125
    iput p1, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxLines:I

    .line 126
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 127
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 4
    .param p1, "minTextSize"    # F

    .prologue
    const-string v0, "setMinTextSize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iput p1, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_minTextSize:F

    .line 182
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 183
    return-void
.end method

.method public setSingleLine()V
    .locals 2

    .prologue
    const-string v0, "setSingleLine"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxLines:I

    .line 138
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 139
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 5
    .param p1, "singleLine"    # Z

    .prologue
    const/4 v4, 0x1

    const-string v0, "setSingleLine"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iput v4, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxLines:I

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 148
    return-void

    .line 146
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxLines:I

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 4
    .param p1, "size"    # F

    .prologue
    const-string v0, "setTextSize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iput p1, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxTextSize:F

    .line 119
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 120
    return-void
.end method

.method public setTextSize(IF)V
    .locals 6
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    const-string v2, "setTextSize"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 164
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView;->_maxTextSize:F

    .line 165
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 166
    return-void

    .line 163
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    const-string v0, "setTypeface"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->adjustTextSize()V

    .line 114
    return-void
.end method
