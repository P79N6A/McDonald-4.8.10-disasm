.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;
.super Ljava/lang/Object;
.source "MWFacility.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public facilityID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FacilityID"
    .end annotation
.end field

.field public facilityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FacilityName"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public names:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toFacility()Lcom/mcdonalds/sdk/modules/models/Facility;
    .locals 5

    .prologue
    .line 28
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Facility;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Facility;-><init>()V

    .line 29
    .local v0, "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;->facilityID:I

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Facility;->setID(I)V

    .line 30
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;->facilityName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Facility;->setFacilityName(Ljava/lang/String;)V

    .line 31
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;->isValid:Z

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Facility;->setIsValid(Z)V

    .line 33
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "languageId":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    .line 35
    .local v2, "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    iget-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->languageID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    iget-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Facility;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v2    # "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    :cond_1
    return-object v0
.end method
