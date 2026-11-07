# sandbox_telemetry_parse — 2026-11-07 11:02:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=430396 lines=959
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 950 |
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
| `chromeBrowserPssKb` | {'int': 950} |
| `chromeGpuPssKb` | {'int': 950} |
| `chromeOtherPssKb` | {'int': 950} |
| `chromeProcesses` | {'int': 950} |
| `chromeProfiles` | {'int': 950} |
| `chromeRendererMaxPssKb` | {'int': 950} |
| `chromeRendererPssKb` | {'int': 950} |
| `chromeRenderers` | {'int': 950} |
| `chromeTabs` | {'int': 950} |
| `chromeTabsProbedProfiles` | {'int': 950} |
| `chromeUtilityPssKb` | {'int': 950} |
| `desktopPssKb` | {'int': 950} |
| `hostPssKb` | {'int': 950} |
| `kind` | {'str': 950} |
| `memAvailableKb` | {'int': 950} |
| `memTotalKb` | {'int': 950} |
| `otherPssKb` | {'int': 950} |
| `processes` | {'int': 950} |
| `pssFallbackProcesses` | {'int': 950} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
