.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;
.super Ljava/lang/Object;
.source "MWCustomerSecuritySocialProvidersMarketResponse.java"


# instance fields
.field private market:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "market"
    .end annotation
.end field

.field private providerDetails:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersDetailsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "providers"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderDetails()[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersDetailsResponse;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;->providerDetails:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersDetailsResponse;

    return-object v0
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;->market:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setProviderDetails([Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersDetailsResponse;)V
    .locals 0
    .param p1, "providerDetails"    # [Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersDetailsResponse;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;->providerDetails:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersDetailsResponse;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecuritySocialProvidersMarketResponse{market=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;->market:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", providerDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersMarketResponse;->providerDetails:[Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecuritySocialProvidersDetailsResponse;

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    return-object v0
.end method
