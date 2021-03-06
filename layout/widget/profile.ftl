<div class="widget">
    <div class="card-content">
        <nav class="level">
            <div class="level-item has-text-centered" style="flex-shrink: 1">
                <div>
                    <figure class="image is-128x128 has-mb-6">
                        <img class="${((settings.profile_avatar_type!'avatar_square')=='avatar_rounded')?string('is-rounded','')}" src="${user.avatar!}" alt="${user.nickname!}">
                    </figure>
                    <p class="is-size-4 is-block has-text-grey-lighter">
                        ${user.nickname!}
                    </p>
                    <p class="is-size-7 is-block has-text-grey-lighter">
                        <marquee  direction="left" behavior="scroll"  scrollamount="5" >
                            ${user.description!}
                        </marquee>
                    </p>
                    <#if settings.profile_location?? && settings.profile_location!=''>
                        <p class="is-size-7 is-flex is-flex-center has-text-grey-lighter">
                            <i class="fas fa-map-marker-alt has-mr-7"></i>
                            <span>${settings.profile_location!}</span>
                        </p>
                    </#if>
                </div>
            </div>
        </nav>
        <nav class="level is-mobile">
            <div class="level-item has-text-centered is-marginless has-text-grey-lighter">
                <div>
                    <p class="heading">
                        资源
                    </p>
                    <p class="title has-text-weight-normal has-text-grey-lighter">
                        <@postTag method="count">${count}</@postTag>
                    </p>
                </div>
            </div>
            <div class="level-item has-text-centered is-marginless has-text-grey-lighter">
                <div>
                    <p class="heading">
                        分类
                    </p>
                    <p class="title has-text-weight-normal has-text-grey-lighter">
                        <@categoryTag method="count">${count}</@categoryTag>
                    </p>
                </div>
            </div>
            <div class="level-item has-text-centered is-marginless has-text-grey-lighter">
                <div>
                    <p class="heading">
                        标签
                    </p>
                    <p class="title has-text-weight-normal has-text-grey-lighter">
                        <@tagTag method="count">${count}</@tagTag>
                    </p>
                </div>
            </div>
        </nav>
        <div class="level">
            <a class="level-item button is-primary is-rounded" style="background-color: #00C4A7" href="${settings.profile_follow_url!'/s/about'}">Who am I?</a>
        </div>
        <div class="level is-mobile">
            <#if settings.social_github?? && settings.social_github!=''>
                <a class="level-item icon-item" target="_blank" title="Github" href="https://github.com/${settings.social_github}">
                    <i class="fab fa-github"></i>
                </a>
            </#if>
            <#if settings.social_qq?? && settings.social_qq!=''>
                <a class="level-item icon-item " target="_blank" title="QQ" href="tencent://message/?uin=${settings.social_qq}&Site=&Menu=yes">
                    <i class="fab fa-qq"></i>
                </a>
            </#if>
            <#if settings.social_weibo?? && settings.social_weibo!=''>
                <a class="level-item icon-item " target="_blank" title="微博" href="https://weibo.com/${settings.social_weibo}">
                    <i class="fab fa-weibo"></i>
                </a>
            </#if>
            <#if settings.social_twitter?? && settings.social_twitter!=''>
                <a class="level-item icon-item" target="_blank" title="Twitter" href="https://twitter.com/${settings.social_twitter}">
                    <i class="fab fa-twitter"></i>
                </a>
            </#if>
            <#if settings.social_facebook?? && settings.social_facebook!=''>
                <a class="level-item icon-item " target="_blank" title="Facebook" href="https://www.facebook.com/${settings.social_facebook}">
                    <i class="fab fa-facebook"></i>
                </a>
            </#if>
            <#if settings.social_email?? && settings.social_email!=''>
                <a class="level-item icon-item " target="_blank" title="Email" href="mailto:${settings.social_email}">
                    <i class="fas fa-envelope"></i>
                </a>
            </#if>
            <#if settings.social_telegram?? && settings.social_telegram!=''>
                <a class="level-item icon-item " target="_blank" title="Telegram" href="https://t.me/${settings.social_telegram}">
                    <i class="fab fa-telegram"></i>
                </a>
            </#if>

            <!--
            <a class="level-item icon-item " target="_blank" title="Docker" href="${context!}/atom.xml">
                <i class="fas fa-rss"></i>
            </a>
			-->
            <#if true>
                <a class="level-item icon-item " target="_blank" title="CSDN" href="https://blog.csdn.net/qq_41071421">
                    <i class="fab fa-blogger"></i>
                </a>

            </#if>

            <span></span>
        </div>
        <!--
      <p>
          <a target="_blank" title="QQ" href="https://jq.qq.com/?_wv=1027&k=57dvSNy">
              公众号：mumuser
          </a>
      </p>
      <p>
          <a target="_blank" title="QQ" href="https://jq.qq.com/?_wv=1027&k=5vWbtIi">
              企鹅群：932154986
          </a>
      </p>
      -->
    </div>
</div>
