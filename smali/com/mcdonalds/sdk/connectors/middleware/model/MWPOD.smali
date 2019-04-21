.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;
.super Ljava/lang/Object;
.source "MWPOD.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public saleTypeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SaleTypeID"
    .end annotation
.end field

.field public typeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TypeName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSaleTypeID()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;->saleTypeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public setSaleTypeID(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "saleTypeID"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;->saleTypeID:Ljava/lang/Integer;

    .line 35
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;->typeName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toPod()Lcom/mcdonalds/sdk/modules/models/Pod;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Pod;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Pod;-><init>()V

    .line 22
    .local v0, "pod":Lcom/mcdonalds/sdk/modules/models/Pod;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;->saleTypeID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Pod;->setSaleTypeId(I)V

    .line 23
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Pod;->setTypeName(Ljava/lang/String;)V

    .line 24
    return-object v0
.end method
