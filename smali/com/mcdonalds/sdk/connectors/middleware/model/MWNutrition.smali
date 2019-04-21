.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;
.super Ljava/lang/Object;
.source "MWNutrition.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allNutrients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation
.end field

.field private allergenes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Allergenes"
    .end annotation
.end field

.field private calcium:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Calcium"
    .end annotation
.end field

.field private caloriesfromfat:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Caloriesfromfat"
    .end annotation
.end field

.field private carbohydrates:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Carbohydrates"
    .end annotation
.end field

.field private carbohydratesDV:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CarbohydratesDV"
    .end annotation
.end field

.field private cholesterol:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Cholesterol"
    .end annotation
.end field

.field private cholesterolDV:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CholesterolDV"
    .end annotation
.end field

.field private dietaryfiber:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Dietaryfiber"
    .end annotation
.end field

.field private dietaryfiberDV:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DietaryfiberDV"
    .end annotation
.end field

.field private energy:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Energy"
    .end annotation
.end field

.field private ingredients:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Ingredients"
    .end annotation
.end field

.field private iron:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Iron"
    .end annotation
.end field

.field private kCal:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KCal"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field private protein:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Protein"
    .end annotation
.end field

.field private proteinDV:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProteinDV"
    .end annotation
.end field

.field private saturatedFat:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SaturatedFat"
    .end annotation
.end field

.field private saturatedFatDV:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SaturatedFatDV"
    .end annotation
.end field

.field private serving:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Serving"
    .end annotation
.end field

.field private sodium:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Sodium"
    .end annotation
.end field

.field private sodiumDV:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SodiumDV"
    .end annotation
.end field

.field private specialInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SpecialInfo"
    .end annotation
.end field

.field private sugars:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Sugars"
    .end annotation
.end field

.field private totalfat:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Totalfat"
    .end annotation
.end field

.field private totalfatDV:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalfatDV"
    .end annotation
.end field

.field private transfat:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Transfat"
    .end annotation
.end field

.field private vitamina:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Vitamina"
    .end annotation
.end field

.field private vitaminc:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Vitaminc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->allNutrients:Ljava/util/List;

    return-void
.end method

.method private buildNutrientLists()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    .line 80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->allNutrients:Ljava/util/List;

    .line 83
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "Allergenes"

    aput-object v8, v6, v7

    const/4 v8, 0x1

    const-string v9, "Ingredients"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "Name"

    aput-object v9, v6, v8

    const-string v8, "Serving"

    aput-object v8, v6, v11

    const/4 v8, 0x4

    const-string v9, "SpecialInfo"

    aput-object v9, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 85
    .local v3, "notANutrient":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 86
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v1, v2, v6

    .line 87
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;

    if-eq v9, v10, :cond_1

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "propName":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 97
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/Nutrient;-><init>()V

    .line 98
    .local v4, "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setName(Ljava/lang/String;)V

    .line 101
    const/4 v9, 0x0

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_2
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->allNutrients:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v9, "0"

    invoke-virtual {v4, v9}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    .end local v0    # "ignore":Ljava/lang/Exception;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v5    # "propName":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public allNutrients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->allNutrients:Ljava/util/List;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->buildNutrientLists()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->allNutrients:Ljava/util/List;

    return-object v0
.end method

.method public getAllergenes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->allergenes:Ljava/lang/String;

    return-object v0
.end method

.method public getCalcium()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->calcium:D

    return-wide v0
.end method

.method public getCaloriesfromfat()D
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->caloriesfromfat:D

    return-wide v0
.end method

.method public getCarbohydrates()D
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->carbohydrates:D

    return-wide v0
.end method

.method public getCarbohydratesDV()D
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->carbohydratesDV:D

    return-wide v0
.end method

.method public getCholesterol()D
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->cholesterol:D

    return-wide v0
.end method

.method public getCholesterolDV()D
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->cholesterolDV:D

    return-wide v0
.end method

.method public getDietaryfiber()D
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->dietaryfiber:D

    return-wide v0
.end method

.method public getDietaryfiberDV()D
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->dietaryfiberDV:D

    return-wide v0
.end method

.method public getEnergy()D
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->energy:D

    return-wide v0
.end method

.method public getIngredients()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->ingredients:Ljava/lang/String;

    return-object v0
.end method

.method public getIron()D
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->iron:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProtein()D
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->protein:D

    return-wide v0
.end method

.method public getProteinDV()D
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->proteinDV:D

    return-wide v0
.end method

.method public getSaturatedFat()D
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->saturatedFat:D

    return-wide v0
.end method

.method public getSaturatedFatDV()D
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->saturatedFatDV:D

    return-wide v0
.end method

.method public getServing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->serving:Ljava/lang/String;

    return-object v0
.end method

.method public getSodium()D
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->sodium:D

    return-wide v0
.end method

.method public getSodiumDV()D
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->sodiumDV:D

    return-wide v0
