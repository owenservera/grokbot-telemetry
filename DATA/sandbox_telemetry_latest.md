# sandbox_telemetry_parse — 2026-11-12 08:27:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2043570 lines=4524
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4515 |
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
| `chromeBrowserPssKb` | {'int': 4515} |
| `chromeGpuPssKb` | {'int': 4515} |
| `chromeOtherPssKb` | {'int': 4515} |
| `chromeProcesses` | {'int': 4515} |
| `chromeProfiles` | {'int': 4515} |
| `chromeRendererMaxPssKb` | {'int': 4515} |
| `chromeRendererPssKb` | {'int': 4515} |
| `chromeRenderers` | {'int': 4515} |
| `chromeTabs` | {'int': 4515} |
| `chromeTabsProbedProfiles` | {'int': 4515} |
| `chromeUtilityPssKb` | {'int': 4515} |
| `desktopPssKb` | {'int': 4515} |
| `hostPssKb` | {'int': 4515} |
| `kind` | {'str': 4515} |
| `memAvailableKb` | {'int': 4515} |
| `memTotalKb` | {'int': 4515} |
| `otherPssKb` | {'int': 4515} |
| `processes` | {'int': 4515} |
| `pssFallbackProcesses` | {'int': 4515} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
