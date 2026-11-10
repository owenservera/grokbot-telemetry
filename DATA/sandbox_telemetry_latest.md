# sandbox_telemetry_parse — 2026-11-10 03:17:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=967955 lines=2147
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2138 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2138} |
| `chromeGpuPssKb` | {'int': 2138} |
| `chromeOtherPssKb` | {'int': 2138} |
| `chromeProcesses` | {'int': 2138} |
| `chromeProfiles` | {'int': 2138} |
| `chromeRendererMaxPssKb` | {'int': 2138} |
| `chromeRendererPssKb` | {'int': 2138} |
| `chromeRenderers` | {'int': 2138} |
| `chromeTabs` | {'int': 2138} |
| `chromeTabsProbedProfiles` | {'int': 2138} |
| `chromeUtilityPssKb` | {'int': 2138} |
| `desktopPssKb` | {'int': 2138} |
| `hostPssKb` | {'int': 2138} |
| `kind` | {'str': 2138} |
| `memAvailableKb` | {'int': 2138} |
| `memTotalKb` | {'int': 2138} |
| `otherPssKb` | {'int': 2138} |
| `processes` | {'int': 2138} |
| `pssFallbackProcesses` | {'int': 2138} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
