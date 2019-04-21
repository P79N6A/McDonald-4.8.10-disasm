.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersResponse;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
.source "MWCustomerSecuritySocialProvidersResponse.java"


# instance fields
.field private socialProivders:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "socialProviders"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getSocialProviders()[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersResponse;->socialProivders:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;

    return-object v0
.end method

.method public setSocialProviders(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;)V
    .locals 1
    .param p1, "socialProviders"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersResponse;->socialProivders:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersResponse;->socialProivders:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecuritySocialProvidersResponse{socialProivders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersResponse;->socialProivders:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
