# sandbox_telemetry_parse — 2026-11-10 15:14:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1195554 lines=2650
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2641 |
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
| `chromeBrowserPssKb` | {'int': 2641} |
| `chromeGpuPssKb` | {'int': 2641} |
| `chromeOtherPssKb` | {'int': 2641} |
| `chromeProcesses` | {'int': 2641} |
| `chromeProfiles` | {'int': 2641} |
| `chromeRendererMaxPssKb` | {'int': 2641} |
| `chromeRendererPssKb` | {'int': 2641} |
| `chromeRenderers` | {'int': 2641} |
| `chromeTabs` | {'int': 2641} |
| `chromeTabsProbedProfiles` | {'int': 2641} |
| `chromeUtilityPssKb` | {'int': 2641} |
| `desktopPssKb` | {'int': 2641} |
| `hostPssKb` | {'int': 2641} |
| `kind` | {'str': 2641} |
| `memAvailableKb` | {'int': 2641} |
| `memTotalKb` | {'int': 2641} |
| `otherPssKb` | {'int': 2641} |
| `processes` | {'int': 2641} |
| `pssFallbackProcesses` | {'int': 2641} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
