.class Lcom/mcdonalds/app/widget/AutoResizeTextView$1;
.super Ljava/lang/Object;
.source "AutoResizeTextView.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/AutoResizeTextView$SizeTester;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final textRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/widget/AutoResizeTextView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/widget/AutoResizeTextView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public onTestSize(ILandroid/graphics/RectF;)I
    .locals 12
    .param p1, "suggestedSize"    # I
    .param p2, "availableSPace"    # Landroid/graphics/RectF;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const-string v2, "onTestSize"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-static {v2}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->access$000(Lcom/mcdonalds/app/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v11

    .line 72
    .local v11, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v11, :cond_0

    .line 73
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-interface {v11, v2, v3}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getMaxLines()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v10, 0x1

    .line 78
    .local v10, "singleLine":Z
    :goto_1
    if-eqz v10, :cond_2

    .line 79
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-static {v3}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->access$000(Lcom/mcdonalds/app/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 80
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-static {v3}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->access$000(Lcom/mcdonalds/app/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 93
    :goto_2
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 94
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    const/4 v2, -0x1

    .line 98
    :goto_3
    return v2

    .line 75
    .end local v1    # "text":Ljava/lang/String;
    .end local v10    # "singleLine":Z
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 77
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 82
    .restart local v10    # "singleLine":Z
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-static {v2}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->access$000(Lcom/mcdonalds/app/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-static {v3}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->access$100(Lcom/mcdonalds/app/widget/AutoResizeTextView;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v5, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-static {v5}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->access$200(Lcom/mcdonalds/app/widget/AutoResizeTextView;)F

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-static {v6}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->access$300(Lcom/mcdonalds/app/widget/AutoResizeTextView;)F

    move-result v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 84
    .local v0, "layout":Landroid/text/StaticLayout;
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getMaxLines()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->this$0:Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->getMaxLines()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 85
    const/4 v2, 0x1

    goto :goto_3

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 87
    const/4 v9, -0x1

    .line 88
    .local v9, "maxWidth":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v8, v2, :cond_5

    .line 89
    int-to-float v2, v9

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v3

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v4

    sub-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 90
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    float-to-int v3, v3

    sub-int v9, v2, v3

    .line 88
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 91
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/widget/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    int-to-float v3, v9

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 98
    .end local v0    # "layout":Landroid/text/StaticLayout;
    .end local v8    # "i":I
    .end local v9    # "maxWidth":I
    :cond_6
    const/4 v2, 0x1

    goto :goto_3
.end method
