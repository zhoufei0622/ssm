import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import UserHome from '@/components/UserHome'
import Login from '@/components//Login'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/HelloWorld',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/UserHome',
      name: 'UserHome',
      component: UserHome
    },
    {
      path: '/',
      name: 'Login',
      component: Login
    }
  ]
})
