.class public Lcom/ensighten/model/EnsightenGestureRecognizerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFourFingerGestureRecognizer()Lcom/ensighten/model/EnsightenGestureRecognizer;
    .locals 1

    .prologue
    .line 6
    invoke-static {}, Lcom/ensighten/C;->a()Lcom/ensighten/C;

    move-result-object v0

    return-object v0
.end method
