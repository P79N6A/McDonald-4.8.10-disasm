.class public Lcom/crashlytics/android/answers/LoginEvent;
.super Lcom/crashlytics/android/answers/PredefinedEvent;
.source "LoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/crashlytics/android/answers/PredefinedEvent",
        "<",
        "Lcom/crashlytics/android/answers/LoginEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/crashlytics/android/answers/PredefinedEvent;-><init>()V

    return-void
.end method


# virtual methods
.method getPredefinedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "login"

    return-object v0
.end method