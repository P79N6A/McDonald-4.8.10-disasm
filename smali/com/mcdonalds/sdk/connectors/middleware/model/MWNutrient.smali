.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;
.super Ljava/lang/Object;
.source "MWNutrient.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public adultDailyValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adult_dv"
    .end annotation
.end field

.field public hundredG:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hundred_g_per_product"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public unit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uom"
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->unit:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->value:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->name:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public toNutrient()Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Nutrient;-><init>()V

    .line 42
    .local v0, "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setId(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setName(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setValue(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setUnit(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->adultDailyValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setAdultDailyValue(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->hundredG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setHundredG(Ljava/lang/String;)V

    .line 49
    return-object v0
.end method
