
const routes = [
    {
        path: '/',
        component: () => import('layouts/MainLayout.vue'),
        children: [
            {
                path: '',
                component: () => import('pages/Index.vue')
            },
            {
                path: 'search',
                component: () => import('pages/Search.vue')
            },
            {
                path: '/search_results',
                name: 'search_results',
                component: () => import('pages/SearchResults.vue')
            }
        ],
    },
];

// Always leave this as last one
if (process.env.MODE !== 'ssr') {
    routes.push({
        path: '*',
        component: () => import('pages/Error404.vue'),
    });
}

export default routes;