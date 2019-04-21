.class public Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;
.super Ljava/lang/Object;
.source "LocalizationConfig.java"


# instance fields
.field private defaultCurrencyFormatLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultCurrencyFormatLanguage"
    .end annotation
.end field

.field private defaultEasyAddressLanguageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultEasyAddressLanguageName"
    .end annotation
.end field

.field private defaultLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultLanguageName"
    .end annotation
.end field

.field private defaultNutritionLanguageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultNutritionLanguageName"
    .end annotation
.end field

.field private languages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "availableLanguageNames"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/configuration/Language;",
            ">;"
        }
    .end annotation
.end field

.field private nutritionLanguageNames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "availableNutritionLanguageNames"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/configuration/Language;",
            ">;"
        }
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
.method public getDefaultCurrencyFormatLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->defaultCurrencyFormatLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultEasyAddressLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->defaultEasyAddressLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultNutritionLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->defaultNutritionLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/configuration/Language;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->languages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/configuration/Language;

    .line 58
    .local v0, "lang":Lcom/mcdonalds/sdk/services/configuration/Language;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/services/configuration/Language;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    .end local v0    # "lang":Lcom/mcdonalds/sdk/services/configuration/Language;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/configuration/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->languages:Ljava/util/List;

    return-object v0
.end method

.method public getNutritionLanguageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/configuration/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->nutritionLanguageNames:Ljava/util/List;

    return-object v0
.end method
