import Nav from "@/components/nav";
import ProjectCard from "@/components/projectCard";

export default function Home() {
  return (
    <div className="container mx-auto flex flex-col justify-center bg-zinc-50 font-sans dark:bg-black">
      <Nav></Nav>

      <h1>
        Lista de proyectos de SEEL:
      </h1>

      <p>
        A continuación selecciona el proyecto que deseas visualizar los detalles:
      </p>

      <div className="m-5">
        <ProjectCard/>
      </div>

    </div>
  );
}
