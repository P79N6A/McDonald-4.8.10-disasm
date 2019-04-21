.class Lcom/mcdonalds/app/account/ResetPasswordFragment$1;
.super Ljava/lang/Object;
.source "ResetPasswordFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ResetPasswordFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/account/ResetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ResetPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ResetPasswordFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordFragment;

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

    .line 149
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v4, "onResponse"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object p2, v5, v2

    aput-object p3, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    if-eqz p3, :cond_0

    .line 155
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 156
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 178
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 161
    iget-object v4, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 163
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_1

    .line 164
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v1, "arguments":Landroid/os/Bundle;
    const-string v4, "validation_method"

    iget-object v5, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordFragment;

    .line 167
    invoke-static {v5}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->access$000(Lcom/mcdonalds/app/account/ResetPasswordFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    :goto_1
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    const-string v3, "validation_method_value"

    iget-object v2, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordFragment;

    .line 171
    invoke-static {v2}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->access$100(Lcom/mcdonalds/app/account/ResetPasswordFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->access$000(Lcom/mcdonalds/app/account/ResetPasswordFragment;)Ljava/lang/String;

    move-result-object v2

    .line 169
    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordFragment;

    const-class v3, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    const-string v4, "reset_password_confirmation"

    invoke-virtual {v2, v3, v4, v1}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 176
    .end local v1    # "arguments":Landroid/os/Bundle;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Signed-out"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    goto :goto_0

    .restart local v1    # "arguments":Landroid/os/Bundle;
    :cond_2
    move v2, v3

    .line 167
    goto :goto_1

    .line 171
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/account/ResetPasswordFragment$1;->this$0:Lcom/mcdonalds/app/account/ResetPasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ResetPasswordFragment;->access$100(Lcom/mcdonalds/app/account/ResetPasswordFragment;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
