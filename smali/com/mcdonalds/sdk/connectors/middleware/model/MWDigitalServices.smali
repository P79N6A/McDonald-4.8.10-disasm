.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices;
.super Ljava/lang/Object;
.source "MWDigitalServices.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Key"
    .end annotation
.end field

.field public technologies:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Technologies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWDigitalServices$TechKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
