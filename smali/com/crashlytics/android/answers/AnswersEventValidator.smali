.class Lcom/crashlytics/android/answers/AnswersEventValidator;
.super Ljava/lang/Object;
.source "AnswersEventValidator.java"


# instance fields
.field failFast:Z

.field final maxNumAttributes:I

.field final maxStringLength:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "maxNumAttributes"    # I
    .param p2, "maxStringLength"    # I
    .param p3, "failFast"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxNumAttributes:I

    .line 27
    iput p2, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxStringLength:I

    .line 28
    iput-boolean p3, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->failFast:Z

    .line 29
    return-void
.end method
