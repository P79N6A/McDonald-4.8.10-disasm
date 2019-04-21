.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;
.super Ljava/lang/Object;
.source "OrderMethodSelectionPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getStoreForDelivery(Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    if-nez p3, :cond_3

    .line 302
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$302(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 303
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$300(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setExpectedDeliveryTimeReference(Ljava/util/Date;)V

    .line 304
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$300(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isStoreOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$400(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$500(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090338

    .line 307
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0901cb

    .line 308
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4$1;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;)V

    .line 309
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$402(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Z)Z

    .line 321
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->hideActivityIndicator()V

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$300(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$200(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 324
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->hideActivityIndicator()V

    .line 325
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, v3, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 332
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->hideActivityIndicator()V

    .line 333
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, v3, v3, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
