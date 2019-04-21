.class Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;
.super Ljava/lang/Object;
.source "LiteForgotPasswordFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->sendForgotPasswordEmail()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

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

    .line 189
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 194
    if-nez p3, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    const v2, 0x7f090465

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    const v3, 0x7f09046f

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->access$300(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->access$300(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
