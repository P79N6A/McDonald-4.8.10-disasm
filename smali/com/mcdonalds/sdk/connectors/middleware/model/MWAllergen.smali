.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAllergen;
.super Ljava/lang/Object;
.source "MWAllergen.java"


# instance fields
.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
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
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toAllergen()Lcom/mcdonalds/sdk/modules/models/Allergen;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Allergen;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Allergen;-><init>()V

    .line 20
    .local v0, "allergen":Lcom/mcdonalds/sdk/modules/models/Allergen;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAllergen;->id:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Allergen;->setId(I)V

    .line 21
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAllergen;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Allergen;->setName(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAllergen;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Allergen;->setValue(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method
