.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWLanguage;
.super Ljava/lang/Object;
.source "MWLanguage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cultureAbbreviation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CultureAbbreviation"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public languageID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LanguageID"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
