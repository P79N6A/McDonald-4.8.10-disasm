.class Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;
.super Ljava/lang/Object;
.source "SignInExistingAccountFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

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
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 167
    if-nez p3, :cond_0

    .line 168
    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 169
    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->access$000(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 171
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->access$100(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->access$200(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->access$300(Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;)Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    const v2, 0x7f0901f8

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->this$0:Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->addLoginMethod(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 190
    :goto_0
    return-void

    .line 177
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

    .line 162
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/SignInExistingAccountFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
