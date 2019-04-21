.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
.super Ljava/lang/Object;
.source "MWMarket.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public displayCategory:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayCategory"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;",
            ">;"
        }
    .end annotation
.end field

.field public displayCategoryVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayCategoryVersion"
    .end annotation
.end field

.field public facilities:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Facilities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;",
            ">;"
        }
    .end annotation
.end field

.field public facilityVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FacilityVersion"
    .end annotation
.end field

.field public feedbackTypeNames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FeedbackTypeNames"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;",
            ">;"
        }
    .end annotation
.end field

.field public feedbackTypeNamesVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FeedbackTypeNamesVersion"
    .end annotation
.end field

.field public languageVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LanguageVersion"
    .end annotation
.end field

.field public languages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Languages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWLanguage;",
            ">;"
        }
    .end annotation
.end field

.field public menuTypeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuTypeVersion"
    .end annotation
.end field

.field public menuTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;",
            ">;"
        }
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
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public namesVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NamesVersion"
    .end annotation
.end field

.field public paymentMethods:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethods"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field public paymentMethodsVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethodsVersion"
    .end annotation
.end field

.field public promotionVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionVersion"
    .end annotation
.end field

.field public promotions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Promotions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;",
            ">;"
        }
    .end annotation
.end field

.field public recipeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecipeVersion"
    .end annotation
.end field

.field public recipes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Recipes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;",
            ">;"
        }
    .end annotation
.end field

.field public restaurants:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Restaurants"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;",
            ">;"
        }
    .end annotation
.end field

.field public restaurantsVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RestaurantsVersion"
    .end annotation
.end field

.field public socialNetworkVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SocialNetworkVersion"
    .end annotation
.end field

.field public socialNetworks:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SocialNetwork"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public staticData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWStaticData;",
            ">;"
        }
    .end annotation
.end field

.field public staticDataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticDataVersion"
    .end annotation
.end field

.field public tenderTypeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenderTypeVersion"
    .end annotation
.end field

