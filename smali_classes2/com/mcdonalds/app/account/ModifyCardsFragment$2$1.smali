.class Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;
.super Ljava/lang/Object;
.source "ModifyCardsFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ModifyCardsFragment$2;->onClick(Landroid/view/View;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$2;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyCardsFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/ModifyCardsFragment$2;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;->this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 124
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
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

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;->this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$000(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->shouldSaveCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;->this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$100(Lcom/mcdonalds/app/account/ModifyCardsFragment;Ljava/util/List;)V

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;->this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090a19

    .line 131
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1$1;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;)V

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
