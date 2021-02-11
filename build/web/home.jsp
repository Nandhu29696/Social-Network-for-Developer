<!DOCTYPE html>

<html >
<head>
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="stacks.css" >
  <link rel="stylesheet" type="text/css" href="primary.css" >
  <link rel="stylesheet" type="text/css" href="product.css" >
  <link rel="stylesheet" type="text/css" href="channels.css" >
  <style>
    .div6-1{
      -webkit-backdrop-filter: blur(0.5px);
      backdrop-filter: blur(0.5px);
      background-color: rgba(211, 205, 205, 0.705);
      border-radius: 20px ;
      margin: 20px;
      padding: 10px 160px 10px 160px;
  }
  </style>
  
</head>
<body class="home-page unified-theme">
<header class="top-bar js-top-bar top-bar__network _fixed" style="border-top: green;">
    <div class="wmx12 mx-auto grid ai-center h100" role="menubar">
            <ol class="list-reset grid gs4" role="presentation">
                <li class="grid--cell">
                    <a href="home.jsp"
                        class="-marketing-link is-selected js-gps-track js-Home-menu" style="background-color: green;">
                        Home
                    </a>
                </li>

                    <li class="grid--cell md:d-none">
                        <a href="userpage.jsp" class="-marketing-link js-gps-track">Service</a>
                    </li>
                    <li class="grid--cell md:d-none">
                        <a  href="#for-about" class="-marketing-link js-gps-track">About</a>
                    </li>
            </ol>
          <ol class="overflow-x-auto ml-auto -secondary grid ai-center list-reset h100 user-logged-out" role="presentation">
              <li class="-item">
                  <a href="#" class="my-profile js-gps-track" data-gps-track="profile_summary.click()">
                <div class="gravatar-wrapper-24" title="<%=session.getAttribute("username")%>"><img src="images/img2.jpg" alt="" width="24" height="24" class="bar-sm -avatar js-avatar-me">
             </div> 
              </li>

        <li class="-ctas">
                        <a href="index.jsp" class="login-link s-btn s-btn__filled py8 js-gps-track" rel="nofollow"
                           data-gps-track="login.click" data-ga="[&quot;top navigation&quot;,&quot;login button click&quot;,null,null,null]">Log out</a>
        </li>
          </ol>
  </header>
  <div class="container wmx100 w100 p-ff-source">
    <div id="left-sidebar" data-is-here-when="" class="left-sidebar js-pinned-left-sidebar ps-relative">
    <div class="left-sidebar--sticky-container js-sticky-leftnav">
        <nav role="navigation">
            <ol class="nav-links">
    <li class=" youarehere">
        <a
            href="/"
            class="pl8 js-gps-track nav-links--link"
            
            data-gps-track="top_nav.click({is_current:true, location:1, destination:8})">
Home        </a>
    </li>
                <li>
                    <ol class="nav-links">
                            <li class="fs-fine tt-uppercase ml8 mt16 mb4 fc-light">Public</li>
    <li>
        <a id="nav-tags"
            href="aaa.jsp"
            class=" js-gps-track nav-links--link"
            
            data-gps-track="top_nav.click({is_current:false, location:1, destination:2})">
Q&A        </a>
    </li>
    <li>
        <a id="nav-users"
            href="bookmarked.jsp"
            class=" js-gps-track nav-links--link"
            
            data-gps-track="top_nav.click({is_current:false, location:1, destination:3})">
            bookmarks        </a>
    </li>
    <li>
        <a id="nav-jobs"
            href="/jobs?so_medium=StackOverflow&amp;so_source=SiteNav"
            class=" js-gps-track nav-links--link"
            
            data-gps-track="top_nav.click({is_current:false, location:1, destination:6})">
Friends      
        
        </a>
    </li>
  </ol>
 </li>
</ol>
</nav>
</div>
<div class="s-popover w-auto p16" id="popover-teams-create-cta" role="menu" aria-hidden="true">
            <div class="s-popover--arrow"></div>
        </div>

</div>


        <div id="content" class="w100 wmx100 p0 snippet-hidden">


            

