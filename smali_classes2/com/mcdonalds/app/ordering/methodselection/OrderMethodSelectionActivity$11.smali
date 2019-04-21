.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;
.super Ljava/lang/Object;
.source "OrderMethodSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->showAlertBox(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

.field final synthetic val$showPickup:Z


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    iput-boolean p2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;->val$showPickup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 294
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 295
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->clearProducts()V

    .line 297
    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;->val$showPickup:Z

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$500(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f110198

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 299
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupPickup()V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$500(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f110199

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 302
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupDelivery()V

    goto :goto_0
.end method
