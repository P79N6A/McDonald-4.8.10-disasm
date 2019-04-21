.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
.super Ljava/lang/Object;
.source "DCSPolicy.java"


# static fields
.field public static final DEFAULT_SOURCE_ID:Ljava/lang/String; = "GMA"

.field public static final PRIVACY_POLICY_NAME:Ljava/lang/String; = "PrivacyPolicyAcceptanceType"

.field public static final PRIVACY_POLICY_TYPE:Ljava/lang/String; = "2"

.field public static final TERMS_AND_CONDITIONS_NAME:Ljava/lang/String; = "TermsOfUseAcceptanceType"

.field public static final TERMS_AND_CONDITIONS_TYPE:Ljava/lang/String; = "1"


# instance fields
.field public acceptanceDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acceptanceDate"
    .end annotation
.end field

.field public acceptanceInd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acceptanceInd"
    .end annotation
.end field

.field public channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channelId"
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field public expired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isExpired"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceId"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field public version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
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
