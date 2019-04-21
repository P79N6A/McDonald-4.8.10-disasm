.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;
.super Ljava/lang/Object;
.source "MWSignInData.java"


# instance fields
.field private mAccessData:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AccessData"
    .end annotation
.end field

.field private mCatalog:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Catalog"
    .end annotation
.end field

.field private mCatalogVersion:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CatalogVersion"
    .end annotation
.end field

.field private mCustomerData:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerData"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->mAccessData:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;

    return-object v0
.end method

.method public getCustomerData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->mCustomerData:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    return-object v0
.end method

.method public setAccessData(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;)V
    .locals 0
    .param p1, "mAccessData"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->mAccessData:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;

    .line 27
    return-void
.end method

.method public setCustomerData(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;)V
    .locals 0
    .param p1, "customerData"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->mCustomerData:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    .line 35
    return-void
.end method
