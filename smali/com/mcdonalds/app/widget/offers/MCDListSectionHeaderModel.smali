.class public Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
.super Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;
.source "MCDListSectionHeaderModel.java"


# instance fields
.field private final mBackgroundColorResource:I

.field private final mImageResource:I

.field private final mImageVisible:Z

.field private final mTextColor:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "imageResource"    # I
    .param p3, "imageVisible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTitle:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageResource:I

    .line 34
    iput-boolean p3, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageVisible:Z

    .line 35
    iput v0, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mBackgroundColorResource:I

    .line 36
    iput v0, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTextColor:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZII)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "imageResource"    # I
    .param p3, "imageVisible"    # Z
    .param p4, "textColor"    # I
    .param p5, "backgroundColorResource"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTitle:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageResource:I

    .line 22
    iput-boolean p3, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageVisible:Z

    .line 23
    iput p4, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTextColor:I

    .line 24
    iput p5, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mBackgroundColorResource:I

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "equals"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .line 67
    .local v0, "that":Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;
    iget v3, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageResource:I

    iget v4, v0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageResource:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 68
    :cond_4
    iget-boolean v3, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageVisible:Z

    iget-boolean v4, v0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageVisible:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 69
    :cond_5
    iget-object v3, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 70
    :cond_6
    iget v3, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mBackgroundColorResource:I

    iget v4, v0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mBackgroundColorResource:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBackgroundColorResource()I
    .locals 2

    .prologue
    const-string v0, "getBackgroundColorResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget v0, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mBackgroundColorResource:I

    return v0
.end method

.method public getImageResource()I
    .locals 2

    .prologue
    const-string v0, "getImageResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget v0, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageResource:I

    return v0
.end method

.method public getItemType()Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;
    .locals 2

    .prologue
    const-string v0, "getItemType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->Header:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    return-object v0
.end method

.method public getTextColor()I
    .locals 2

    .prologue
    const-string v0, "getTextColor"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget v0, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTextColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const-string v1, "hashCode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 78
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageResource:I

    add-int v0, v1, v2

    .line 79
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 80
    iget v1, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mBackgroundColorResource:I

    add-int/2addr v0, v1

    .line 82
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImageVisible()Z
    .locals 2

    .prologue
    const-string v0, "isImageVisible"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageVisible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "toString"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCDListSectionHeaderModel{mTitle=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mImageResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mImageResource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBackgroundColorResource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->mBackgroundColorResource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
