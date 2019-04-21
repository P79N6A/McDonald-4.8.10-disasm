.class Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;
.super Ljava/lang/Object;
.source "LiteEmailVerificationFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->verifyEmail()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 185
    if-nez p3, :cond_0

    .line 186
    const-string v0, "Verified Email Successfully."

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    const v2, 0x7f09045d

    .line 189
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    const v2, 0x7f09046a

    .line 191
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    const v2, 0x7f0905d4

    .line 192
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-static {v0, p3}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 180
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$2;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
