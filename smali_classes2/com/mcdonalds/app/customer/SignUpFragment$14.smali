.class Lcom/mcdonalds/app/customer/SignUpFragment$14;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignUpFragment;->onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

.field final synthetic val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignUpFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iput-object p3, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v1, "onResponse"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1155
    if-nez p3, :cond_5

    .line 1157
    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 1158
    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 1159
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 1161
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1162
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 1164
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSocialAccountLoginRegistered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1167
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$2300(Lcom/mcdonalds/app/customer/SignUpFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 1168
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$2400(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    :goto_0
    return-void

    .line 1170
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1171
    new-instance v1, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment$14;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    goto :goto_0

    .line 1198
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    .line 1199
    .local v0, "dataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedSocialNetworkId(I)V

    .line 1201
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 1202
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 1204
    :cond_4
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    const-class v2, Lcom/mcdonalds/app/MainActivity;

    const-string v3, "dashboard"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    .end local v0    # "dataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    :cond_5
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

    .line 1149
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/SignUpFragment$14;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
