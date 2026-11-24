# sandbox_telemetry_parse — 2026-11-24 10:07:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2238580 lines=4962
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4947 |
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
| `chromeBrowserPssKb` | {'int': 4947} |
| `chromeGpuPssKb` | {'int': 4947} |
| `chromeOtherPssKb` | {'int': 4947} |
| `chromeProcesses` | {'int': 4947} |
| `chromeProfiles` | {'int': 4947} |
| `chromeRendererMaxPssKb` | {'int': 4947} |
| `chromeRendererPssKb` | {'int': 4947} |
| `chromeRenderers` | {'int': 4947} |
| `chromeTabs` | {'int': 4947} |
| `chromeTabsProbedProfiles` | {'int': 4947} |
| `chromeUtilityPssKb` | {'int': 4947} |
| `desktopPssKb` | {'int': 4947} |
| `hostPssKb` | {'int': 4947} |
| `kind` | {'str': 4947} |
| `memAvailableKb` | {'int': 4947} |
| `memTotalKb` | {'int': 4947} |
| `otherPssKb` | {'int': 4947} |
| `processes` | {'int': 4947} |
| `pssFallbackProcesses` | {'int': 4947} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
