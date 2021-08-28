package com.realnet.comm.response;

import java.util.List;

import com.realnet.comm.entity.Student;
import com.realnet.fnd.response.PageResponse;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
public class StudentResponse extends PageResponse {
  @ApiModelProperty(required = true, value = "")
  private List<Student> items;
}
