    <!-- ${methodCommentInfo.updateByPrimaryKeyMethodDescription} -->
    <update id="${methodInfo.updateByPrimaryKeyMethodName}" parameterType="${mybatisXmlDefinition.parameterType}">
		UPDATE
		<include refid="Table_Name" />
		<set>
    <#list tableInfo.columnLists as colm>
        <#if colm??>
            <#if colm_index != 0>
			<if test="${colm.javaColumnName} != null">${colm.columnName} = ${'#{'}${colm.javaColumnName}},</if>
		    </#if>
		</#if>
	</#list>
		</set>
		WHERE
	<#list tableInfo.primaryKeyColumns as colm>
		 <#if colm_index != 0>AND </#if>${colm.columnName} = ${'#{'}${colm.javaColumnName}}
	</#list>
	</update>
