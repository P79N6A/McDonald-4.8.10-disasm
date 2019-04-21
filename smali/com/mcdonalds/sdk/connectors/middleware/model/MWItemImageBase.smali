.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;
.super Ljava/lang/Object;
.source "MWItemImageBase.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public altText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alt_text"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public imageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_name"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
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
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->imageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toImageInfo(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 6
    .param p1, "baseImagePath"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    .line 30
    .local v1, "imageInfo":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 31
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->altText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setAltText(Ljava/lang/String;)V

    .line 32
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setDescription(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 35
    move-object v2, p1

    .line 36
    .local v2, "imageUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->imageName:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->imageName:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "parsingImageName":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_0

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    .end local v3    # "parsingImageName":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->imageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    :cond_2
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 51
    .end local v2    # "imageUrl":Ljava/lang/String;
    :cond_3
    return-object v1
.end method
