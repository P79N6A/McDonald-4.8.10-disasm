.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;
.super Ljava/lang/Object;
.source "DCSPhone.java"


# static fields
.field public static final TYPE_CELL:Ljava/lang/String; = "cell"


# instance fields
.field public activeInd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activeInd"
    .end annotation
.end field

.field public number:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field public primaryInd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primaryInd"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
