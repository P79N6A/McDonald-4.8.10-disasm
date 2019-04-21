.class Lcom/mcdonalds/app/ordering/menu/RecentsFragment$1;
.super Ljava/lang/Object;
.source "RecentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$1;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$1;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mRecentOrders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$1;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mRecentOrders:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v1

    .line 75
    .local v1, "recentOrderListKey":I
    const-string v2, "ARG_RECENT_ORDERS_LIST_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$1;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/nutrition/RecentsListActivity;

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 78
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "recentOrderListKey":I
    :cond_0
    return-void
.end method