<div style="background: url(images/ig.jpeg);">
  <div class="py128" style="margin: 0px 250px 0px 250px">
  <div class="div6-1">  
  <h1  class=" p-ff-roboto-slab-bold fs-display2 ta-center mb16">We <span class="ff-mono">&#x3C;3</span> people who code</h1 >
    <p class="fs-title ta-center  wmx4 mx-auto mb24">We build Home that empower developers and connect them to solutions that enable productivity, growth, and discovery.</p>
    <div class="grid jc-center ai-center fs-body2 sm:fd-column">

        <a class="grid--cell bc-green-2 ba fc-green-400 bg-white py12 px24 bar-sm js-scroll-link js-gps-track"
           data-gps-track="product_homepage.hero.click({ cta: 'For developers' })"
           href="#for-developers" data-ga="[&quot;home page&quot;,&quot;for developers click&quot;,&quot;hero banner&quot;,null,null]">
            For Freshers
        </a>

        <a class="grid--cell ml8 sm:ml0 sm:mt8 fc-white bg-green-400 py12 px24 bar-sm js-scroll-link js-gps-track"
           data-gps-track="product_homepage.hero.click({ cta: 'For businesses' })"
           href="#for-developers" data-ga="[&quot;home page&quot;,&quot;for businesses click&quot;,&quot;hero banner&quot;,null,null]">
            For Experience
        </a>
    </div>
  </div>
  </div>
</div>

<div class="py64 ta-center" id="for-developers" style="background-color: whitesmoke; ">
    <h2 class="w90 mx-auto p-ff-roboto-slab-bold fs-headline2 mb24">For Freshers, by Developers</h2>
    <div class="p-divider mb32"></div>
    <p class="ta-center fs-body3 w90 wmx5 mx-auto mb48">Analysis is an open community for anyone that codes. We help you get answers to your toughest coding questions, share knowledge with your coworkers in private.</p>
    <div class="grid grid__allcells4 w90 wmx10 mx-auto ai-start md:fd-column md:ai-center">
        <div class="grid--cell wmx3 fs-body2 ta-center ">
            
        </div>
        <div class="grid--cell wmx3 fs-body2 bs-md bar-lg p32 mr64 ml64 md:mr0 md:ml0 md:mb32 h:bs-lg">
            <img class="mb16" src="images/er.svg">
            <h4 class="fs-title p-ff-roboto-slab mb16">Private Q&A</h4>
            <p class="mb24">Level up with Analysis media while you work. Share knowledge privately with your coworkers using our flagship Q&amp;A engine.</p>
            <a class="d-inline-block fc-white p-bg-purple py12 px24 bar-sm js-gps-track"
               data-gps-track="product_homepage.for_developers.click({ product: 'FreeCommunity' })"
               href="aaa.jsp" data-ga="[&quot;home page&quot;,&quot;browse questions click&quot;,&quot;for developers section&quot;,null,null]">
                Browse questions
            </a>
        </div>
        
    </div>
</div>



            <div class="py128 px32 teams-slope" style="background-image: url(images/g.jpg);">
    <h2 class="w90 wmx5 mx-auto fc-white ta-center p-ff-roboto-slab-bold fs-headline2 mb24">Unlock siloed knowledge with Stack Overflow for Teams</h2>
    <div class="p-divider mb32"></div>
    <p class="mb24 w90 mx-auto wmx4 ta-center fc-white fs-body3">Wikis, chat messages, or formal documentation for knowledge management aren?t effective. Our question and answer format is a proven approach for accessing the right information in less time.</p>
    <p class="ta-center mb24 md:mb48">

        <a class="fs-body2 d-inline-block fc-white bg-green-400 py12 px24 bar-sm js-gps-track"
           data-gps-track="product_homepage.for_business.click({ product: 'PrivateQA', cta: 'Learn more' })"
           href="/teams" data-ga="[&quot;home page&quot;,&quot;teams - learn more click&quot;,&quot;for businesses section&quot;,null,null]">
            Learn more
        </a>
    </p>
    
    <div class="mx-auto wmx12">



