.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
.super Ljava/lang/Object;
.source "DCSProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCSDemographics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    }
.end annotation


# instance fields
.field public ageRange:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ageRange"
    .end annotation
.end field

.field public dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dob"
    .end annotation
.end field

.field public ethnicity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ethnicity"
    .end annotation
.end field

.field public gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
