<%@page contentType="text/html" pageEncoding="UTF-8" %>
<div class="header">
    <a class="no-underline-anchor" href="resume?theme=${theme}">
        <div class="arrow-dot">
            <img src="img/left_arrow.svg" alt="">
        </div>
    </a>
    <a class="text-anchor" href="resume?theme=${theme == null ? 'light' : theme}">
        <span class="resumes-control-title">Управление резюме</span>
    </a>
    <div class="themes">
        <div class="theme-title">Тема</div>
        <div class="theme-selector">
            <form action="" method="GET">
                <select name="theme" onchange="this.form.submit()">
                    <option value="light" ${theme == null || theme == 'light' ? 'selected' : ''}>Светлая</option>
                    <option value="dark" ${theme == 'dark' ? 'selected' : ''}>Темная</option>
                    <option value="purple" ${theme == 'purple' ? 'selected' : ''}>Фиолетовая</option>
                </select>
            </form>
        </div>
    </div>
</div>
