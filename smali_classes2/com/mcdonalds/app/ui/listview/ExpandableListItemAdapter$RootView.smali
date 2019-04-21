.class Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;
.super Landroid/widget/LinearLayout;
.source "ExpandableListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootView"
.end annotation


# instance fields
.field private mContentViewGroup:Landroid/view/ViewGroup;

.field private mTitleViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 429
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->init()V

    .line 430
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const-string v0, "init"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->setOrientation(I)V

    .line 435
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->mTitleViewGroup:Landroid/view/ViewGroup;

    .line 436
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->mTitleViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 437
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->mTitleViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->addView(Landroid/view/View;)V

    .line 439
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->mContentViewGroup:Landroid/view/ViewGroup;

    .line 440
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->mContentViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 441
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->mContentViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;->addView(Landroid/view/View;)V

    .line 442
    return-void
.end method
