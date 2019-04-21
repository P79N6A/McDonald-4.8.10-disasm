.class public Lorg/apache/commons/cli/HelpFormatter;
.super Ljava/lang/Object;
.source "HelpFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/cli/HelpFormatter$1;,
        Lorg/apache/commons/cli/HelpFormatter$OptionComparator;
    }
.end annotation


# instance fields
.field public defaultArgName:Ljava/lang/String;

.field public defaultDescPad:I

.field public defaultLeftPad:I

.field public defaultLongOptPrefix:Ljava/lang/String;

.field public defaultNewLine:Ljava/lang/String;

.field public defaultOptPrefix:Ljava/lang/String;

.field public defaultSyntaxPrefix:Ljava/lang/String;

.field public defaultWidth:I

.field protected optionComparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x4a

    iput v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultWidth:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLeftPad:I

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultDescPad:I

    .line 96
    const-string v0, "usage: "

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultSyntaxPrefix:Ljava/lang/String;

    .line 104
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    .line 112
    const-string v0, "-"

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultOptPrefix:Ljava/lang/String;

    .line 120
    const-string v0, "--"

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLongOptPrefix:Ljava/lang/String;

    .line 128
    const-string v0, "arg"

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultArgName:Ljava/lang/String;

    .line 135
    new-instance v0, Lorg/apache/commons/cli/HelpFormatter$OptionComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/cli/HelpFormatter$OptionComparator;-><init>(Lorg/apache/commons/cli/HelpFormatter$1;)V

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->optionComparator:Ljava/util/Comparator;

    .line 962
    return-void
.end method


