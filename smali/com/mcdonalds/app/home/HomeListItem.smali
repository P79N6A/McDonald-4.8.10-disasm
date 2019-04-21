.class public Lcom/mcdonalds/app/home/HomeListItem;
.super Ljava/lang/Object;
.source "HomeListItem.java"


# instance fields
.field private mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private mDataLayerTag:Ljava/lang/String;

.field private final mIconImageResource:I

.field private final mLink:Ljava/lang/String;

.field private mSubTitle:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "iconImageResource"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "link"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p5, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/io/Serializable;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/home/HomeListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "iconImageResource"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "link"    # Ljava/lang/String;
    .param p6, "dataLayerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p5, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/io/Serializable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/mcdonalds/app/home/HomeListItem;->mIconImageResource:I

    .line 34
    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeListItem;->mTitle:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/mcdonalds/app/home/HomeListItem;->mSubTitle:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/mcdonalds/app/home/HomeListItem;->mLink:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/mcdonalds/app/home/HomeListItem;->mAttributes:Ljava/util/Map;

    .line 38
    iput-object p6, p0, Lcom/mcdonalds/app/home/HomeListItem;->mDataLayerTag:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getAttributes"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListItem;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getDataLayerTag()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDataLayerTag"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListItem;->mDataLayerTag:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageResource()I
    .locals 2

    .prologue
    const-string v0, "getIconImageResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget v0, p0, Lcom/mcdonalds/app/home/HomeListItem;->mIconImageResource:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getLink"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListItem;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getSubTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    const-string v0, "setSubTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListItem;->mSubTitle:Ljava/lang/String;

    .line 62
    return-void
.end method
