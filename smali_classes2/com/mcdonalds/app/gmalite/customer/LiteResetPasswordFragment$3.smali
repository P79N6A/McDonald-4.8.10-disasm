.class Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;
.super Ljava/lang/Object;
.source "LiteResetPasswordFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->changePassword()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

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

    .line 148
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Void;
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

    .line 152
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 153
    if-nez p3, :cond_0

    .line 155
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    const v3, 0x7f090474

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    const v4, 0x7f09046e

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 157
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    new-instance v1, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 167
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
