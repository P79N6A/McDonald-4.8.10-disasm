.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;
.super Ljava/lang/Object;
.source "DCSAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCSAddressDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;
    }
.end annotation


# instance fields
.field public addressLineDetails:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addressLineDetails"
    .end annotation
.end field

.field public locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addressLocale"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
