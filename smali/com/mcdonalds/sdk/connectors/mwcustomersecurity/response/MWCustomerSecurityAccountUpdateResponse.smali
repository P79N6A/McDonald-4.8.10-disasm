.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;
.super Ljava/lang/Object;
.source "MWCustomerSecurityAccountUpdateResponse.java"


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
.field private details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateDetailsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
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
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateDetailsResponse;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateDetailsResponse;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->statusDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setDetails(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateDetailsResponse;)V
    .locals 0
    .param p1, "details"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateDetailsResponse;

    .prologue
    .line 21
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->details:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateDetailsResponse;

    .line 22
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 45
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->status:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 37
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->statusCode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setStatusDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusDescription"    # Ljava/lang/String;

    .prologue
    .line 29
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->statusDescription:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse<TT;>;"
    const/16 v2, 0x27

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityAuthenticationDetailsResponse{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;->statusDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method