<div class="grid grid__allcells4 md:fd-column md:ai-center">
    <div class="grid fd-column jc-end mr48 lg:mr32 md:mr0 wmx4 md:mb48 w100">
        <div class="grid--cell bar-lg bg-white ba bc-black-1">
            <div class="ta-center bb bc-black-1 p16">
                <h4 class="p-ff-roboto-slab-bold fs-title mb8 p-fc-purple">Basic</h4>
                <p class="mb0 fs-body2">Private knowledge base for teams</p>
            </div>
            <div class="p24">
                    <div class="grid ai-center mb16">
                        <div class="grid--cell p-ff-roboto-slab-bold fs-headline2 mr8">
                            $5
                        </div>
                        <div class="grid--cell fs-body1">
                            <p class="m0">per teammate / month</p>
                            <p class="m0">billed annually</p>
                        </div>
                    </div>
                
                <ul class="list-reset list-ls-none fs-body2 mb24">
                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Free 30 day trial
        </div>
    </li>
                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Fully searchable archive
        </div>
    </li>

                </ul>

                    <a href="/teams/create" class="s-btn d-block fs-body2 px32 bar-md bg-black-050 h:bg-black-100 fc-powder-900 p-ff-source-bold" data-ga="[&quot;teams landing&quot;,&quot;plans menu click&quot;,&quot;Get started for free&quot;,null,null]">Get started for free</a>

            </div>
        </div>
    </div>
    <div class="grid fd-column jc-end mr48 lg:mr32 md:mr0 md:mb64 wmx4">
        <div class="grid--cell bar-lg bg-white ba bc-black-1">
            <div class="ta-center bb bc-black-1 p16">
                <h4 class="p-ff-roboto-slab-bold fs-title mb8 p-fc-purple">Business</h4>
                <p class="mb0 fs-body2">Private knowledge base with SSO and premium features</p>
            </div>
            <div class="p24">
                <div class="grid ai-center mb16">
                    <div class="grid--cell p-ff-roboto-slab-bold fs-headline2 mr8">
                        $12
                    </div>
                    <div class="grid--cell fs-body1">
                        <p class="m0">per teammate / month</p>
                        <p class="m0">billed annually</p>
                    </div>
                </div>
                <ul class="list-reset list-ls-none fs-body2 mb24">
                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            All the features of Basic
        </div>
    </li>

                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Single sign-on (SSO) with SAML
        </div>
    </li>

                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Reporting and analytics
        </div>
    </li>

                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Priority customer support
        </div>
    </li>

                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            99.5% uptime
        </div>
    </li>

                </ul>
 
                    <a href="/business/get-started" class="s-btn d-block fs-body2 px32 bar-md bg-black-050 h:bg-black-100 fc-powder-900 p-ff-source-bold" data-ga="[&quot;teams landing&quot;,&quot;plans menu click&quot;,&quot;Request a demo&quot;,null,null]">Request a demo</a>

            </div>
        </div>
    </div>
    <div class="grid fd-column jc-end wmx4">
        <div class="grid--cell bar-lg p-bg-purple fc-white ba bc-black-1">
            <div class="grid--cell ta-center bb bc-white-2 p16">
                <h4 class="p-ff-roboto-slab-bold fs-title mb8">Enterprise</h4>
                <p class="mb0 fs-body2 wmx3 mx-auto">Standalone knowledge base with enhanced security and flexible hosting</p>
            </div>
            <div class="p24">
                <div class="mb16 p-ff-roboto-slab-bold fs-title">
                    Custom pricing
                </div>
                
                <ul class="list-reset list-ls-none fs-body2 mb24 wmx3">
                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Host on your cloud or servers ? or our private managed cloud
        </div>
    </li>

                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Single sign-on with AD or SAML
        </div>
    </li>

                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Robust read and write API
        </div>
    </li>

                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            Your own customer success and community building representative
        </div>
    </li>

                        <li class="grid mb12">
        <div class="grid--cell mr6">
            <svg aria-hidden="true" class="svg-icon fc-green-400 va-text-bottom iconCheckmark" width="18" height="18" viewBox="0 0 18 18"><path d="M16 4.41L14.59 3 6 11.59 2.41 8 1 9.41l5 5 10-10z"/></svg>
        </div>
        <div class="grid--cell">
            99.5% uptime SLA and priority support
        </div>
    </li>

                </ul>

                    <a href="/enterprise/get-started" class="s-btn d-block fs-body2 px32 bar-md p-bg-yellow h:p-bg-yellow-tint fc-black-900 p-ff-source-bold" data-ga="[&quot;teams landing&quot;,&quot;plans menu click&quot;,&quot;Request a demo&quot;,null,null]">Request a demo</a>

            </div>
        </div>
    </div>
