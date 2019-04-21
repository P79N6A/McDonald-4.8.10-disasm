.class public Lcom/mcdonalds/app/home/dashboard/SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private final mSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 11
    iput p1, p0, Lcom/mcdonalds/app/home/dashboard/SpacesItemDecoration;->mSpace:I

    .line 12
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const-string v0, "getItemOffsets"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget v0, p0, Lcom/mcdonalds/app/home/dashboard/SpacesItemDecoration;->mSpace:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 17
    iget v0, p0, Lcom/mcdonalds/app/home/dashboard/SpacesItemDecoration;->mSpace:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 18
    iget v0, p0, Lcom/mcdonalds/app/home/dashboard/SpacesItemDecoration;->mSpace:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget v0, p0, Lcom/mcdonalds/app/home/dashboard/SpacesItemDecoration;->mSpace:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 23
    :cond_0
    return-void
.end method
