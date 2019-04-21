.class Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;
.super Ljava/lang/Object;
.source "LiteChangePasswordFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->onSave()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

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

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 210
    if-nez p3, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$600(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$700(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 214
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$600(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPasswordChangeRequired(Z)V

    .line 215
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 206
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
