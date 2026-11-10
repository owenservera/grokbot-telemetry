# sandbox_telemetry_parse — 2026-11-10 18:41:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1270291 lines=2815
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2806 |
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
| `chromeBrowserPssKb` | {'int': 2806} |
| `chromeGpuPssKb` | {'int': 2806} |
| `chromeOtherPssKb` | {'int': 2806} |
| `chromeProcesses` | {'int': 2806} |
| `chromeProfiles` | {'int': 2806} |
| `chromeRendererMaxPssKb` | {'int': 2806} |
| `chromeRendererPssKb` | {'int': 2806} |
| `chromeRenderers` | {'int': 2806} |
| `chromeTabs` | {'int': 2806} |
| `chromeTabsProbedProfiles` | {'int': 2806} |
| `chromeUtilityPssKb` | {'int': 2806} |
| `desktopPssKb` | {'int': 2806} |
| `hostPssKb` | {'int': 2806} |
| `kind` | {'str': 2806} |
| `memAvailableKb` | {'int': 2806} |
| `memTotalKb` | {'int': 2806} |
| `otherPssKb` | {'int': 2806} |
| `processes` | {'int': 2806} |
| `pssFallbackProcesses` | {'int': 2806} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
