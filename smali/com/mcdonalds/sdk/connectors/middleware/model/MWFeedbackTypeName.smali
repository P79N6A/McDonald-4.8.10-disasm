.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;
.super Ljava/lang/Object;
.source "MWFeedbackTypeName.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cultureAbbreviation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CultureAbbreviation"
    .end annotation
.end field

.field public feedbackTypeID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FeedbackTypeID"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public lastModification:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LastModification"
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toFeedBackType()Lcom/mcdonalds/sdk/modules/models/FeedBackType;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/FeedBackType;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;-><init>()V

    .line 28
    .local v0, "type":Lcom/mcdonalds/sdk/modules/models/FeedBackType;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;->feedbackTypeID:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;->setID(I)V

    .line 29
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;->setName(Ljava/lang/String;)V

    .line 30
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFeedbackTypeName;->isValid:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;->setValid(Z)V

    .line 31
    return-object v0
.end method
