.class public Lcom/mcdonalds/app/ui/models/DayPartsResponse;
.super Ljava/lang/Object;
.source "DayPartsResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dayParts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "daypart"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/models/DayPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl(I)Ljava/lang/String;
    .locals 4
    .param p1, "i"    # I

    .prologue
    const-string v0, "getUrl"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DayPartsResponse;->dayParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DayPartsResponse;->dayParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/models/DayPart;

    iget-object v0, v0, Lcom/mcdonalds/app/ui/models/DayPart;->url:Ljava/lang/String;

    .line 17
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
