# sandbox_telemetry_parse — 2026-11-19 12:07:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1266898 lines=2809
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2800 |
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
| `chromeBrowserPssKb` | {'int': 2800} |
| `chromeGpuPssKb` | {'int': 2800} |
| `chromeOtherPssKb` | {'int': 2800} |
| `chromeProcesses` | {'int': 2800} |
| `chromeProfiles` | {'int': 2800} |
| `chromeRendererMaxPssKb` | {'int': 2800} |
| `chromeRendererPssKb` | {'int': 2800} |
| `chromeRenderers` | {'int': 2800} |
| `chromeTabs` | {'int': 2800} |
| `chromeTabsProbedProfiles` | {'int': 2800} |
| `chromeUtilityPssKb` | {'int': 2800} |
| `desktopPssKb` | {'int': 2800} |
| `hostPssKb` | {'int': 2800} |
| `kind` | {'str': 2800} |
| `memAvailableKb` | {'int': 2800} |
| `memTotalKb` | {'int': 2800} |
| `otherPssKb` | {'int': 2800} |
| `processes` | {'int': 2800} |
| `pssFallbackProcesses` | {'int': 2800} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
