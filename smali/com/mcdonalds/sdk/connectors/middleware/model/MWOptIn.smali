.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;
.super Ljava/lang/Object;
.source "MWOptIn.java"


# instance fields
.field private acceptanceTimestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AcceptanceTimestamp"
    .end annotation
.end field

.field private status:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceptanceTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->acceptanceTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->status:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptanceTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "acceptanceTimestamp"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->acceptanceTimestamp:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStatus(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->status:Ljava/lang/Boolean;

    .line 31
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOptIn;->type:Ljava/lang/String;

    .line 23
    return-void
.end method
