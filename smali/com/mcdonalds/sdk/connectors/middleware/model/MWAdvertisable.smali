.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;
.super Ljava/lang/Object;
.source "MWAdvertisable.java"


# instance fields
.field public advertisableName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i18n"
    .end annotation
.end field

.field public conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Conditions"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field public isAdvertisable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsAdvertisable"
    .end annotation
.end field

.field public longDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LongDescription"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field public productSets:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductSets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;",
            ">;"
        }
    .end annotation
.end field

.field public shortDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShortDescription"
    .end annotation
.end field

.field public timeRestriction:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TimeRestriction"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
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


# virtual methods
.method public toAdvertisablePromotionEntity(I)Ljava/util/List;
    .locals 10
    .param p1, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;>;"
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 40
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 41
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 42
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 43
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;->regular:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 50
    .local v1, "baseProductId":I
    :goto_0
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 51
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 52
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 53
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 54
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;->swap:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 60
    .local v6, "swapProductId":I
    :goto_1
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;->dayOfWeekConditions:Ljava/util/List;

    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 61
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 62
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;

    iget-object v8, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;->dayOfWeekConditions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "dayOfWeek":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 65
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 66
    const/4 v9, 0x7

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 68
    .local v7, "weekday":I
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;-><init>()V

    .line 69
    .local v0, "advertisablePromotionEntity":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->setStoreId(I)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->setBaseProductId(I)V

    .line 71
    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->setSwapProductId(I)V

    .line 72
    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->setWeekday(I)V

    .line 73
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 75
    .end local v0    # "advertisablePromotionEntity":Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v7    # "weekday":I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 45
    .end local v1    # "baseProductId":I
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "dayOfWeek":Ljava/lang/String;
    .end local v6    # "swapProductId":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "baseProductId":I
    goto/16 :goto_0

    .line 56
    :cond_1
    const/4 v6, -0x1

    .restart local v6    # "swapProductId":I
    goto :goto_1

    .line 80
    :cond_2
    return-object v5
.end method