</div> 
    </div>

    <div class="ta-center p-ff-roboto-slab fs-body2 mt48">
        <a target="_blank" and rel="noopener noreferrer" href="https://www.g2.com/Home/stack-overflow-for-teams/" class="d-inline-block mx24 my12 fc-black-200 h:fc-white">
            <img class="d-inline-block va-middle mr8" src="https://cdn.sstatic.net/Img/teams/endorsements/g2.svg?v=670bf9279910" height="26" alt="G2">
            <strong class="p-ff-roboto-slab-bold">Leader</strong> Fall 2019
        </a>

        <a target="_blank" and rel="noopener noreferrer" href="https://www.g2.com/Home/stack-overflow-for-teams/" class="d-inline-block mx24 my12 fc-black-200 h:fc-white">
            <img class="d-inline-block va-middle mr8" src="https://cdn.sstatic.net/Img/teams/endorsements/g2.svg?v=670bf9279910" height="26" alt="G2">
            <strong class="p-ff-roboto-slab-bold">Users Love Us</strong>
        </a>

        <a target="_blank" and rel="noopener noreferrer" href="https://www.fastcompany.com/most-innovative-companies/2019/sectors/enterprise" class="d-inline-block mx24 my12 fc-black-200 h:fc-white">
            <img class="d-inline-block va-middle mr8" src="https://cdn.sstatic.net/Img/teams/endorsements/fastco.svg?v=5ebc802a76c7" height="21" alt="Fast Company">
            <strong class="p-ff-roboto-slab-bold">Most Innovative Companies</strong> 2019
        </a>
    </div>
</div>




<div class="py128 fs-body2">
    <h3 class="w90 mx-auto ta-center p-ff-roboto-slab-bold fs-headline2 mb24" >Learn and grow with our page</h3>
    <div class="p-divider mb64"></div>
    <div class="mx-auto w90 wmx12 grid grid__allcells6 md:fd-column">
        <div class="grid grid__allcells6 mr32 md:mr0 md:mb64 md:jc-center sm:fd-column sm:ai-center sm:mb48">
            <div class="grid--cell wmx3 mr32 md:mr48 md:ta-center md:pl24 md:pr24 sm:mr0 sm:mb48 sm:pl0 sm:pr0">
                <img class="mb16 wmx100" width="175" height=151" src="https://cdn.sstatic.net/Img/home/developer.svg?v=cd5e5a0ec97c">
                <h4 class="p-ff-roboto-slab-bold fs-subheading mb16">Write the script of the future</h4>
                <p>
                    Get your coding questions answered to learn, build, and level up whether you?re beginning with
                    <a href="questions/tagged/javascript" class="js-gps-track" data-gps-track="product_homepage.learn_and_grow.click({ link: 'Javascript' })"
                       data-ga="[&quot;home page&quot;,&quot;javascript click&quot;,&quot;learn and grow section&quot;,null,null]">JavaScript</a> or a
                    <a href="questions/tagged/react" class="js-gps-track" data-gps-track="product_homepage.learn_and_grow.click({ link: 'React' })"
                       data-ga="[&quot;home page&quot;,&quot;react click&quot;,&quot;learn and grow section&quot;,null,null]">React</a> professional.
                </p>
            </div>
            <div class="grid--cell wmx3 md:ta-center md:pl24 md:pr24 sm:pl0 sm:pr0">
                <img class="mb16 wmx100" width="169" height="151" src="https://cdn.sstatic.net/Img/home/open-source.svg?v=e025bc1244c8">
                <h4 class="p-ff-roboto-slab-bold fs-subheading mb16">Support open source</h4>
                <p>Reach users of your project by following tags, answering newcomer questions, and empowering experts in the community. 
                <a href="https://stackoverflow.com/questions/55884514/what-is-the-incentive-for-curl-to-release-the-library-for-free/55885729#55885729" 
                    class="js-gps-track" data-gps-track="product_homepage.learn_and_grow.click({ link: 'Curl' })"
                    data-ga="[&quot;home page&quot;,&quot;curl story click&quot;,&quot;learn and grow section&quot;,null,null]">Read the curl project creator?s story</a>.</p>
            </div>
        </div>
        <div class="grid grid__allcells6 md:jc-center sm:fd-column sm:ai-center">
            <div class="grid--cell wmx3 mr32 md:mr48 md:ta-center md:pl24 md:pr24 sm:mr0 sm:mb48 sm:pl0 sm:pr0">
                <img class="mb16 wmx100" width="176" height="151" src="https://cdn.sstatic.net/Img/home/advocate.svg?v=a91ad6d1a9bd">
                <h4 class="p-ff-roboto-slab-bold fs-subheading mb16">Acquire and share knowledge</h4>
                <p>Answer questions and <a href="https://insights.stackoverflow.com/" class="js-gps-track" data-gps-track="product_homepage.learn_and_grow.click({ link: 'Insights' })"
                    data-ga="[&quot;home page&quot;,&quot;insights click&quot;,&quot;learn and grow section&quot;,null,null]">gain insights</a> from an audience of developers using your technology on Stack Overflow.</p>
            </div>
            <div class="grid--cell wmx3 md:ta-center md:pl24 md:pr24">
                <img class="mb16 wmx100" width="209" height="151" src="https://cdn.sstatic.net/Img/home/career-switcher.svg?v=b42e46ffdac0">
                <h4 class="p-ff-roboto-slab-bold fs-subheading mb16">Find career opportunities</h4>
                <p>Create a profile that shows off your expertise and credentials to help you make your next move. Start your <a href="users/story/join" class="js-gps-track" 
                    data-gps-track="product_homepage.learn_and_grow.click({ link: 'DeveloperStory' })" 
                    data-ga="[&quot;home page&quot;,&quot;developer story click&quot;,&quot;learn and grow section&quot;,null,null]">Developer Story</a>.</p>
            </div>
        </div>
    </div>
