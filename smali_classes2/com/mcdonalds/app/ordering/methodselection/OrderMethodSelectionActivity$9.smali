.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;
.super Ljava/lang/Object;
.source "OrderMethodSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$400(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9$1;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getStoreForDelivery(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$400(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9$2;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method
