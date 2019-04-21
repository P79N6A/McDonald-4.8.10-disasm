.class Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;
.super Ljava/lang/Object;
.source "PaymentProviderFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->updatePayment(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;)V
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 192
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 193
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 194
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 197
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    .line 198
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 200
    .local v0, "builder":Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;
    if-eqz p3, :cond_2

    .line 201
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    .line 206
    :goto_1
    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4$1;-><init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 203
    :cond_2
    const v1, 0x7f09033b

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    goto :goto_1
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

    .line 187
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
