package org.flowable;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.flowable.engine.HistoryService;
import org.flowable.engine.ProcessEngine;
import org.flowable.engine.ProcessEngineConfiguration;
import org.flowable.engine.RepositoryService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.task.api.history.HistoricTaskInstance;
import org.flowable.task.api.Task;

/**
 * @author Joram Barrez
 */
public class Demo {
  
  public static void main(String[] args) {

    ProcessEngine processEngine = ProcessEngineConfiguration
        .createProcessEngineConfigurationFromResource("flowable.cfg.xml").buildProcessEngine();
    
    RepositoryService repositoryService = processEngine.getRepositoryService();
    RuntimeService runtimeService = processEngine.getRuntimeService();
    TaskService taskService = processEngine.getTaskService();
    HistoryService historyService = processEngine.getHistoryService();
    
    repositoryService.createDeployment().addClasspathResource("demo-process.bpmn").deploy();
    System.out.println("Process definitions deployed = " + repositoryService.createProcessDefinitionQuery().count());
    
    Random random = new Random();
    for (int i=0; i<100; i++) {
      Map<String, Object> vars = new HashMap<>();
      vars.put("var", random.nextInt(100));
      runtimeService.startProcessInstanceByKey("myProcess", vars);
    }
    
    System.out.println("Process instances running = " + runtimeService.createProcessInstanceQuery().count());
    LinkedList<Task> tasks = new LinkedList<>(taskService.createTaskQuery().list());
    int taskCounter = 0;
    while (!tasks.isEmpty()) {
      Task task = taskService.createTaskQuery().taskId(tasks.pop().getId()).singleResult();
      if (task != null) {
        taskService.complete(task.getId());
        
        taskCounter++;
        if (taskCounter % 10 == 0) {
          System.out.println("Completed " + taskCounter + " tasks");
        }
      }
      
      if (tasks.isEmpty()) {
        tasks.addAll(taskService.createTaskQuery().list());
      }
    }
    
    System.out.println("Finished all tasks. Finished process instances = "
        + historyService.createHistoricProcessInstanceQuery().finished().count());
    
    processEngine.close();
  }

}
