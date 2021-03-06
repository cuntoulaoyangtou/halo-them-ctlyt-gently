<section class="banner_area">
    <div class="container">
        <div class="row banner_inner">
            <div class="col-lg-5"></div>
            <div class="col-lg-7">
                <div class="banner_content text-center">
                    <h2>搜索</h2>
                    <div class="page_link">
                        <a href="${context!}">主页</a>
                        <a href="#">搜索</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="blog_area p_120">
    <div class="container">
        <#if posts.content?size gt 0>
            <div class="row"> 
                <#list posts.content as post>
                <div class="col-lg-12">
                    <article class="blog_style1">
                        <div class="ctlyt-search-blog">
                        </div>
                        <div class="blog_text">
                            <div class="blog_text_inner">
                                <div class="cat">
                                    <span><i class="fa fa-calendar" aria-hidden="true"></i> ${post.createTime?string["EEE MMM d"]}</span>
                                    <span><i class="fa fa-eye" aria-hidden="true"></i> ${post.visits!0}</span>
                                </div>
                                <a href="${post.fullPath!}"><h4>${post.title!}</h4></a>
                                <p class="ctlyt-p-text">${post.summary!}</p>
                                <a class="blog_btn" href="${post.fullPath!}">阅读更多</a>
                            </div>
                        </div>
                    </article>
                </div>
                </#list>
            </div>
            <#if posts.getTotalPages() gt 0>
                <nav class="blog-pagination justify-content-center d-flex">
                    <ul class="pagination">
                        <li class="page-item <#if posts.number gt 0><#else > is-invisible is-hidden-mobile</#if>">
                            <a href="${context!}search/page/${posts.number}?keyword=${keyword}" class="page-link" aria-label="上一页">
                                <span aria-hidden="true">
                                    <span class="lnr lnr-chevron-left"></span>
                                </span>
                            </a>
                        </li>
                        <#if rainbow??>
                            <#list rainbow as r>
                                <#if r == posts.number+1>
                                    <li class="page-item active"><a href="${context!}search/page/${posts.number+1}?keyword=${keyword}" class="page-link">${posts.number+1}</a></li>
                                <#else>
                                    <li class="page-item"><a href="${context!}search/page/${r}?keyword=${keyword}" class="page-link">${r}</a></li>
                                </#if>
                            </#list>
                        </#if>
                        <li class="page-item <#if posts.getTotalPages() gt posts.number+1><#else > is-invisible is-hidden-mobile</#if>">
                            <a href="${context!}search/page/${posts.number+2}?keyword=${keyword}" class="page-link" aria-label="下一页">
                                <span aria-hidden="true">
                                    <span class="lnr lnr-chevron-right"></span>
                                </span>
                            </a>
                        </li>

                    </ul>
                </nav>
            </#if>
        </#if>
    </div>
</section>