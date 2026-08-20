

const Nav = () => {

  return (
      <nav className="flex w-full flex-row justify-between bg-zinc-50 font-sans dark:bg-black px-15 py-5">
          <div>
              <h4 className="font-bold text-lg">SEEL</h4>
          </div>
          <div className="flex flex-row gap-4">
              <a href="">Proyectos</a>
              <a href="">Acerca de</a>
              <a href="">Servicios</a>
              <a href="">Contacto</a>

          </div>
    </nav>
  )
}

export default Nav
