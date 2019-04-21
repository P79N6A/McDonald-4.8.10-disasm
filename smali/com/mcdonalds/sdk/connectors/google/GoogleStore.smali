.class public Lcom/mcdonalds/sdk/connectors/google/GoogleStore;
.super Ljava/lang/Object;
.source "GoogleStore.java"


# instance fields
.field private mGeometry:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geometry"
    .end annotation
.end field

.field private mProperties:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "properties"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
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
.method public getGeometry()Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->mGeometry:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;

    return-object v0
.end method

.method public getProperties()Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->mProperties:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setGeometry(Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;)V
    .locals 0
    .param p1, "geometry"    # Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->mGeometry:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreGeometry;

    .line 27
    return-void
.end method

.method public setProperties(Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;)V
    .locals 0
    .param p1, "properties"    # Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->mProperties:Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;

    .line 43
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;->mType:Ljava/lang/String;

    .line 35
    return-void
.end method
