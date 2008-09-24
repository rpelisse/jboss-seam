<#include "../util/TypeInfo.ftl">
<#assign entityName = pojo.shortName>
<#assign componentName = util.lower(entityName)>
<#assign listName = componentName + "List">
package ${actionPackage};

<#if pojo.packageName != "">
import ${pojo.packageName}.*;
</#if>
import org.jboss.seam.annotations.Name;
import org.jboss.seam.framework.EntityQuery;
import java.util.Arrays;

@Name("${listName}")
public class ${entityName}List extends EntityQuery<${entityName}>
{

    private static final String EJBQL = "select ${componentName} from ${entityName} ${componentName}";

    private static final String[] RESTRICTIONS = {
<#foreach property in pojo.allPropertiesIterator>
<#if !c2h.isCollection(property) && !util.isToOne(property)>
<#if c2j.isComponent(property)>
<#foreach componentProperty in property.value.propertyIterator>
<#if isString(componentProperty)>
        "lower(${componentName}.${property.name}.${componentProperty.name}) like concat(lower(${'#'}{${listName}.${componentName}.${property.name}.${componentProperty.name}}),'%')",
</#if>
</#foreach>
<#else>
<#if isString(property)>
        "lower(${componentName}.${property.name}) like concat(lower(${'#'}{${listName}.${componentName}.${property.name}}),'%')",
</#if>
</#if>
</#if>
</#foreach>
    };

<#if pojo.isComponent(pojo.identifierProperty)>
    private ${entityName} ${componentName};
<#else>
    private ${entityName} ${componentName} = new ${entityName}();
</#if>

    public ${entityName}List()
    {
<#if pojo.isComponent(pojo.identifierProperty)>
        ${componentName} = new ${entityName}();
        ${componentName}.setId( new ${entityName}Id() );
</#if>
        setEjbql(EJBQL);
        setRestrictionExpressionStrings(Arrays.asList(RESTRICTIONS));
        setMaxResults(25);
    }

    public ${entityName} get${entityName}()
    {
        return ${componentName};
    }
}
