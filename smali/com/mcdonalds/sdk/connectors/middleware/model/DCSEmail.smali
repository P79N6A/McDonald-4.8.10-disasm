.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;
.super Ljava/lang/Object;
.source "DCSEmail.java"


# static fields
.field public static final TYPE_PERSONAL:Ljava/lang/String; = "personal"

.field public static final TYPE_WORK:Ljava/lang/String; = "work"


# instance fields
.field public activeInd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activeInd"
    .end annotation
.end field

.field public emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailAddress"
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
