#!/bin/bash
# 生成所有PlantUML图表

PLANTUML_JAR="./plantuml-mit-1.2025.2.jar"
OUTPUTS_DIR="./outputs"

# 确保输出目录存在
mkdir -p "$OUTPUTS_DIR"

# 定义颜色
GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
RESET="\033[0m"

echo -e "${YELLOW}开始生成UML图表...${RESET}"

# 生成主上下文关系图
echo -e "${YELLOW}生成主上下文关系图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 main-class-diagram.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成主上下文关系图${RESET}"
else
    echo -e "${RED}生成主上下文关系图失败${RESET}"
fi

# 生成用户管理上下文图
echo -e "${YELLOW}生成用户管理上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 user-context-diagram.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成用户管理上下文图${RESET}"
else
    echo -e "${RED}生成用户管理上下文图失败${RESET}"
fi

# 生成项目管理上下文图
echo -e "${YELLOW}生成项目管理上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 project-context-diagram.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成项目管理上下文图${RESET}"
else
    echo -e "${RED}生成项目管理上下文图失败${RESET}"
fi

# 生成团队协作上下文图
echo -e "${YELLOW}生成团队协作上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 team-context-diagram.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成团队协作上下文图${RESET}"
else
    echo -e "${RED}生成团队协作上下文图失败${RESET}"
fi

# 生成内容管理上下文图
echo -e "${YELLOW}生成内容管理上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 content-context-diagram.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成内容管理上下文图${RESET}"
else
    echo -e "${RED}生成内容管理上下文图失败${RESET}"
fi

# 生成审计治理上下文图
echo -e "${YELLOW}生成审计治理上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 audit-context-diagram.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成审计治理上下文图${RESET}"
else
    echo -e "${RED}生成审计治理上下文图失败${RESET}"
fi

# 生成状态图集合
echo -e "${YELLOW}生成状态图集合...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 state-diagrams.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成状态图集合${RESET}"
else
    echo -e "${RED}生成状态图集合失败${RESET}"
fi

# 生成用户管理流程图
echo -e "${YELLOW}生成用户管理流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 user-workflow.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成用户管理流程图${RESET}"
else
    echo -e "${RED}生成用户管理流程图失败${RESET}"
fi

# 生成项目管理流程图
echo -e "${YELLOW}生成项目管理流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 project-workflow.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成项目管理流程图${RESET}"
else
    echo -e "${RED}生成项目管理流程图失败${RESET}"
fi

# 生成团队协作流程图
echo -e "${YELLOW}生成团队协作流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 team-workflow.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成团队协作流程图${RESET}"
else
    echo -e "${RED}生成团队协作流程图失败${RESET}"
fi

# 生成内容管理流程图
echo -e "${YELLOW}生成内容管理流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 content-workflow.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成内容管理流程图${RESET}"
else
    echo -e "${RED}生成内容管理流程图失败${RESET}"
fi

# 生成审核治理流程图
echo -e "${YELLOW}生成审核治理流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 audit-workflow.puml -o "$OUTPUTS_DIR"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成审核治理流程图${RESET}"
else
    echo -e "${RED}生成审核治理流程图失败${RESET}"
fi

echo -e "${GREEN}全部图表生成完成，输出目录: ${OUTPUTS_DIR}${RESET}"

# 可选：使用系统默认程序打开生成的图表
# open main-class-diagram.png 