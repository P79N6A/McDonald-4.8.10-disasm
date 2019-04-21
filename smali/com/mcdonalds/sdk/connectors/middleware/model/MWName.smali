.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
.super Ljava/lang/Object;
.source "MWName.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public languageID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LanguageID"
    .end annotation
.end field

.field public longName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LongName"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field public shortName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShortName"
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

.method public static toName(Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;)Lcom/mcdonalds/sdk/modules/models/Name;
    .locals 2
    .param p0, "ecpName"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    .prologue
    .line 25
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Name;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Name;-><init>()V

    .line 26
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/Name;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Name;->setName(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Name;->setLongName(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Name;->setShortName(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method
