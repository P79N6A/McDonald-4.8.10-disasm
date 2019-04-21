.class public Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
.super Ljava/lang/Object;
.source "DatabaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseField"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->type:Ljava/lang/String;

    .line 143
    return-void
.end method
