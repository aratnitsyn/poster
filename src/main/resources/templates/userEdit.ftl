<#import "parts/common.ftl" as c>

<@c.page>
User editor
<form action="/user" method="post">
    <input type="text" value="${userEntity.username}" name="username"/>

    <#list roles as role>
    <div>
        <label><input type="checkbox" name="${role}" ${userEntity.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>

    <input type="hidden" value="${userEntity.id}" name="userId"/>
    <input type="hidden" value="${_csrf.token}" name="_csrf"/>

    <button type="submit">Save</button>
</form>
</@c.page>