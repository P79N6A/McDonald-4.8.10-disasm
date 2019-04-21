.class public Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
.source "DatabaseQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComparisonColumn"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 645
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method
