.class Lcom/mcdonalds/app/widget/HeaderGridView$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/widget/HeaderGridView;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/widget/HeaderGridView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/mcdonalds/app/widget/HeaderGridView;

    .line 199
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 200
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-string v1, "onMeasure"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/mcdonalds/app/widget/HeaderGridView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/HeaderGridView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/mcdonalds/app/widget/HeaderGridView;

    .line 205
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/HeaderGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/mcdonalds/app/widget/HeaderGridView;

    .line 206
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/HeaderGridView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 208
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 207
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 210
    return-void
.end method
