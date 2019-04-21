.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;
.super Ljava/lang/Object;
.source "MWCustomerSecurityConfigServiceResponse.java"


# instance fields
.field configuration:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Configuration"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfiguration()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;->configuration:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    return-object v0
.end method

.method public setConfiguration(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;)V
    .locals 0
    .param p1, "configuration"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;->configuration:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityConfigServiceResponse{configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceResponse;->configuration:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityConfigServiceConfigurationResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
