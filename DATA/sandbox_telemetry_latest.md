# sandbox_telemetry_parse — 2026-10-14 18:42:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=428414 lines=952
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 947 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 947} |
| `chromeGpuPssKb` | {'int': 947} |
| `chromeOtherPssKb` | {'int': 947} |
| `chromeProcesses` | {'int': 947} |
| `chromeProfiles` | {'int': 947} |
| `chromeRendererMaxPssKb` | {'int': 947} |
| `chromeRendererPssKb` | {'int': 947} |
| `chromeRenderers` | {'int': 947} |
| `chromeTabs` | {'int': 947} |
| `chromeTabsProbedProfiles` | {'int': 947} |
| `chromeUtilityPssKb` | {'int': 947} |
| `desktopPssKb` | {'int': 947} |
| `hostPssKb` | {'int': 947} |
| `kind` | {'str': 947} |
| `memAvailableKb` | {'int': 947} |
| `memTotalKb` | {'int': 947} |
| `otherPssKb` | {'int': 947} |
| `processes` | {'int': 947} |
| `pssFallbackProcesses` | {'int': 947} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