.field public tenderTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenderTypes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPaymentMethods(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "mwPaymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;>;"
    if-nez p0, :cond_1

    .line 227
    const/4 v12, 0x0

    .line 334
    :cond_0
    return-object v12

    .line 230
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    .line 232
    .local v1, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v16, "supportedPaymentMethods.paymentMethodIDs"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 239
    .local v13, "paymentMethodsConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v10, 0x0

    .line 240
    .local v10, "paymentMethodIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_2

    .line 241
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "paymentMethodIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .restart local v10    # "paymentMethodIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 243
    .local v2, "d":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    .end local v2    # "d":Ljava/lang/Double;
    :cond_2
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 248
    .local v11, "paymentMethodNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v4, "expectedPaymentMethodIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v16, "supportedPaymentMethods.creditCard.expectedPaymentMethodID"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v16, "supportedPaymentMethods.cash.expectedPaymentMethodID"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v16, "supportedPaymentMethods.thirdParty.expectedPaymentMethodID"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v16, "supportedPaymentMethods.wechatPayment.expectedPaymentMethodID"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v16, "supportedPaymentMethods.other.expectedPaymentMethodID"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const/4 v6, 0x0

    .local v6, "j":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "size":I
    :goto_1
    if-ge v6, v15, :cond_4

    .line 257
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 258
    .local v3, "expectedPaymentMethodID":I
    if-eqz v3, :cond_3

    .line 259
    packed-switch v6, :pswitch_data_0

    .line 256
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 261
    :pswitch_0
    const-string v16, "Credit"

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 264
    :pswitch_1
    const-string v16, "Cash"

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 267
    :pswitch_2
    const-string v16, "ThirdPart"

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 270
    :pswitch_3
    const-string v16, "WeChat"

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 273
    :pswitch_4
    const-string v16, "Other"

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 280
    .end local v3    # "expectedPaymentMethodID":I
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v12, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    :goto_3
    if-ge v5, v15, :cond_0

    .line 282
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;

    .line 288
    .local v7, "mwPaymentMethod":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->isEnabled:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_6

    .line 281
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 292
    :cond_6
    if-eqz v10, :cond_8

    .line 294
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->getPaymentMethodID()Ljava/lang/Integer;

    move-result-object v8

    .line 295
    .local v8, "paymentID":Ljava/lang/Integer;
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 297
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 298
    .local v14, "paymentName":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v16

    if-lez v16, :cond_7

    if-eqz v14, :cond_7

    .line 301
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v16

    .line 300
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    .line 323
    :goto_5
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->toPaymentMethod()Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    move-result-object v9

    .line 325
    .local v9, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 306
    .end local v9    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    :cond_7
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    packed-switch v16, :pswitch_data_1

    .line 317
    sget-object v16, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Other:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 318
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    goto :goto_5

    .line 308
    :pswitch_5
    sget-object v16, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 309
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    goto :goto_5

    .line 313
    :pswitch_6
    sget-object v16, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 314
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    goto :goto_5

    .line 328
    .end local v8    # "paymentID":Ljava/lang/Integer;
    .end local v14    # "paymentName":Ljava/lang/String;
    :cond_8
    iget-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentLabels:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 330
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->toPaymentMethod()Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    move-result-object v9

    .line 331
    .restart local v9    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 306
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public toMarketCatalog(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    .locals 32
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x17

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_0

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 93
    .local v13, "configuration":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v15

    .line 94
    .local v15, "language":Ljava/lang/String;
    new-instance v30, Ljava/util/Locale;

    move-object/from16 v0, v30

    invoke-direct {v0, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 95
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    .line 98
    .end local v13    # "configuration":Landroid/content/res/Configuration;
    .end local v15    # "language":Ljava/lang/String;
    :cond_0
    new-instance v19, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    invoke-direct/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;-><init>()V

    .line 101
    .local v19, "marketCatalog":Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v12, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->displayCategory:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->displayCategory:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;

    .line 104
    .local v20, "mwCategory":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->toCategory()Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v20    # "mwCategory":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->displayCategoryVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setCategoriesVersion(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setCategories(Ljava/util/List;)V

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, "appFacilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    new-instance v14, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    .line 113
    .local v14, "facilityMap":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->facilities:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->facilities:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;

    .line 115
    .local v21, "mwFacility":Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;->facilityID:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 116
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;->toFacility()Lcom/mcdonalds/sdk/modules/models/Facility;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v21    # "mwFacility":Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->facilityVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setFacilitiesVersion(Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setFacilities(Ljava/util/List;)V

    .line 123
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v29, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->restaurants:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->restaurants:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    .line 126
    .local v28, "restaurant":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->toStore(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 129
    .end local v28    # "restaurant":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->restaurantsVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setStoresVersion(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setStores(Ljava/util/List;)V

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v5, "appPaymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->paymentMethods:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->paymentMethods:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->getPaymentMethods(Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->paymentMethodsVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setPaymentMethodsVersion(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setPaymentMethods(Ljava/util/List;)V

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "appFeedBackTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FeedBackType;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->feedbackTypeNames:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->feedbackTypeNames:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;

    .line 144
    .local v22, "mwFeedbackTypeName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;->toFeedBackType()Lcom/mcdonalds/sdk/modules/models/FeedBackType;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 147
    .end local v22    # "mwFeedbackTypeName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->feedbackTypeNamesVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setFeedBackTypesVersion(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setFeedBackTypes(Ljava/util/List;)V

    .line 151
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v8, "appTenderTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/TenderType;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->tenderTypes:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->tenderTypes:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;

    .line 154
    .local v26, "mwTenderType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;
    invoke-virtual/range {v26 .. v26}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->toTenderType()Lcom/mcdonalds/sdk/modules/models/TenderType;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 157
    .end local v26    # "mwTenderType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->tenderTypeVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setTenderTypesVersion(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setTenderTypes(Ljava/util/List;)V

    .line 161
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v6, "appPromotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Promotion;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->promotions:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->promotions:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;

    .line 164
    .local v24, "mwPromotion":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
    invoke-virtual/range {v24 .. v24}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->toPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 167
    .end local v24    # "mwPromotion":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->promotionVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setPromotionsVersion(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setPromotions(Ljava/util/List;)V

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v4, "appMenuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_9

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;

    .line 174
    .local v23, "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->toMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 176
    .end local v23    # "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    :cond_8
    const-string v30, "enableMultipleMenuTypes"

    invoke-static/range {v30 .. v30}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 178
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    .line 179
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v16

    .line 180
    .local v16, "languageId":Ljava/lang/String;
    new-instance v10, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;-><init>()V

    .line 181
    .local v10, "breakfastMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    const/16 v30, 0x0

    move/from16 v0, v30

    iput v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->menuTypeID:I

    .line 182
    new-instance v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    invoke-direct {v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;-><init>()V

    .line 183
    .local v9, "breakFastName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    sget v30, Lcom/mcdonalds/sdk/R$string;->breakfast:I

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, "breakfastStr":Ljava/lang/String;
    iput-object v11, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    .line 185
    iput-object v11, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    .line 186
    iput-object v11, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    .line 187
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->languageID:Ljava/lang/String;

    .line 188
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->names:Ljava/util/List;

    .line 189
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->isValid:Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->toMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v17, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;

    invoke-direct/range {v17 .. v17}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;-><init>()V

    .line 193
    .local v17, "lunchMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->menuTypeID:I

    .line 194
    new-instance v18, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    invoke-direct/range {v18 .. v18}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;-><init>()V

    .line 195
    .local v18, "lunchName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    sget v30, Lcom/mcdonalds/sdk/R$string;->lunch_and_dinner:I

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 196
    .local v27, "regularStr":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    .line 197
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    .line 198
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    .line 199
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->languageID:Ljava/lang/String;

    .line 200
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->names:Ljava/util/List;

    .line 201
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->isValid:Z

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->toMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v9    # "breakFastName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    .end local v10    # "breakfastMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    .end local v11    # "breakfastStr":Ljava/lang/String;
    .end local v16    # "languageId":Ljava/lang/String;
    .end local v17    # "lunchMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    .end local v18    # "lunchName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    .end local v27    # "regularStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypeVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setMenuTypesVersion(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setMenuTypes(Ljava/util/List;)V

    .line 209
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v7, "appSocialNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->socialNetworks:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_a

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->socialNetworks:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_7
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;

    .line 212
    .local v25, "mwSocialNetwork":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
    invoke-virtual/range {v25 .. v25}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->toSocialNetwork()Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 215
    .end local v25    # "mwSocialNetwork":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->socialNetworkVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setSocialNetworksVersion(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setSocialNetworks(Ljava/util/List;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->namesVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setNamesVersion(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->recipeVersion:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->setRecipesVersion(Ljava/lang/String;)V

    .line 221
    return-object v19
.end method
