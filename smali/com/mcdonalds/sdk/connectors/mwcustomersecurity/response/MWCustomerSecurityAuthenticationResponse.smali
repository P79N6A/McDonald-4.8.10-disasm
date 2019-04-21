.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;
.super Ljava/lang/Object;
.source "MWCustomerSecurityAuthenticationResponse.java"


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

.field private details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;
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
    .line 10
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->statusDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 29
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->accessToken:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setDetails(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;)V
    .locals 0
    .param p1, "details"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;

    .prologue
    .line 37
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;

    .line 38
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 45
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->refreshToken:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 53
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->status:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 61
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->statusCode:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setStatusDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusDescription"    # Ljava/lang/String;

    .prologue
    .line 69
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->statusDescription:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse<TT;>;"
    const/16 v2, 0x27

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityAuthenticationResponse{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->statusDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;->details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationDetailsResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