</div>

<div class="ps-relative bg-powder-100 py128 p-slope-right">
    <h3 class="mx-auto w90 wmx12 p-ff-roboto-slab-bold fs-headline2 mb24 lg:ta-center">Looking for a job?</h3>
    <div class="mx-auto w90 wmx12 grid ai-center lg:fd-column">
        <div class="grid grid__allcells6 lg:fd-column">
            <div class="grid grid__allcells6 mr32 lg:mr0 lg:mb32 sm:fd-column sm:mb16">
                <a class="grid ai-center p16 bg-white bs-md bar-lg s-link s-link__inherit p-ff-roboto-slab fs-body2 mr32 sm:mr0 sm:mb16 js-gps-track"
                   data-gps-track="product_homepage.browse_jobs.click({ filter: 'Technology' })"
                   href="/jobs/why-jobs-cta/BrowseByTechnology?source=Homepage"
                   data-ga="[&quot;home page&quot;,&quot;jobs by technology click&quot;,&quot;looking for job section&quot;,null,null]">
                    <div class="grid--cell mr16">
                        <img width="50" src="https://cdn.sstatic.net/Img/home/jobs-tech.svg?v=42f011c01763">
                    </div>
                    <div class="grid--cell">
                        Browse jobs by technology
                    </div>
                </a>
                <a class="grid ai-center p16 bg-white bs-md bar-lg s-link s-link__inherit p-ff-roboto-slab fs-body2 js-gps-track"
                   data-gps-track="product_homepage.browse_jobs.click({ filter: 'Salary' })"
                   href="/jobs/why-jobs-cta/BrowseBySalary?source=Homepage"
                   data-ga="[&quot;home page&quot;,&quot;jobs by salary click&quot;,&quot;looking for job section&quot;,null,null]">
                    <div class="grid--cell mr16">
                        <img width="50" src="https://cdn.sstatic.net/Img/home/jobs-salary.svg?v=401840ff8931">
                    </div>
                    <div class="grid--cell">
                        Browse jobs by salary
                    </div>
                </a>
            </div>
            <div class="grid grid__allcells6 lg:mb32 sm:fd-column">
                <a class="grid ai-center p16 bg-white bs-md bar-lg s-link s-link__inherit p-ff-roboto-slab fs-body2 mr32 sm:mr0 sm:mb16 js-gps-track"
                   data-gps-track="product_homepage.browse_jobs.click({ filter: 'Visa' })"
                   href="/jobs/why-jobs-cta/BrowseVisaJobs?source=Homepage"
                   data-ga="[&quot;home page&quot;,&quot;jobs by visa click&quot;,&quot;looking for job section&quot;,null,null]">
                    <div class="grid--cell mr16">
                        <img width="50" src="https://cdn.sstatic.net/Img/home/jobs-visa.svg?v=1f3acc6dc772">
                    </div>
                    <div class="grid--cell">
                        Browse jobs by visa sponsorship
                    </div>
                </a>
                <a class="grid ai-center p16 bg-white bs-md bar-lg s-link s-link__inherit p-ff-roboto-slab fs-body2 js-gps-track"
                   data-gps-track="product_homepage.browse_jobs.click({ filter: 'Remote' })"
                   href="/jobs/why-jobs-cta/BrowseRemoteJobs?source=Homepage"
                   data-ga="[&quot;home page&quot;,&quot;remote jobs click&quot;,&quot;looking for job section&quot;,null,null]">
                    <div class="grid--cell mr16">
                        <img width="50" src="https://cdn.sstatic.net/Img/home/jobs-remote.svg?v=a4b4d1b5a80c">
                    </div>
                    <div class="grid--cell">
                        Browse remote-friendly jobs
                    </div>
                </a>
            </div>
        </div>
        <a class="grid--cell ml32 lg:ml0 fs-body2 ws-nowrap fc-white bg-green-400 py12 px24 bar-sm js-gps-track"
           data-gps-track="product_homepage.browse_jobs.click({ filter: 'None' })"
           href="/jobs"
           data-ga="[&quot;home page&quot;,&quot;view all jobs click&quot;,&quot;looking for job section&quot;,null,null]">
            View all jobs
        </a>
    </div>
    <img class="ps-absolute r64 bn4" width="51" src="https://cdn.sstatic.net/Img/home/robot.svg?v=dfa16a330cbd">
