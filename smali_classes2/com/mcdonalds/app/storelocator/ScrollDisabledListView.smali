.class public Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;
.super Landroid/widget/ListView;
.source "ScrollDisabledListView.java"


# instance fields
.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const-string v2, "dispatchTouchEvent"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 35
    .local v0, "actionMasked":I
    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->mPosition:I

    .line 38
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 46
    if-ne v0, v1, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->pointToPosition(II)I

    move-result v2

    iget v3, p0, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->mPosition:I

    if-ne v2, v3, :cond_3

    .line 49
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->setPressed(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->invalidate()V

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 2

    .prologue
    const-string v0, "forceLayout"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/ScrollDisabledListView;->layoutChildren()V

    .line 29
    return-void
.end method
