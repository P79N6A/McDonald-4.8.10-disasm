.class Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;
.super Ljava/lang/Object;
.source "MWCustomerSecurityConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getVersioningService(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

.field final synthetic val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 14
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 253
    if-eqz p1, :cond_5

    .line 254
    new-instance v6, Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;->getConfiguration()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 255
    .local v6, "locale":Ljava/util/Locale;
    const/4 v8, 0x1

    invoke-static {v8, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 256
    .local v2, "dateFormat":Ljava/text/DateFormat;
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 258
    :try_start_0
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v1

    .line 259
    .local v1, "acceptedTncDate":Ljava/util/Date;
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    .line 260
    .local v0, "acceptedPPDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;->getConfiguration()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;->getTncMobileDate()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v5

    .line 261
    .local v5, "latestTncDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;->getConfiguration()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;->getPpMobileDate()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v4

    .line 263
    .local v4, "latestPPDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 264
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldUpdateTermsAndCondition(Z)V

    .line 269
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 270
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldUpdatePrivacyPolicy(Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "acceptedPPDate":Ljava/util/Date;
    .end local v1    # "acceptedTncDate":Ljava/util/Date;
    .end local v4    # "latestPPDate":Ljava/util/Date;
    .end local v5    # "latestTncDate":Ljava/util/Date;
    :goto_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;->getConfiguration()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;->getVerificationType()Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "verificationType":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 290
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    sget-object v9, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setVerificationType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;)V

    .line 293
    :goto_3
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v9, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailVerified()Z

    move-result v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSmsVerified()Z

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;-><init>(ZZZZ)V

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setCustomerLoginInfo(Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;)V

    .line 295
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;->getConfiguration()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;->getAccountDeleteType()Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_1
    :goto_4
    packed-switch v8, :pswitch_data_1

    .line 303
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    sget-object v9, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setAccountDeleteType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;)V

    .line 306
    :goto_5
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 311
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "verificationType":Ljava/lang/String;
    :goto_6
    return-void

    .line 266
    .restart local v0    # "acceptedPPDate":Ljava/util/Date;
    .restart local v1    # "acceptedTncDate":Ljava/util/Date;
    .restart local v2    # "dateFormat":Ljava/text/DateFormat;
    .restart local v4    # "latestPPDate":Ljava/util/Date;
    .restart local v5    # "latestTncDate":Ljava/util/Date;
    .restart local v6    # "locale":Ljava/util/Locale;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldUpdateTermsAndCondition(Z)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 274
    .end local v0    # "acceptedPPDate":Ljava/util/Date;
    .end local v1    # "acceptedTncDate":Ljava/util/Date;
    .end local v4    # "latestPPDate":Ljava/util/Date;
    .end local v5    # "latestTncDate":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 272
    .end local v3    # "e":Ljava/text/ParseException;
    .restart local v0    # "acceptedPPDate":Ljava/util/Date;
    .restart local v1    # "acceptedTncDate":Ljava/util/Date;
    .restart local v4    # "latestPPDate":Ljava/util/Date;
    .restart local v5    # "latestTncDate":Ljava/util/Date;
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldUpdatePrivacyPolicy(Z)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 278
    .end local v0    # "acceptedPPDate":Ljava/util/Date;
    .end local v1    # "acceptedTncDate":Ljava/util/Date;
    .end local v4    # "latestPPDate":Ljava/util/Date;
    .end local v5    # "latestTncDate":Ljava/util/Date;
    :cond_4
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldUpdateTermsAndCondition(Z)V

    .line 279
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldUpdatePrivacyPolicy(Z)V

    goto :goto_1

    .line 282
    .restart local v7    # "verificationType":Ljava/lang/String;
    :sswitch_0
    const-string v9, "sms"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_1
    const-string v9, "email"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    .line 284
    :pswitch_0
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    sget-object v9, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setVerificationType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;)V

    goto :goto_3

    .line 287
    :pswitch_1
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    sget-object v9, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->EMAIL:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setVerificationType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;)V

    goto :goto_3

    .line 295
    :sswitch_2
    const-string v10, "delete"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x0

    goto :goto_4

    :sswitch_3
    const-string v10, "disable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    goto :goto_4

    .line 297
    :pswitch_2
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    sget-object v9, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->DELETE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setAccountDeleteType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;)V

    goto :goto_5

    .line 300
    :pswitch_3
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    sget-object v9, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->DEACTIVATE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setAccountDeleteType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;)V

    goto :goto_5

    .line 309
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "verificationType":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$600()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9, v10, v11}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_6

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x1bd59 -> :sswitch_0
        0x5c24b9c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 295
    :sswitch_data_1
    .sparse-switch
        -0x4f997a55 -> :sswitch_2
        0x639e22e8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$2;->onResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
