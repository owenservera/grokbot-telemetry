# sandbox_telemetry_parse — 2026-11-26 09:55:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3198439 lines=7084
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7069 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 7069} |
| `chromeGpuPssKb` | {'int': 7069} |
| `chromeOtherPssKb` | {'int': 7069} |
| `chromeProcesses` | {'int': 7069} |
| `chromeProfiles` | {'int': 7069} |
| `chromeRendererMaxPssKb` | {'int': 7069} |
| `chromeRendererPssKb` | {'int': 7069} |
| `chromeRenderers` | {'int': 7069} |
| `chromeTabs` | {'int': 7069} |
| `chromeTabsProbedProfiles` | {'int': 7069} |
| `chromeUtilityPssKb` | {'int': 7069} |
| `desktopPssKb` | {'int': 7069} |
| `hostPssKb` | {'int': 7069} |
| `kind` | {'str': 7069} |
| `memAvailableKb` | {'int': 7069} |
| `memTotalKb` | {'int': 7069} |
| `otherPssKb` | {'int': 7069} |
| `processes` | {'int': 7069} |
| `pssFallbackProcesses` | {'int': 7069} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
