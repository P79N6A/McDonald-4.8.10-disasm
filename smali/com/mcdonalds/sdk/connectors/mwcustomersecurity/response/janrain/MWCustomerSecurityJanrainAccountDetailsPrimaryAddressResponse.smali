.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;
.super Ljava/lang/Object;
.source "MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field addressCountry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field mobilePhone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile"
    .end annotation
.end field

.field zipCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zip"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressCountry"    # Ljava/lang/String;

    .prologue
    .line 20
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->addressCountry:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobilePhone"    # Ljava/lang/String;

    .prologue
    .line 36
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->mobilePhone:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipCode"    # Ljava/lang/String;

    .prologue
    .line 28
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->zipCode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse<TT;>;"
    const/16 v2, 0x27

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse{addressCountry=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->addressCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zipCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->zipCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mobilePhone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
