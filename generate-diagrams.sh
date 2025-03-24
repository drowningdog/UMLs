#!/bin/bash
# 生成所有PlantUML图表

PLANTUML_JAR="./plantuml-mit-1.2025.2.jar"
OUTPUTS_DIR="./outputs"
SRC_DIR="./src"

# 确保输出目录及子目录存在
mkdir -p "$OUTPUTS_DIR/class"
mkdir -p "$OUTPUTS_DIR/workflow"
mkdir -p "$OUTPUTS_DIR/state"

# 定义颜色
GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
RESET="\033[0m"

echo -e "${YELLOW}开始生成UML图表...${RESET}"

# 生成主上下文关系图
echo -e "${YELLOW}生成主上下文关系图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/class/main-class-diagram.puml" -o "$OUTPUTS_DIR/class"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成主上下文关系图${RESET}"
else
    echo -e "${RED}生成主上下文关系图失败${RESET}"
fi

# 生成用户管理上下文图
echo -e "${YELLOW}生成用户管理上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/class/user-context-diagram.puml" -o "$OUTPUTS_DIR/class"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成用户管理上下文图${RESET}"
else
    echo -e "${RED}生成用户管理上下文图失败${RESET}"
fi

# 生成项目管理上下文图
echo -e "${YELLOW}生成项目管理上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/class/project-context-diagram.puml" -o "$OUTPUTS_DIR/class"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成项目管理上下文图${RESET}"
else
    echo -e "${RED}生成项目管理上下文图失败${RESET}"
fi

# 生成团队协作上下文图
echo -e "${YELLOW}生成团队协作上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/class/team-context-diagram.puml" -o "$OUTPUTS_DIR/class"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成团队协作上下文图${RESET}"
else
    echo -e "${RED}生成团队协作上下文图失败${RESET}"
fi

# 生成内容管理上下文图
echo -e "${YELLOW}生成内容管理上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/class/content-context-diagram.puml" -o "$OUTPUTS_DIR/class"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成内容管理上下文图${RESET}"
else
    echo -e "${RED}生成内容管理上下文图失败${RESET}"
fi

# 生成审计治理上下文图
echo -e "${YELLOW}生成审计治理上下文图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/class/audit-context-diagram.puml" -o "$OUTPUTS_DIR/class"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成审计治理上下文图${RESET}"
else
    echo -e "${RED}生成审计治理上下文图失败${RESET}"
fi

# 生成用户状态图
echo -e "${YELLOW}生成用户状态图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/state/user-state.puml" -o "$OUTPUTS_DIR/state"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成用户状态图${RESET}"
else
    echo -e "${RED}生成用户状态图失败${RESET}"
fi

# 生成项目状态图
echo -e "${YELLOW}生成项目状态图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/state/project-state.puml" -o "$OUTPUTS_DIR/state"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成项目状态图${RESET}"
else
    echo -e "${RED}生成项目状态图失败${RESET}"
fi

# 生成团队状态图
echo -e "${YELLOW}生成团队状态图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/state/team-state.puml" -o "$OUTPUTS_DIR/state"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成团队状态图${RESET}"
else
    echo -e "${RED}生成团队状态图失败${RESET}"
fi

# 生成内容状态图
echo -e "${YELLOW}生成内容状态图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/state/content-state.puml" -o "$OUTPUTS_DIR/state"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成内容状态图${RESET}"
else
    echo -e "${RED}生成内容状态图失败${RESET}"
fi

# 生成审核状态图
echo -e "${YELLOW}生成审核状态图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/state/audit-state.puml" -o "$OUTPUTS_DIR/state"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成审核状态图${RESET}"
else
    echo -e "${RED}生成审核状态图失败${RESET}"
fi

# 生成用户管理流程图
echo -e "${YELLOW}生成用户管理流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/workflow/user-workflow.puml" -o "$OUTPUTS_DIR/workflow"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成用户管理流程图${RESET}"
else
    echo -e "${RED}生成用户管理流程图失败${RESET}"
fi

# 生成项目管理流程图
echo -e "${YELLOW}生成项目管理流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/workflow/project-workflow.puml" -o "$OUTPUTS_DIR/workflow"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成项目管理流程图${RESET}"
else
    echo -e "${RED}生成项目管理流程图失败${RESET}"
fi

# 生成团队协作流程图
echo -e "${YELLOW}生成团队协作流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/workflow/team-workflow.puml" -o "$OUTPUTS_DIR/workflow"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成团队协作流程图${RESET}"
else
    echo -e "${RED}生成团队协作流程图失败${RESET}"
fi

# 生成内容管理流程图
echo -e "${YELLOW}生成内容管理流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/workflow/content-workflow.puml" -o "$OUTPUTS_DIR/workflow"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成内容管理流程图${RESET}"
else
    echo -e "${RED}生成内容管理流程图失败${RESET}"
fi

# 生成审核治理流程图
echo -e "${YELLOW}生成审核治理流程图...${RESET}"
java -jar "$PLANTUML_JAR" -charset UTF-8 "$SRC_DIR/workflow/audit-workflow.puml" -o "$OUTPUTS_DIR/workflow"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}成功生成审核治理流程图${RESET}"
else
    echo -e "${RED}生成审核治理流程图失败${RESET}"
fi

# 移动输出文件到正确位置
echo -e "${YELLOW}移动生成的图表到输出目录...${RESET}"

# 移动类图
echo -e "${YELLOW}移动类图...${RESET}"
mv -f "$SRC_DIR/class/outputs/class/"*.png "$OUTPUTS_DIR/class/" 2>/dev/null || true

# 移动工作流程图
echo -e "${YELLOW}移动工作流程图...${RESET}"
mv -f "$SRC_DIR/workflow/outputs/workflow/"*.png "$OUTPUTS_DIR/workflow/" 2>/dev/null || true

# 移动状态图
echo -e "${YELLOW}移动状态图...${RESET}"
mv -f "$SRC_DIR/state/outputs/state/"*.png "$OUTPUTS_DIR/state/" 2>/dev/null || true

# 清理临时输出目录
echo -e "${YELLOW}清理临时目录...${RESET}"
rm -rf "$SRC_DIR/class/outputs" "$SRC_DIR/workflow/outputs" "$SRC_DIR/state/outputs" 2>/dev/null || true

echo -e "${GREEN}全部图表生成完成${RESET}"
echo -e "${GREEN}类图/上下文图输出目录: ${OUTPUTS_DIR}/class${RESET}"
echo -e "${GREEN}流程图输出目录: ${OUTPUTS_DIR}/workflow${RESET}"
echo -e "${GREEN}状态图输出目录: ${OUTPUTS_DIR}/state${RESET}"

# 可选：使用系统默认程序打开生成的图表
# open main-class-diagram.png 