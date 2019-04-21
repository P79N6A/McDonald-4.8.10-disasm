.class final Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;
.super Ljava/lang/Object;
.source "ExpandableListItemAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;->animateExpanding(Landroid/view/View;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final listViewBottomPadding:I

.field final listViewHeight:I

.field final v:Landroid/view/View;

.field final synthetic val$listView:Landroid/widget/AbsListView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 530
    iput-object p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->val$listView:Landroid/widget/AbsListView;

    iput-object p2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->val$listView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->listViewHeight:I

    .line 532
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->val$listView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->listViewBottomPadding:I

    .line 533
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->val$listView:Landroid/widget/AbsListView;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;->access$200(Landroid/view/View;Landroid/widget/AbsListView;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->v:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v5, 0x0

    const-string v2, "onAnimationUpdate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    iget-object v2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 538
    .local v0, "bottom":I
    iget v2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->listViewHeight:I

    if-le v0, v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 540
    .local v1, "top":I
    if-lez v1, :cond_0

    .line 541
    iget-object v2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->val$listView:Landroid/widget/AbsListView;

    iget v3, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->listViewHeight:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper$2;->listViewBottomPadding:I

    add-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 544
    .end local v1    # "top":I
    :cond_0
    return-void
.end method