</div>

<script>
    $('.js-scroll-link').on('click', function(e) {
        e.preventDefault();

        $('html, body').animate(
            {
                scrollTop: $($(this).attr('href')).offset().top,
            },
            300,
            'linear'
        );
    });

    
    var tourAutoplay = 3500;
    var tourItemActiveClass = ["is-active", "bc-black-3", "bs-lg"];

    
    var tourTriggers = document.querySelectorAll('.js-tour-area');
    var tourIndex = 1;
    var tourAutoplayer;

    
    function tourInitAutoplay () {
        tourAutoplayer = setInterval(function() {
            
            tourTriggers[tourIndex].checked = true;

            
            for (var i=0; tourTriggers.length > i; i++) {
                var event;
                if(typeof(Event) === 'function') {
                    event = new Event('change');
                } else {
                    event = document.createEvent('Event');
                    event.initEvent('change', true, true);
                }

                tourTriggers[i].dispatchEvent(event);
            }

            
            if (tourIndex >= tourTriggers.length - 1) {
                tourIndex = 0;
            } else {
                tourIndex++;
            }
        }, tourAutoplay);
    }

    
    function tourKillAutoplay() {
        clearInterval(tourAutoplayer);
    }

    
    tourInitAutoplay();

    
    for (var i=0; tourTriggers.length > i; i++) {
        
        tourTriggers[i].addEventListener('s-expandable-control:show', function (el) {
            Array.prototype.slice.call(tourItemActiveClass).forEach(function(e){el.target.parentNode.classList.add(e);});
        }, false);

        
        tourTriggers[i].addEventListener('s-expandable-control:hide', function (el) {
            Array.prototype.slice.call(tourItemActiveClass).forEach(function(e){el.target.parentNode.classList.remove(e);});
        }, false);

        
        tourTriggers[i].addEventListener('click', function () {
            tourKillAutoplay();
        });

        tourTriggers[i].addEventListener('touchstart', function () {
            tourKillAutoplay();
        });
    }
</script>

        </div>
    </div>
    
    <footer id="footer" class="site-footer js-footer" role="contentinfo">
        <div class="site-footer--container">
                <nav class="site-footer--nav">
                    <div class="site-footer--col site-footer--col__visible js-footer-col" data-name="default">
                        <h5 class="-title" id="for-about">About</h5>
                        <div class="grid--cell wmx3 md:ta-center md:p270 md:pr24" >
                
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Most trusted online community for anyone that codes to learn, share their knowledge, and build their careers. More than 50 million unique visitors come to Stack Overflow each month to help solve coding problems, develop new skills, and find job opportunities..
                        </div>
                    </div>
                <div class="site-footer--categories">
                    <div class="site-footer--col site-footer--category js-footer-col" data-name="Technology">
        </div>
                    <div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts">
        </div>
                    <div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts"></div>
         <div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts">
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation">
        </div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation">
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Science">
    </div><div class="site-footer--col site-footer--category js-footer-col" data-name="Science">
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Other">
        
    </div>
                </div>
            </nav>
            <div class="site-footer--copyright fs-fine">
                
                <p class="mt-auto mb24"> <h5 class="-title" id="for-about">Contact us</h5>
site design / logo &#169; 2020 Stack Exchange Inc; user contributions licensed under cc by-sa 4.0
                            with attribution required.
                    <span id="svnrev">rev&nbsp;2020.3.17.36298</span>
                </p>
            </div>
        </div>

            </footer>
            <script>StackExchange.ready(function () { StackExchange.responsiveness.addSwitcher(); })</script>
    <noscript>
        <div id="noscript-warning">Stack Overflow works best with JavaScript enabled
            <img src="https://pixel.quantserve.com/pixel/p-c1rF4kxgLUzNc.gif" alt="" class="dno">
        </div>
    </noscript>


            
    </body>
    </html>