# virtual methods
.method protected createPadding(I)Ljava/lang/String;
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 921
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 923
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 925
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected findWrapPos(Ljava/lang/String;II)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "startPos"    # I

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v2, -0x1

    .line 868
    const/4 v1, -0x1

    .line 871
    .local v1, "pos":I
    invoke-virtual {p1, v5, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    if-le v1, p2, :cond_1

    :cond_0
    const/16 v3, 0x9

    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v2, :cond_3

    if-gt v1, p2, :cond_3

    .line 874
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 909
    :cond_2
    :goto_0
    return v2

    .line 876
    :cond_3
    add-int v3, p3, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 883
    add-int v1, p3, p2

    .line 888
    :goto_1
    if-lt v1, p3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-eq v0, v7, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_4

    .line 890
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 894
    .end local v0    # "c":C
    :cond_4
    if-le v1, p3, :cond_5

    move v2, v1

    .line 896
    goto :goto_0

    .line 901
    :cond_5
    add-int v1, p3, p2

    .line 904
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    if-eq v0, v7, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v6, :cond_6

    .line 906
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 909
    .end local v0    # "c":C
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    move v2, v1

    goto :goto_0
.end method

.method public getDescPadding()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultDescPad:I

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLeftPad:I

    return v0
.end method

.method public getOptionComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->optionComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultWidth:I

    return v0
.end method

.method public printOptions(Ljava/io/PrintWriter;ILorg/apache/commons/cli/Options;II)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "width"    # I
    .param p3, "options"    # Lorg/apache/commons/cli/Options;
    .param p4, "leftPad"    # I
    .param p5, "descPad"    # I

    .prologue
    .line 664
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuffer;
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 666
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/cli/HelpFormatter;->renderOptions(Ljava/lang/StringBuffer;ILorg/apache/commons/cli/Options;II)Ljava/lang/StringBuffer;

    .line 667
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method protected renderOptions(Ljava/lang/StringBuffer;ILorg/apache/commons/cli/Options;II)Ljava/lang/StringBuffer;
    .locals 17
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "width"    # I
    .param p3, "options"    # Lorg/apache/commons/cli/Options;
    .param p4, "leftPad"    # I
    .param p5, "descPad"    # I

    .prologue
    .line 716
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/HelpFormatter;->createPadding(I)Ljava/lang/String;

    move-result-object v5

    .line 717
    .local v5, "lpad":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/HelpFormatter;->createPadding(I)Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "dpad":Ljava/lang/String;
    const/4 v6, 0x0

    .line 725
    .local v6, "max":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v11, "prefixList":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/cli/Options;->helpOptions()Ljava/util/List;

    move-result-object v9

    .line 729
    .local v9, "optList":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/cli/HelpFormatter;->getOptionComparator()Ljava/util/Comparator;

    move-result-object v14

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 731
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 733
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/cli/Option;

    .line 734
    .local v10, "option":Lorg/apache/commons/cli/Option;
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v14, 0x8

    invoke-direct {v8, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 736
    .local v8, "optBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    .line 738
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/cli/HelpFormatter;->defaultLongOptPrefix:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->getLongOpt()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    :cond_0
    :goto_1
    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->hasArg()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 752
    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->hasArgName()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 754
    const-string v14, " <"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->getArgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    :cond_1
    :goto_2
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-le v14, v6, :cond_2

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 764
    :cond_2
    goto :goto_0

    .line 742
    :cond_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/cli/HelpFormatter;->defaultOptPrefix:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->hasLongOpt()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 746
    const/16 v14, 0x2c

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/cli/HelpFormatter;->defaultLongOptPrefix:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->getLongOpt()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 758
    :cond_4
    const/16 v14, 0x20

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 766
    .end local v8    # "optBuf":Ljava/lang/StringBuffer;
    .end local v10    # "option":Lorg/apache/commons/cli/Option;
    :cond_5
    const/4 v12, 0x0

    .line 768
    .local v12, "x":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 770
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/cli/Option;

    .line 771
    .restart local v10    # "option":Lorg/apache/commons/cli/Option;
    new-instance v8, Ljava/lang/StringBuffer;

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "x":I
    .local v13, "x":I
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 773
    .restart local v8    # "optBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-ge v14, v6, :cond_6

    .line 775
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    sub-int v14, v6, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/commons/cli/HelpFormatter;->createPadding(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    :cond_6
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    add-int v7, v6, p5

    .line 782
    .local v7, "nextLineTabStop":I
    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 784
    invoke-virtual {v10}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7, v14}, Lorg/apache/commons/cli/HelpFormatter;->renderWrappedText(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 791
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    move v12, v13

    .line 793
    .end local v13    # "x":I
    .restart local v12    # "x":I
    goto :goto_3

    .line 795
    .end local v7    # "nextLineTabStop":I
    .end local v8    # "optBuf":Ljava/lang/StringBuffer;
    .end local v10    # "option":Lorg/apache/commons/cli/Option;
    :cond_9
    return-object p1
.end method

.method protected renderWrappedText(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "width"    # I
    .param p3, "nextLineTabStop"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 812
    invoke-virtual {p0, p4, p2, v4}, Lorg/apache/commons/cli/HelpFormatter;->findWrapPos(Ljava/lang/String;II)I

    move-result v1

    .line 814
    .local v1, "pos":I
    if-ne v1, v5, :cond_0

    .line 816
    invoke-virtual {p0, p4}, Lorg/apache/commons/cli/HelpFormatter;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    :goto_0
    return-object p1

    .line 820
    :cond_0
    invoke-virtual {p4, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/cli/HelpFormatter;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    if-lt p3, p2, :cond_1

    .line 825
    const/4 p3, 0x1

    .line 830
    :cond_1
    invoke-virtual {p0, p3}, Lorg/apache/commons/cli/HelpFormatter;->createPadding(I)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "padding":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    .line 835
    invoke-virtual {p0, p4, p2, v4}, Lorg/apache/commons/cli/HelpFormatter;->findWrapPos(Ljava/lang/String;II)I

    move-result v1

    .line 837
    if-ne v1, v5, :cond_2

    .line 839
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 844
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p2, :cond_3

    add-int/lit8 v2, p3, -0x1

    if-ne v1, v2, :cond_3

    .line 846
    move v1, p2

    .line 849
    :cond_3
    invoke-virtual {p4, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/cli/HelpFormatter;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected rtrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 940
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 952
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 945
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 947
    .local v0, "pos":I
    :goto_1
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 949
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 952
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
