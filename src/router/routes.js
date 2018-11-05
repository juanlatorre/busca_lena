
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
                path: '/search',
                component: () => import('pages/Search.vue')
            },
            {
                path: '/results',
                name: 'results',
                component: () => import('pages/SearchResults.vue')
            }
        ],
    },
	{
		path: '/search',
		component: () => import('layouts/NavLayout.vue'),
		children: [
		]
	}
];

// Always leave this as last one
if (process.env.MODE !== 'ssr') {
    routes.push({
        path: '*',
        component: () => import('pages/Error404.vue'),
    });
}

export default routes;
