# sandbox_telemetry_parse — 2026-11-18 22:53:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1011851 lines=2245
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2236 |
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
| `chromeBrowserPssKb` | {'int': 2236} |
| `chromeGpuPssKb` | {'int': 2236} |
| `chromeOtherPssKb` | {'int': 2236} |
| `chromeProcesses` | {'int': 2236} |
| `chromeProfiles` | {'int': 2236} |
| `chromeRendererMaxPssKb` | {'int': 2236} |
| `chromeRendererPssKb` | {'int': 2236} |
| `chromeRenderers` | {'int': 2236} |
| `chromeTabs` | {'int': 2236} |
| `chromeTabsProbedProfiles` | {'int': 2236} |
| `chromeUtilityPssKb` | {'int': 2236} |
| `desktopPssKb` | {'int': 2236} |
| `hostPssKb` | {'int': 2236} |
| `kind` | {'str': 2236} |
| `memAvailableKb` | {'int': 2236} |
| `memTotalKb` | {'int': 2236} |
| `otherPssKb` | {'int': 2236} |
| `processes` | {'int': 2236} |
| `pssFallbackProcesses` | {'int': 2236} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
