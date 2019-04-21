.class Lcom/mcdonalds/app/account/ChangeEmailFragment$3;
.super Ljava/lang/Object;
.source "ChangeEmailFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ChangeEmailFragment;->onSave()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

.field final synthetic val$existingEmail:Ljava/lang/String;

.field final synthetic val$existingUserName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeEmailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeEmailFragment;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->val$existingEmail:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->val$existingUserName:Ljava/lang/String;

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
    const/4 v3, 0x0

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

    .line 270
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 276
    if-eqz p3, :cond_1

    .line 277
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->access$300(Lcom/mcdonalds/app/account/ChangeEmailFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->val$existingEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->access$300(Lcom/mcdonalds/app/account/ChangeEmailFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->val$existingUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNewUserName(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    .line 280
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 282
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v0, v3, v1, v3}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeEmailFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->access$400(Lcom/mcdonalds/app/account/ChangeEmailFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/account/ChangeEmailFragment$3$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment$3$1;-><init>(Lcom/mcdonalds/app/account/ChangeEmailFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logout(Lcom/mcdonalds/sdk/AsyncListener;)V

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

    .line 266
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
