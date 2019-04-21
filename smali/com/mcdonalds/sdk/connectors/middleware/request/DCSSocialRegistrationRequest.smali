.class public Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSocialRegistrationRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;
.source "DCSSocialRegistrationRequest.java"


# instance fields
.field private provider:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idpToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "profile"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSRegistrationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .line 16
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSocialRegistrationRequest;->token:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSSocialRegistrationRequest;->provider:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "type=social"

    return-object v0
.end method
