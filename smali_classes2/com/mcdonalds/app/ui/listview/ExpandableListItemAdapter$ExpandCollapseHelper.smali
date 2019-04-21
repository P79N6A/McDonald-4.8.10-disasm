.class Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;
.super Ljava/lang/Object;
.source "ExpandableListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpandCollapseHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;Landroid/widget/AbsListView;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.listview.ExpandableListItemAdapter$ExpandCollapseHelper"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    invoke-static {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;->findDirectChild(Landroid/view/View;Landroid/widget/AbsListView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static animateCollapsing(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ui.listview.ExpandableListItemAdapter$ExpandCollapseHelper"

    const-string v4, "animateCollapsing"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 510
    .local v1, "origHeight":I
    invoke-static {p0, v1, v6}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;->createHeightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 511
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 518
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 519
    return-void
.end method

.method public static animateExpanding(Landroid/view/View;Landroid/widget/AbsListView;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.ui.listview.ExpandableListItemAdapter$ExpandCollapseHelper"

    const-string v6, "animateExpanding"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v9

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 525
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 526
    .local v3, "widthSpec":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 527
    .local v1, "heightSpec":I
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 529
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {p0, v9, v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;->createHeightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 530
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;

    invoke-direct {v4, p1, p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;-><init>(Landroid/widget/AbsListView;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 546
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 547
    return-void
.end method

.method public static createHeightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ui.listview.ExpandableListItemAdapter$ExpandCollapseHelper"

    const-string v3, "createHeightAnimator"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    new-array v1, v8, [I

    aput p1, v1, v6

    aput p2, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 561
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$3;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 572
    return-object v0
.end method

.method private static findDirectChild(Landroid/view/View;Landroid/widget/AbsListView;)Landroid/view/View;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ui.listview.ExpandableListItemAdapter$ExpandCollapseHelper"

    const-string v4, "findDirectChild"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    move-object v1, p0

    .line 551
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 552
    .local v0, "parent":Landroid/view/View;
    :goto_0
    if-eq v0, p1, :cond_0

    .line 553
    move-object v1, v0

    .line 554
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0

    .line 556
    :cond_0
    return-object v1
.end method
