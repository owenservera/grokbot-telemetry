# sandbox_telemetry_parse — 2026-11-18 06:58:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=722226 lines=1603
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1596 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1596} |
| `chromeGpuPssKb` | {'int': 1596} |
| `chromeOtherPssKb` | {'int': 1596} |
| `chromeProcesses` | {'int': 1596} |
| `chromeProfiles` | {'int': 1596} |
| `chromeRendererMaxPssKb` | {'int': 1596} |
| `chromeRendererPssKb` | {'int': 1596} |
| `chromeRenderers` | {'int': 1596} |
| `chromeTabs` | {'int': 1596} |
| `chromeTabsProbedProfiles` | {'int': 1596} |
| `chromeUtilityPssKb` | {'int': 1596} |
| `desktopPssKb` | {'int': 1596} |
| `hostPssKb` | {'int': 1596} |
| `kind` | {'str': 1596} |
| `memAvailableKb` | {'int': 1596} |
| `memTotalKb` | {'int': 1596} |
| `otherPssKb` | {'int': 1596} |
| `processes` | {'int': 1596} |
| `pssFallbackProcesses` | {'int': 1596} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
