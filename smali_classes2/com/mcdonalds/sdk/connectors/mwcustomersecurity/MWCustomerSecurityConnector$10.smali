.class Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;
.super Ljava/lang/Object;
.source "MWCustomerSecurityConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->verifyAccount(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountVerificationSMSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

.field final synthetic val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$verificationCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$verificationCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountVerificationSMSResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountVerificationSMSResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 857
    if-eqz p1, :cond_1

    .line 858
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountVerificationSMSResponse;->getStatusCode()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 882
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 885
    :cond_1
    :goto_1
    return-void

    .line 858
    :sswitch_0
    const-string v4, "6011"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "6802"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "6911"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "414"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 860
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1, p2, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1

    .line 863
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$2200()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1

    .line 866
    :pswitch_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$2300()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1

    .line 871
    :pswitch_3
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$1500(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$1502(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Z)Z

    .line 873
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto/16 :goto_1

    .line 874
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$1600(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$1602(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Z)Z

    .line 876
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$verificationCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$2000(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto/16 :goto_1

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$verificationCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$2100(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto/16 :goto_1

    .line 858
    nop

    :sswitch_data_0
    .sparse-switch
        0xc1b2 -> :sswitch_4
        0xc957 -> :sswitch_3
        0x19465a -> :sswitch_0
        0x196444 -> :sswitch_1
        0x196823 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 854
    check-cast p1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountVerificationSMSResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$10;->onResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountVerificationSMSResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
