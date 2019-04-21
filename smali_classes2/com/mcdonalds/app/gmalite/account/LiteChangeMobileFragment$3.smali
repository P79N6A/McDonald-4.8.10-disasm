.class Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;
.super Ljava/lang/Object;
.source "LiteChangeMobileFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->updatePhoneNumber()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

.field final synthetic val$currentPhone:Ljava/lang/String;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->val$mobile:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->val$currentPhone:Ljava/lang/String;

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
    const/4 v5, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 188
    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 189
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->val$mobile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-ne v2, v3, :cond_0

    .line 191
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->setDefaultPhoneNumberVerified(Z)V

    .line 192
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;)V

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 203
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.register.phoneNumberCountryCode"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mcdonalds/app/util/StringUtils;->getMobileNumberWithoutCountryCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "mobileNumberFormatted":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldShowCountryCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$300(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->val$currentPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_1
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$300(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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

    .line 184
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$3;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
