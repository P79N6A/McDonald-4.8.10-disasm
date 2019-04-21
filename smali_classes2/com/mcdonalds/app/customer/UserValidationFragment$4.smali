.class Lcom/mcdonalds/app/customer/UserValidationFragment$4;
.super Ljava/lang/Object;
.source "UserValidationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/UserValidationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/UserValidationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const-string v5, "onClick"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.register.useActivationCodeForAccountVerification"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 230
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    iget-object v6, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$200(Lcom/mcdonalds/app/customer/UserValidationFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$600(Lcom/mcdonalds/app/customer/UserValidationFragment;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "code":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    if-nez v5, :cond_1

    .line 234
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getAuthenticationParameters()Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    move-result-object v4

    .line 252
    .local v4, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 253
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 254
    .local v3, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v5, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;

    invoke-direct {v5, p0, v4}, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment$4;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    invoke-virtual {v3, v1, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivationCode(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 295
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v2, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "EVENT_NAME"

    const-string v6, "register"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v5, "RegComplete"

    const-string v6, "\u6ce8\u518c\u5b8c\u6210"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 299
    invoke-virtual {v5, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/RegisterDoneAction;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/RegisterDoneAction;-><init>()V

    .line 300
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    .line 301
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 302
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v5, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 303
    return-void

    .line 236
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v2    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .restart local v1    # "code":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 237
    .restart local v4    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setEmailAddress(Ljava/lang/String;)V

    .line 239
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 241
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    invoke-virtual {v4, v8}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 244
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setAllowSocialLoginWithoutEmail(Z)V

    .line 245
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 246
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 247
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-virtual {v5, v4}, Lcom/mcdonalds/app/customer/UserValidationFragment;->doSignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto/16 :goto_1

    .line 292
    .end local v1    # "code":Ljava/lang/String;
    .end local v4    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getAuthenticationParameters()Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    move-result-object v4

    .line 293
    .restart local v4    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-virtual {v5, v4}, Lcom/mcdonalds/app/customer/UserValidationFragment;->doSignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto/16 :goto_1
.end method
