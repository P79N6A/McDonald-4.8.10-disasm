.class Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;
.super Ljava/lang/Object;
.source "ReceiptListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

.field final synthetic val$order:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

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

    .line 106
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v0, v2, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 108
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "order_data_passer_key"

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-class v2, Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;

    sget-object v3, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
