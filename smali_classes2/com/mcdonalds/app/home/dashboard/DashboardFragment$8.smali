.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$8;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->initializeRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$8;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, "getSpanSize"

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$8;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$300(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->getItemViewType(I)I

    move-result v1

    .line 624
    .local v1, "type":I
    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    move v0, v2

    .line 629
    .local v0, "isGrid":Z
    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method
