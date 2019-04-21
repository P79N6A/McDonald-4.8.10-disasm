.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWStaticData;
.super Ljava/lang/Object;
.source "MWStaticData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public URL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "URL"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public languageID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LanguageID"
    .end annotation
.end field

.field public lastModification:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LastModification"
    .end annotation
.end field

.field public staticDataID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticDataID"
    .end annotation
.end field

.field public staticDataTypeID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticDataTypeID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
