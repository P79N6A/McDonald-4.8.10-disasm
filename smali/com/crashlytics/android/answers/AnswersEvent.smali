.class public abstract Lcom/crashlytics/android/answers/AnswersEvent;
.super Ljava/lang/Object;
.source "AnswersEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/crashlytics/android/answers/AnswersEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final customAttributes:Lcom/crashlytics/android/answers/AnswersAttributes;

.field final validator:Lcom/crashlytics/android/answers/AnswersEventValidator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 35
    .local p0, "this":Lcom/crashlytics/android/answers/AnswersEvent;, "Lcom/crashlytics/android/answers/AnswersEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/crashlytics/android/answers/AnswersEventValidator;

    const/16 v1, 0x14

    const/16 v2, 0x64

    .line 37
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEventValidator;-><init>(IIZ)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/AnswersEvent;->validator:Lcom/crashlytics/android/answers/AnswersEventValidator;

    .line 38
    new-instance v0, Lcom/crashlytics/android/answers/AnswersAttributes;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AnswersEvent;->validator:Lcom/crashlytics/android/answers/AnswersEventValidator;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/AnswersAttributes;-><init>(Lcom/crashlytics/android/answers/AnswersEventValidator;)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/AnswersEvent;->customAttributes:Lcom/crashlytics/android/answers/AnswersAttributes;

    .line 39
    return-void
.end method
