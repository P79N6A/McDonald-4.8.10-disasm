.class Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;
.super Ljava/lang/Object;
.source "MWCustomerSecurityConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getRefreshTokenAccountVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

.field final synthetic val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field final synthetic val$smsListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$verificationCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 956
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$verificationCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$smsListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 959
    if-eqz p1, :cond_1

    .line 960
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 971
    :goto_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$102(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$202(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)Ljava/lang/String;

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$verificationCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 975
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$2400(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-ne v0, v1, :cond_3

    .line 976
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$smsListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 983
    :cond_2
    :goto_2
    return-void

    .line 960
    :sswitch_0
    const-string v2, "6011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "6908"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 962
    :pswitch_0
    const-string v0, "Refresh Token Success"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 965
    :pswitch_1
    const-string v0, "Unknown Refresh Token"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 968
    :pswitch_2
    const-string v0, "Unable To Refresh Token"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$2400(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->EMAIL:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    if-ne v0, v1, :cond_2

    .line 978
    const-string v0, "Resend Email Verification"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 981
    :cond_4
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$2400(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$verificationCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->val$smsListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->verifyAccount(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_2

    .line 960
    nop

    :sswitch_data_0
    .sparse-switch
        0xc1b2 -> :sswitch_1
        0x19465a -> :sswitch_0
        0x19680b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 956
    check-cast p1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$12;->onResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
