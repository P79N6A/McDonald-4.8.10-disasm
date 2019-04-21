.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;
.super Ljava/lang/Object;
.source "MWCustomerSecurityAccountNativeResponse.java"


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
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accessToken"
    .end annotation
.end field

.field private details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refreshToken"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private statusCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field

.field private statusDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusDescription"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->statusDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 48
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->accessToken:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDetails(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;)V
    .locals 0
    .param p1, "details"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    .prologue
    .line 64
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    .line 65
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 56
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->refreshToken:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 24
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->status:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 32
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->statusCode:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setStatusDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusDescription"    # Ljava/lang/String;

    .prologue
    .line 40
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->statusDescription:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse<TT;>;"
    const/16 v2, 0x27

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityAccountNativeResponse{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->statusDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
