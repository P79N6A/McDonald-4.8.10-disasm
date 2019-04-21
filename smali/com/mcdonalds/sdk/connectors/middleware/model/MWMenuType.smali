.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
.super Ljava/lang/Object;
.source "MWMenuType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public color:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Color"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Description"
    .end annotation
.end field

.field public displayImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayImage"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public lastModification:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LastModification"
    .end annotation
.end field

.field public menuTypeID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuTypeID"
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

.field public sequence:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Sequence"
    .end annotation
.end field

.field public staticsData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticsData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
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

.method public static toMenuType(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/MenuType;
    .locals 1
    .param p0, "ecpMenuType"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    .param p1, "languageID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->toMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "languageId":Ljava/lang/String;
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/MenuType;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/MenuType;-><init>()V

    .line 43
    .local v2, "ret":Lcom/mcdonalds/sdk/modules/models/MenuType;
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->menuTypeID:I

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setID(I)V

    .line 44
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setDescription(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->color:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setColor(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->displayImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setDisplayImage(Ljava/lang/String;)V

    .line 47
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->isValid:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setIsValid(Ljava/lang/Boolean;)V

    .line 50
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    .line 51
    .local v0, "ecpName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->languageID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setName(Ljava/lang/String;)V

    .line 53
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setLongName(Ljava/lang/String;)V

    .line 54
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setShortName(Ljava/lang/String;)V

    .line 60
    .end local v0    # "ecpName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->sequence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setSequence(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->staticsData:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setStaticsData(Ljava/util/List;)V

    .line 62
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->lastModification:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setLastModification(Ljava/lang/String;)V

    .line 64
    return-object v2
.end method