.end method

.method public getSpecialInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->specialInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSugars()D
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->sugars:D

    return-wide v0
.end method

.method public getTotalfat()D
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->totalfat:D

    return-wide v0
.end method

.method public getTotalfatDV()D
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->totalfatDV:D

    return-wide v0
.end method

.method public getTransfat()D
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->transfat:D

    return-wide v0
.end method

.method public getVitamina()D
    .locals 2

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->vitamina:D

    return-wide v0
.end method

.method public getVitaminc()D
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->vitaminc:D

    return-wide v0
.end method

.method public getkCal()D
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->kCal:D

    return-wide v0
.end method

.method public setAllergenes(Ljava/lang/String;)V
    .locals 0
    .param p1, "allergenes"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->allergenes:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCalcium(D)V
    .locals 1
    .param p1, "calcium"    # D

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->calcium:D

    .line 134
    return-void
.end method

.method public setCaloriesfromfat(D)V
    .locals 1
    .param p1, "caloriesfromfat"    # D

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->caloriesfromfat:D

    .line 142
    return-void
.end method

.method public setCarbohydrates(D)V
    .locals 1
    .param p1, "carbohydrates"    # D

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->carbohydrates:D

    .line 150
    return-void
.end method

.method public setCarbohydratesDV(D)V
    .locals 1
    .param p1, "carbohydratesDV"    # D

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->carbohydratesDV:D

    .line 158
    return-void
.end method

.method public setCholesterol(D)V
    .locals 1
    .param p1, "cholesterol"    # D

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->cholesterol:D

    .line 166
    return-void
.end method

.method public setCholesterolDV(D)V
    .locals 1
    .param p1, "cholesterolDV"    # D

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->cholesterolDV:D

    .line 174
    return-void
.end method

.method public setDietaryfiber(D)V
    .locals 1
    .param p1, "dietaryfiber"    # D

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->dietaryfiber:D

    .line 182
    return-void
.end method

.method public setDietaryfiberDV(D)V
    .locals 1
    .param p1, "dietaryfiberDV"    # D

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->dietaryfiberDV:D

    .line 190
    return-void
.end method

.method public setEnergy(D)V
    .locals 1
    .param p1, "energy"    # D

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->energy:D

    .line 198
    return-void
.end method

.method public setIngredients(Ljava/lang/String;)V
    .locals 0
    .param p1, "ingredients"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->ingredients:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setIron(D)V
    .locals 1
    .param p1, "iron"    # D

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->iron:D

    .line 222
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->name:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setProtein(D)V
    .locals 1
    .param p1, "protein"    # D

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->protein:D

    .line 238
    return-void
.end method

.method public setProteinDV(D)V
    .locals 1
    .param p1, "proteinDV"    # D

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->proteinDV:D

    .line 246
    return-void
.end method

.method public setSaturatedFat(D)V
    .locals 1
    .param p1, "saturatedFat"    # D

    .prologue
    .line 253
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->saturatedFat:D

    .line 254
    return-void
.end method

.method public setSaturatedFatDV(D)V
    .locals 1
    .param p1, "saturatedFatDV"    # D

    .prologue
    .line 261
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->saturatedFatDV:D

    .line 262
    return-void
.end method

.method public setServing(Ljava/lang/String;)V
    .locals 0
    .param p1, "serving"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->serving:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setSodium(D)V
    .locals 1
    .param p1, "sodium"    # D

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->sodium:D

    .line 278
    return-void
.end method

.method public setSodiumDV(D)V
    .locals 1
    .param p1, "sodiumDV"    # D

    .prologue
    .line 285
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->sodiumDV:D

    .line 286
    return-void
.end method

.method public setSpecialInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "specialInfo"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->specialInfo:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setSugars(D)V
    .locals 1
    .param p1, "sugars"    # D

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->sugars:D

    .line 302
    return-void
.end method

.method public setTotalfat(D)V
    .locals 1
    .param p1, "totalfat"    # D

    .prologue
    .line 309
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->totalfat:D

    .line 310
    return-void
.end method

.method public setTotalfatDV(D)V
    .locals 1
    .param p1, "totalfatDV"    # D

    .prologue
    .line 317
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->totalfatDV:D

    .line 318
    return-void
.end method

.method public setTransfat(D)V
    .locals 1
    .param p1, "transfat"    # D

    .prologue
    .line 325
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->transfat:D

    .line 326
    return-void
.end method

.method public setVitamina(D)V
    .locals 1
    .param p1, "vitamina"    # D

    .prologue
    .line 333
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->vitamina:D

    .line 334
    return-void
.end method

.method public setVitaminc(D)V
    .locals 1
    .param p1, "vitaminc"    # D

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->vitaminc:D

    .line 342
    return-void
.end method

.method public setkCal(D)V
    .locals 1
    .param p1, "kCal"    # D

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->kCal:D

    .line 206
    return-void
.end method
