.class public Lcom/mcdonalds/app/nutrition/CategoryImage;
.super Ljava/lang/Object;
.source "CategoryImage.java"


# instance fields
.field private category:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private url:Ljava/lang/String;
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

    .line 15
    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 2

    .prologue
    const-string v0, "getCategory"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget v0, p0, Lcom/mcdonalds/app/nutrition/CategoryImage;->category:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CategoryImage;->url:Ljava/lang/String;

    return-object v0
.end method
