.class public Lcom/mcdonalds/sdk/connectors/middleware/MWPOSTRequestBody;
.super Ljava/util/LinkedHashMap;
.source "MWPOSTRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConfigBasePath:Ljava/lang/String;

.field private mGsonBuilder:Lcom/google/gson/GsonBuilder;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "serializeNulls"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    const-string v0, "connectors.Middleware"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MWPOSTRequestBody;->mConfigBasePath:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MWPOSTRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MWPOSTRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/MWPOSTRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/MWPOSTRequestBody;->putDefaults()V

    .line 22
    return-void
.end method

.method private putDefaults()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
