.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;
.super Ljava/lang/Object;
.source "DCSFeedbackProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DCSFeedback"
.end annotation


# instance fields
.field public feedbackRating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feedbackRating"
    .end annotation
.end field

.field public feedbackType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feedBackType"
    .end annotation
.end field

.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;

.field public userComment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userComment"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
